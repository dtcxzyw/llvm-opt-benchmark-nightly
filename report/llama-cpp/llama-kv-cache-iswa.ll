Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-kv-cache-iswa?download=true
inline.NumInlined: 579
inline.NumDeleted: 327
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<ggml_backend_buffer_type *, std::pair<ggml_backend_buffer_type *const, unsigned long>, std::_Select1st<std::pair<ggml_backend_buffer_type *const, unsigned long>>, std::less<ggml_backend_buffer_type *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<ggml_backend_buffer_type *, std::pair<ggml_backend_buffer_type *const, unsigned long>, std::_Select1st<std::pair<ggml_backend_buffer_type *const, unsigned long>>, std::less<ggml_backend_buffer_type *>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::unique_ptr.130" = type { %"struct.std::__uniq_ptr_data.131" }
%"struct.std::__uniq_ptr_data.131" = type { %"class.std::__uniq_ptr_impl.132" }
%"class.std::__uniq_ptr_impl.132" = type { %"class.std::tuple.133" }
%"class.std::tuple.133" = type { %"struct.std::_Tuple_impl.134" }
%"struct.std::_Tuple_impl.134" = type { %"struct.std::_Head_base.137" }
%"struct.std::_Head_base.137" = type { ptr }
%"class.std::vector.188" = type { %"struct.std::_Vector_base.189" }
%"struct.std::_Vector_base.189" = type { %"struct.std::_Vector_base<llama_ubatch, std::allocator<llama_ubatch>>::_Vector_impl" }
%"struct.std::_Vector_base<llama_ubatch, std::allocator<llama_ubatch>>::_Vector_impl" = type { %"struct.std::_Vector_base<llama_ubatch, std::allocator<llama_ubatch>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llama_ubatch, std::allocator<llama_ubatch>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.llama_ubatch = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::shared_ptr.193" }
%"class.std::shared_ptr.193" = type { %"class.std::__shared_ptr.194" }
%"class.std::__shared_ptr.194" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::vector.196" = type { %"struct.std::_Vector_base.197" }
%"struct.std::_Vector_base.197" = type { %"struct.std::_Vector_base<llama_kv_cache::slot_info, std::allocator<llama_kv_cache::slot_info>>::_Vector_impl" }
%"struct.std::_Vector_base<llama_kv_cache::slot_info, std::allocator<llama_kv_cache::slot_info>>::_Vector_impl" = type { %"struct.std::_Vector_base<llama_kv_cache::slot_info, std::allocator<llama_kv_cache::slot_info>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llama_kv_cache::slot_info, std::allocator<llama_kv_cache::slot_info>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.201" = type { %"struct.std::__uniq_ptr_data.202" }
%"struct.std::__uniq_ptr_data.202" = type { %"class.std::__uniq_ptr_impl.203" }
%"class.std::__uniq_ptr_impl.203" = type { %"class.std::tuple.204" }
%"class.std::tuple.204" = type { %"struct.std::_Tuple_impl.205" }
%"struct.std::_Tuple_impl.205" = type { %"struct.std::_Head_base.208" }
%"struct.std::_Head_base.208" = type { ptr }

$_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEEixERS5_ = comdat any

$_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev = comdat any

$_ZN12llama_ubatchD2Ev = comdat any

$_ZSt11make_uniqueI27llama_kv_cache_iswa_contextJP19llama_kv_cache_iswaSt6vectorIN14llama_kv_cache9slot_infoESaIS5_EES7_S3_I12llama_ubatchSaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

$_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev = comdat any

$_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev = comdat any

$_ZN19llama_kv_cache_iswaD2Ev = comdat any

$_ZN19llama_kv_cache_iswaD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_ = comdat any

$_ZNSt6vectorI12llama_ubatchSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZTI14llama_memory_i = comdat any

$_ZTS14llama_memory_i = comdat any

$_ZTI22llama_memory_context_i = comdat any

$_ZTS22llama_memory_context_i = comdat any

@_ZTV19llama_kv_cache_iswa = constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTI19llama_kv_cache_iswa, ptr @_ZN19llama_kv_cache_iswaD2Ev, ptr @_ZN19llama_kv_cache_iswaD0Ev, ptr @_ZN19llama_kv_cache_iswa10init_batchER18llama_batch_allocrjb, ptr @_ZN19llama_kv_cache_iswa9init_fullEv, ptr @_ZN19llama_kv_cache_iswa11init_updateEP13llama_contextb, ptr @_ZNK19llama_kv_cache_iswa13get_can_shiftEv, ptr @_ZN19llama_kv_cache_iswa5clearEb, ptr @_ZN19llama_kv_cache_iswa6seq_rmEiii, ptr @_ZN19llama_kv_cache_iswa6seq_cpEiiii, ptr @_ZN19llama_kv_cache_iswa8seq_keepEi, ptr @_ZN19llama_kv_cache_iswa7seq_addEiiii, ptr @_ZN19llama_kv_cache_iswa7seq_divEiiii, ptr @_ZNK19llama_kv_cache_iswa11seq_pos_minEi, ptr @_ZNK19llama_kv_cache_iswa11seq_pos_maxEi, ptr @_ZNK19llama_kv_cache_iswa16memory_breakdownEv, ptr @_ZNK19llama_kv_cache_iswa11state_writeER16llama_io_write_iij, ptr @_ZN19llama_kv_cache_iswa10state_readER15llama_io_read_iij] }, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: using full-size SWA cache (ref: %s)\0A\00", align 1
@__func__._ZN19llama_kv_cache_iswaC2ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_ = private unnamed_addr constant [20 x i8] c"llama_kv_cache_iswa\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"https://github.com/ggml-org/llama.cpp/pull/13194#issuecomment-2868343055\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: creating non-SWA KV cache, size = %u cells\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s: creating     SWA KV cache, size = %u cells\0A\00", align 1
@_ZTV27llama_kv_cache_iswa_context = constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI27llama_kv_cache_iswa_context, ptr @_ZN27llama_kv_cache_iswa_contextD1Ev, ptr @_ZN27llama_kv_cache_iswa_contextD0Ev, ptr @_ZN27llama_kv_cache_iswa_context4nextEv, ptr @_ZN27llama_kv_cache_iswa_context5applyEv, ptr @_ZNK27llama_kv_cache_iswa_context10get_ubatchEv, ptr @_ZNK27llama_kv_cache_iswa_context10get_statusEv] }, align 8
@_ZTI19llama_kv_cache_iswa = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19llama_kv_cache_iswa, ptr @_ZTI14llama_memory_i }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS19llama_kv_cache_iswa = constant [22 x i8] c"19llama_kv_cache_iswa\00", align 1
@_ZTI14llama_memory_i = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS14llama_memory_i }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS14llama_memory_i = linkonce_odr constant [17 x i8] c"14llama_memory_i\00", comdat, align 1
@_ZTI27llama_kv_cache_iswa_context = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS27llama_kv_cache_iswa_context, ptr @_ZTI22llama_memory_context_i }, align 8
@_ZTS27llama_kv_cache_iswa_context = constant [30 x i8] c"27llama_kv_cache_iswa_context\00", align 1
@_ZTI22llama_memory_context_i = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS22llama_memory_context_i }, comdat, align 8
@_ZTS22llama_memory_context_i = linkonce_odr constant [25 x i8] c"22llama_memory_context_i\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@"_ZTIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_0" }, align 8
@"_ZTSZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_0" = internal constant [135 x i8] c"ZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_0\00", align 1
@"_ZTIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_1" }, align 8
@"_ZTSZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_1" = internal constant [135 x i8] c"ZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_1\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN19llama_kv_cache_iswaC1ERK11llama_model9ggml_typeS3_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS6_IFiiEESE_ = unnamed_addr alias void (ptr, ptr, i32, i32, i1, i1, i1, i1, i32, i32, i32, i32, ptr, ptr, ptr, ptr), ptr @_ZN19llama_kv_cache_iswaC2ERK11llama_model9ggml_typeS3_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS6_IFiiEESE_
@_ZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_ = unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i1, i1, i1, i1, i32, i32, i32, i32, ptr, ptr, ptr, ptr), ptr @_ZN19llama_kv_cache_iswaC2ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_
@_ZN27llama_kv_cache_iswa_contextC1E19llama_memory_status = unnamed_addr alias void (ptr, i32), ptr @_ZN27llama_kv_cache_iswa_contextC2E19llama_memory_status
@_ZN27llama_kv_cache_iswa_contextC1EP19llama_kv_cache_iswa = unnamed_addr alias void (ptr, ptr), ptr @_ZN27llama_kv_cache_iswa_contextC2EP19llama_kv_cache_iswa
@_ZN27llama_kv_cache_iswa_contextC1EP19llama_kv_cache_iswaP13llama_contextb = unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN27llama_kv_cache_iswa_contextC2EP19llama_kv_cache_iswaP13llama_contextb
@_ZN27llama_kv_cache_iswa_contextC1EP19llama_kv_cache_iswaSt6vectorIN14llama_kv_cache9slot_infoESaIS4_EES6_S2_I12llama_ubatchSaIS7_EE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN27llama_kv_cache_iswa_contextC2EP19llama_kv_cache_iswaSt6vectorIN14llama_kv_cache9slot_infoESaIS4_EES6_S2_I12llama_ubatchSaIS7_EE
@_ZN27llama_kv_cache_iswa_contextD1Ev = unnamed_addr alias void (ptr), ptr @_ZN27llama_kv_cache_iswa_contextD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswaC2ERK11llama_model9ggml_typeS3_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS6_IFiiEESE_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 9), (16, 32)) %0, ptr noundef nonnull align 8 dereferenceable(36840) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr nofree noundef readonly captures(address_is_null) %12, ptr noundef nonnull align 1 %13, ptr noundef nonnull align 1 %14, ptr noundef nonnull align 1 %15) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @_ZN19llama_kv_cache_iswaC2ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36840) %1, ptr noundef nonnull align 8 dereferenceable(36056) %i.a, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef nonnull align 1 %13, ptr noundef nonnull align 1 %14, ptr noundef nonnull align 1 %15)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswaC2ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 9), (16, 32)) %0, ptr noundef nonnull align 8 dereferenceable(36840) %1, ptr noundef nonnull align 8 dereferenceable(36056) %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr nofree noundef readonly captures(address_is_null) %13, ptr noundef nonnull align 1 %14, ptr noundef nonnull align 1 %15, ptr noundef nonnull align 1 %16) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %17 = alloca %"class.std::function", align 8    ; 12 uses
  %18 = alloca %"class.std::function", align 8    ; 12 uses
  %i.a = zext i1 %8 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTV19llama_kv_cache_iswa, i64 16), ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %14, ptr %17, align 8, !tbaa !27
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %1, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !29
  store ptr @"_ZNSt17_Function_handlerIFbiEZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIS0_ERKSB_IFiiEESI_E3$_0E9_M_invokeERKSt9_Any_dataOi", ptr %i.f, align 8, !tbaa !32
  store ptr @"_ZNSt17_Function_handlerIFbiEZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIS0_ERKSB_IFiiEESI_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.e, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %14, ptr %18, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  store ptr @"_ZNSt17_Function_handlerIFbiEZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIS0_ERKSB_IFiiEESI_E3$_1E9_M_invokeERKSt9_Any_dataOi", ptr %i.h, align 8, !tbaa !32
  store ptr @"_ZNSt17_Function_handlerIFbiEZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIS0_ERKSB_IFiiEESI_E3$_1E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12584 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !123
  %i.k = select i1 %8, i32 %10, i32 1
  %i.l = mul i32 %i.j, %i.k
  %i.m = add i32 %i.l, %11
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %9)
  %i.n = add i32 %.sroa.speculated, 255
  %i.o = and i32 %i.n, -256
  br i1 %7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN19llama_kv_cache_iswaC2ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b, %bb.a
  %.088 = phi i32 [ %i.o, %bb.a ], [ %9, %bb.b ]  ; 2 uses
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._ZN19llama_kv_cache_iswaC2ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_, i32 noundef %9)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %13, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e
  %.087 = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  %.0 = phi ptr [ %i.s, %bb.e ], [ null, %bb.d ]
  %i.t = invoke noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #22
          to label %.noexc unwind label %bb.m, !noalias !124 ; 3 uses

.noexc:                                           ; preds = %.critedge
  invoke void @_ZN14llama_kv_cacheC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbjjjj14llama_swa_typeP14llama_memory_iRKSt8functionIFbiEERKSA_IFiiEESI_PKc(ptr noundef nonnull align 8 dereferenceable(352) %i.t, ptr noundef nonnull align 8 dereferenceable(36840) %1, ptr noundef nonnull align 8 dereferenceable(36056) %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %8, i32 noundef %9, i32 noundef %10, i32 noundef %12, i32 noundef 0, i32 noundef 0, ptr noundef %.087, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 1 %15, ptr noundef nonnull align 1 %16, ptr noundef nonnull @.str.4)
          to label %_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RKjRjSC_i14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSH_IFiiEESP_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.f, !noalias !124

bb.f:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RKjRjSC_i14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSH_IFiiEESP_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !34   ; 3 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !34
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RKjRjSC_i14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSH_IFiiEESP_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(352) %i.v) #21, !inline_history !102
  br label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i.i.i.i, %_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RKjRjSC_i14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSH_IFiiEESP_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._ZN19llama_kv_cache_iswaC2ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_, i32 noundef %.088)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit
  %i.z = invoke noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #22
          to label %.noexc30 unwind label %bb.m, !noalias !125 ; 3 uses

.noexc30:                                         ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12580
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !35, !noalias !125
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !126, !noalias !125
  invoke void @_ZN14llama_kv_cacheC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbjjjj14llama_swa_typeP14llama_memory_iRKSt8functionIFbiEERKSA_IFiiEESI_PKc(ptr noundef nonnull align 8 dereferenceable(352) %i.z, ptr noundef nonnull align 8 dereferenceable(36840) %1, ptr noundef nonnull align 8 dereferenceable(36056) %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %8, i32 noundef %.088, i32 noundef %10, i32 noundef %12, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef %.0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 1 %15, ptr noundef nonnull align 1 %16, ptr noundef nonnull @.str.4)
          to label %_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RjSA_SA_RKjRK14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSJ_IFiiEESR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.h, !noalias !125

bb.h:                                             ; preds = %.noexc30
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RjSA_SA_RKjRK14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSJ_IFiiEESR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc30
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !34  ; 3 uses
  store ptr %i.z, ptr %i.d, align 8, !tbaa !34
  %.not.i.i.i.i33 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i33, label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit38, label %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i.i.i.i34

_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i.i.i.i34: ; preds = %_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RjSA_SA_RKjRK14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSJ_IFiiEESR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(352) %i.ae) #21, !inline_history !102
  br label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit38

_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit38: ; preds = %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i.i.i.i34, %_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RjSA_SA_RKjRK14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSJ_IFiiEESR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %.not.i39 = icmp eq ptr %i.ai, null
  br i1 %.not.i39, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit38
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit38, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %.not.i40 = icmp eq ptr %i.am, null
  br i1 %.not.i40, label %_ZNSt14_Function_baseD2Ev.exit41, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit41 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit41:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  ret void

bb.m:                                             ; preds = %.critedge, %bb.b, %bb.c, %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.sink.split:                                 ; preds = %bb.h, %bb.f
  %.sink = phi ptr [ %i.t, %bb.f ], [ %i.z, %bb.h ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ad, %bb.h ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 352) #24, !noalias !36
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %.pn.pn.ph, %.body.sink.split ]
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %.not.i42 = icmp eq ptr %i.ar, null
  br i1 %.not.i42, label %_ZNSt14_Function_baseD2Ev.exit43, label %bb.n

bb.n:                                             ; preds = %.body
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit43 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit43:                 ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %.not.i44 = icmp eq ptr %i.av, null
  br i1 %.not.i44, label %_ZNSt14_Function_baseD2Ev.exit45, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit43
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit45 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit45:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit43, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !34  ; 3 uses
  %.not.i46 = icmp eq ptr %i.az, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit48, label %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i47

_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i47: ; preds = %_ZNSt14_Function_baseD2Ev.exit45
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(352) %i.az) #21, !inline_history !0
  br label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit48

_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit48: ; preds = %_ZNSt14_Function_baseD2Ev.exit45, %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i47
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !34  ; 3 uses
  %.not.i49 = icmp eq ptr %i.bd, null
  br i1 %.not.i49, label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit51, label %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i50

_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i50: ; preds = %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(352) %i.bd) #21, !inline_history !0
  br label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit51

_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit51: ; preds = %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit48, %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i50
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK19llama_kv_cache_iswa8get_baseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK19llama_kv_cache_iswa7get_swaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswa5clearEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b, i1 noundef zeroext %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(352) %i.g, i1 noundef zeroext %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN19llama_kv_cache_iswa6seq_rmEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(352) %i.h, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %i.m = and i1 %i.f, %i.l
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswa6seq_cpEiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(352) %i.g, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswa8seq_keepEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b, i32 noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(352) %i.g, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswa7seq_addEiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(352) %i.g, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswa7seq_divEiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(352) %i.g, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK19llama_kv_cache_iswa11seq_pos_minEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b, i32 noundef %1)
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK19llama_kv_cache_iswa11seq_pos_maxEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b, i32 noundef %1)
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZNK19llama_kv_cache_iswa16memory_breakdownEv(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map", align 8          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::map") align 8 %0, ptr noundef nonnull align 8 dereferenceable(352) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %2, ptr noundef nonnull align 8 dereferenceable(352) %i.g)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not12 = icmp eq ptr %i.l, %i.m
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  invoke void @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.o)
          to label %_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #23
  unreachable

_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.sroa.09.013 = phi ptr [ %i.y, %bb.e ], [ %i.l, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEEixERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %.lr.ph
  %i.w = load i64, ptr %i.v, align 8, !tbaa !127
  %i.x = add i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !127
  %i.y = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.013) #25 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.r, %bb.d ]
  call void @_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEEixERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !47    ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = icmp ult ptr %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !128

_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEE11lower_boundERS5_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEE11lower_boundERS5_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129
  %i.j = icmp ult ptr %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEE11lower_boundERS5_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEE11lower_boundERS5_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store ptr %.pre, ptr %i.l, align 8, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !46
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = icmp ult ptr %i.r, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !50
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !50
  br label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #24
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #24
  br label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIP24ggml_backend_buffer_typemSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  invoke void @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable

_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswa10init_batchER18llama_batch_allocrjb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.130") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(444) %2, i32 noundef %3, i1 zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.188", align 8   ; 13 uses
  %6 = alloca %struct.llama_ubatch, align 8       ; 10 uses
  %7 = alloca %"class.std::vector.196", align 8   ; 9 uses
  %8 = alloca %"class.std::vector.196", align 8   ; 9 uses
  %9 = alloca %"class.std::unique_ptr.201", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"class.std::vector.188", align 8  ; 13 uses
  %11 = alloca %struct.llama_ubatch, align 8      ; 10 uses
  %12 = alloca %"class.std::vector.196", align 8  ; 9 uses
  %13 = alloca %"class.std::vector.196", align 8  ; 9 uses
  %14 = alloca %"class.std::unique_ptr.201", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !25, !range !133, !noundef !36
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN18llama_batch_allocr11split_resetEv(ptr noundef nonnull align 8 dereferenceable(444) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN12llama_ubatchD2Ev.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN18llama_batch_allocr12split_simpleEj(ptr dead_on_unwind nonnull writable sret(%struct.llama_ubatch) align 8 %6, ptr noundef nonnull align 8 dereferenceable(444) %2, i32 noundef %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.f, align 4, !tbaa !140
  %.not = icmp eq i32 %i.k, 0                     ; 2 uses
  br i1 %.not, label %_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !58   ; 6 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef nonnull align 8 dereferenceable(104) %6, i64 88, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr null, ptr %i.p, align 8, !tbaa !60
  %i.q = load <2 x ptr>, ptr %i.i, align 8, !tbaa !61
  store ptr null, ptr %i.j, align 8, !tbaa !60
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !61
  store ptr null, ptr %i.i, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store ptr %i.r, ptr %i.g, align 8, !tbaa !58
  br label %_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorI12llama_ubatchSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(104) %6)
          to label %_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit unwind label %bb.o

_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.g, %bb.h, %bb.d
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !60   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN12llama_ubatchD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !65
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !130
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !130
  br label %_ZN12llama_ubatchD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.n, label %_ZN12llama_ubatchD2Ev.exit, !prof !67

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21
  br label %_ZN12llama_ubatchD2Ev.exit

_ZN12llama_ubatchD2Ev.exit:                       ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not, label %bb.q, label %bb.c

bb.o:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12llama_ubatchD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ao

bb.q:                                             ; preds = %_ZN12llama_ubatchD2Ev.exit
  %i.aj = invoke noundef i32 @_ZNK18llama_batch_allocr10get_n_usedEv(ptr noundef nonnull align 8 dereferenceable(444) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ak = invoke noundef i32 @_ZNK18llama_batch_allocr12get_n_tokensEv(ptr noundef nonnull align 8 dereferenceable(444) %2)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.ag, label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  invoke void @_ZN14llama_kv_cache7prepareERKSt6vectorI12llama_ubatchSaIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.196") align 8 %7, ptr noundef nonnull align 8 dereferenceable(352) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ap = load ptr, ptr %7, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.ae, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34
  invoke void @_ZN14llama_kv_cache7prepareERKSt6vectorI12llama_ubatchSaIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.196") align 8 %8, ptr noundef nonnull align 8 dereferenceable(352) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.aw = load ptr, ptr %8, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !69
  %i.az = icmp eq ptr %i.aw, %i.ay                ; 2 uses
  br i1 %i.az, label %bb.ac, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %1, ptr %i.a, align 8, !tbaa !71
  invoke void @_ZSt11make_uniqueI27llama_kv_cache_iswa_contextJP19llama_kv_cache_iswaSt6vectorIN14llama_kv_cache9slot_infoESaIS5_EES7_S3_I12llama_ubatchSaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.201") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit unwind label %bb.ab

_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.aa
  %i.bb = load ptr, ptr %9, align 8, !tbaa !73
  store ptr %i.bb, ptr %0, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #21
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.z
  %.pn34 = phi { ptr, i32 } [ %i.bc, %bb.ab ], [ %i.ba, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #21
  br label %bb.af

bb.ae:                                            ; preds = %bb.v, %bb.ac
  %.2 = phi i1 [ %i.az, %bb.ac ], [ true, %bb.v ]
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.w
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.ad ], [ %i.at, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ao

bb.ag:                                            ; preds = %bb.s, %bb.ae
  %.3 = phi i1 [ %.2, %bb.ae ], [ true, %bb.s ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !77    ; 3 uses
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !58  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i ], [ %i.bd, %bb.ag ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.bh, align 8, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !65
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #21, !inline_history !1
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #21, !inline_history !1
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.ak ], [ %i.bu, %bb.al ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.am, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i, !prof !67

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #21
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i

_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i:     ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ai, %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.bw, %i.be
  br i1 %.not.i.i.i45, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !77
  br label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %bb.ag
  %i.bx = phi ptr [ %.pr.i, %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.ag ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cb) #24
  br label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit

_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.3, label %bb.ap, label %bb.cf

bb.ao:                                            ; preds = %bb.af, %bb.t, %bb.p
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %bb.af ], [ %i.am, %bb.t ], [ %.pn, %bb.p ]
  call void @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

bb.ap:                                            ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit, %bb.a
  call void @_ZN18llama_batch_allocr11split_resetEv(ptr noundef nonnull align 8 dereferenceable(444) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN12llama_ubatchD2Ev.exit53, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ch = load i8, ptr %i.c, align 8, !tbaa !25, !range !133, !noundef !36
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = xor i1 %i.ci, true
  invoke void @_ZN18llama_batch_allocr11split_equalEjbj(ptr dead_on_unwind nonnull writable sret(%struct.llama_ubatch) align 8 %11, ptr noundef nonnull align 8 dereferenceable(444) %2, i32 noundef %3, i1 noundef zeroext %i.cj, i32 noundef 0)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ck = load i32, ptr %i.cc, align 4, !tbaa !140
  %.not75 = icmp eq i32 %i.ck, 0                  ; 2 uses
  br i1 %.not75, label %_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit48, label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.at:                                            ; preds = %bb.ar
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !58 ; 6 uses
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !59
  %.not.i.i46 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i46, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cm, ptr noundef nonnull align 8 dereferenceable(104) %11, i64 88, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  store ptr null, ptr %i.cp, align 8, !tbaa !60
  %i.cq = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !61
  store ptr null, ptr %i.cg, align 8, !tbaa !60
  store <2 x ptr> %i.cq, ptr %i.co, align 8, !tbaa !61
  store ptr null, ptr %i.cf, align 8, !tbaa !62
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 104
  store ptr %i.cr, ptr %i.cd, align 8, !tbaa !58
  br label %_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit48

bb.av:                                            ; preds = %bb.at
  invoke void @_ZNSt6vectorI12llama_ubatchSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %i.cm, ptr noundef nonnull align 8 dereferenceable(104) %11)
          to label %_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit48 unwind label %bb.bc

_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit48: ; preds = %bb.au, %bb.av, %bb.ar
  %i.cs = load ptr, ptr %i.cg, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i49 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i49, label %_ZN12llama_ubatchD2Ev.exit53, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.ct, align 8, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !65
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #21, !inline_history !130
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #21, !inline_history !130
  br label %_ZN12llama_ubatchD2Ev.exit53

bb.ay:                                            ; preds = %bb.aw
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i50 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i50, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51

bb.ba:                                            ; preds = %bb.ay
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i52 = phi i32 [ %i.cw, %bb.az ], [ %i.dg, %bb.ba ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i52, 1
  br i1 %i.dh, label %bb.bb, label %_ZN12llama_ubatchD2Ev.exit53, !prof !67

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #21
  br label %_ZN12llama_ubatchD2Ev.exit53

_ZN12llama_ubatchD2Ev.exit53:                     ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EE9push_backEOS0_.exit48, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.not75, label %bb.be, label %bb.aq

bb.bc:                                            ; preds = %bb.av
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12llama_ubatchD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %11) #21
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.as
  %.pn38 = phi { ptr, i32 } [ %i.di, %bb.bc ], [ %i.cl, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cc

bb.be:                                            ; preds = %_ZN12llama_ubatchD2Ev.exit53
  %i.dj = invoke noundef i32 @_ZNK18llama_batch_allocr10get_n_usedEv(ptr noundef nonnull align 8 dereferenceable(444) %2)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.dk = invoke noundef i32 @_ZNK18llama_batch_allocr12get_n_tokensEv(ptr noundef nonnull align 8 dereferenceable(444) %2)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dl = icmp ult i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.bu, label %bb.bi

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !34
  invoke void @_ZN14llama_kv_cache7prepareERKSt6vectorI12llama_ubatchSaIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.196") align 8 %12, ptr noundef nonnull align 8 dereferenceable(352) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.dp = load ptr, ptr %12, align 8, !tbaa !69
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !69
  %i.ds = icmp eq ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.bs, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !34
  invoke void @_ZN14llama_kv_cache7prepareERKSt6vectorI12llama_ubatchSaIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.196") align 8 %13, ptr noundef nonnull align 8 dereferenceable(352) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.dw = load ptr, ptr %13, align 8, !tbaa !69
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !69
  %i.dz = icmp eq ptr %i.dw, %i.dy                ; 2 uses
  br i1 %i.dz, label %bb.bq, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %1, ptr %i.b, align 8, !tbaa !71
  invoke void @_ZSt11make_uniqueI27llama_kv_cache_iswa_contextJP19llama_kv_cache_iswaSt6vectorIN14llama_kv_cache9slot_infoESaIS5_EES7_S3_I12llama_ubatchSaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.201") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit56 unwind label %bb.bp

_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit56: ; preds = %bb.bo
  %i.eb = load ptr, ptr %14, align 8, !tbaa !73
  store ptr %i.eb, ptr %0, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  br label %bb.br

bb.bq:                                            ; preds = %bb.bm, %_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit56
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp, %bb.bn
  %.pn40 = phi { ptr, i32 } [ %i.ec, %bb.bp ], [ %i.ea, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #21
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bj, %bb.bq
  %.6 = phi i1 [ %i.dz, %bb.bq ], [ true, %bb.bj ]
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br, %bb.bk
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.br ], [ %i.dt, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.cc

bb.bu:                                            ; preds = %bb.bg, %bb.bs
  %.7 = phi i1 [ %.6, %bb.bs ], [ true, %bb.bg ]
  %i.ed = load ptr, ptr %10, align 8, !tbaa !77   ; 3 uses
  %i.ee = load ptr, ptr %i.cd, align 8, !tbaa !58 ; 2 uses
  %.not4.i.i.i57 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not4.i.i.i57, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i68, label %.lr.ph.i.i.i58

.lr.ph.i.i.i58:                                   ; preds = %bb.bu, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i64
  %.05.i.i.i59 = phi ptr [ %i.ew, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i64 ], [ %i.ed, %bb.bu ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i.i59, i64 96
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i.i.i.i.i60 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i.i.i60, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i64, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i.i58
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 4 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 4294967297
  %i.ek = trunc i64 %i.ei to i32                  ; 2 uses
  br i1 %i.ej, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.eh, align 8, !tbaa !64
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i32 0, ptr %i.el, align 4, !tbaa !65
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #21, !inline_history !1
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #21, !inline_history !1
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i64

bb.bx:                                            ; preds = %bb.bv
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i61 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i.i.i.i.i61, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.et = add nsw i32 %i.ek, -1
  store i32 %i.et, ptr %i.eh, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i62

bb.bz:                                            ; preds = %bb.bx
  %i.eu = atomicrmw volatile add ptr %i.eh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i62: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i.i.i.i.i.i63 = phi i32 [ %i.ek, %bb.by ], [ %i.eu, %bb.bz ]
  %i.ev = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i63, 1
  br i1 %i.ev, label %bb.ca, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i64, !prof !67

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #21
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i64

_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i64:   ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i62, %bb.bw, %.lr.ph.i.i.i58
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i59, i64 104 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.ew, %i.ee
  br i1 %.not.i.i.i65, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i66, label %.lr.ph.i.i.i58, !llvm.loop !2

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i66: ; preds = %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i64
  %.pr.i67 = load ptr, ptr %10, align 8, !tbaa !77
  br label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i68

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i68: ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i66, %bb.bu
  %i.ex = phi ptr [ %.pr.i67, %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i66 ], [ %i.ed, %bb.bu ] ; 3 uses
  %.not.i.i1.i69 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i1.i69, label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit70, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i68
  %i.ey = load ptr, ptr %i.ce, align 8, !tbaa !59
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #24
  br label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit70

_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit70:   ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i68, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br i1 %.7, label %bb.cd, label %bb.cf

bb.cc:                                            ; preds = %bb.bt, %bb.bh, %bb.bd
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.bt ], [ %i.dm, %bb.bh ], [ %.pn38, %bb.bd ]
  call void @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %common.resume

bb.cd:                                            ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit70
  %i.fc = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22, !noalias !141 ; 3 uses
  invoke void @_ZN27llama_kv_cache_iswa_contextC1E19llama_memory_status(ptr noundef nonnull align 8 dereferenceable(60) %i.fc, i32 noundef 2)
          to label %_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit73 unwind label %bb.ce, !noalias !141

common.resume:                                    ; preds = %bb.ao, %bb.cc, %bb.ce
  %common.resume.op = phi { ptr, i32 } [ %i.fd, %bb.ce ], [ %.pn40.pn.pn, %bb.cc ], [ %.pn34.pn.pn, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

bb.ce:                                            ; preds = %bb.cd
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 64) #24, !noalias !141
  br label %common.resume

_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit73: ; preds = %bb.cd
  store ptr %i.fc, ptr %0, align 8, !tbaa !76
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit70, %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit, %_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit73
  ret void
}

declare void @_ZN18llama_batch_allocr11split_resetEv(ptr noundef nonnull align 8 dereferenceable(444)) local_unnamed_addr #2

declare void @_ZN18llama_batch_allocr12split_simpleEj(ptr dead_on_unwind writable sret(%struct.llama_ubatch) align 8, ptr noundef nonnull align 8 dereferenceable(444), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN12llama_ubatchD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12llama_ubatch6data_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !65
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !142
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !142
  br label %_ZNSt12__shared_ptrIN12llama_ubatch6data_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN12llama_ubatch6data_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN12llama_ubatch6data_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12llama_ubatch6data_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare noundef i32 @_ZNK18llama_batch_allocr10get_n_usedEv(ptr noundef nonnull align 8 dereferenceable(444)) local_unnamed_addr #2

declare noundef i32 @_ZNK18llama_batch_allocr12get_n_tokensEv(ptr noundef nonnull align 8 dereferenceable(444)) local_unnamed_addr #2

declare void @_ZN14llama_kv_cache7prepareERKSt6vectorI12llama_ubatchSaIS1_EE(ptr dead_on_unwind writable sret(%"class.std::vector.196") align 8, ptr noundef nonnull align 8 dereferenceable(352), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueI27llama_kv_cache_iswa_contextJP19llama_kv_cache_iswaSt6vectorIN14llama_kv_cache9slot_infoESaIS5_EES7_S3_I12llama_ubatchSaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.201") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.196", align 16  ; 5 uses
  %6 = alloca %"class.std::vector.196", align 16  ; 5 uses
  %7 = alloca %"class.std::vector.188", align 16  ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !71
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !69
  store <2 x ptr> %i.c, ptr %5, align 16, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79
  store ptr %i.f, ptr %i.d, align 16, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.g = load <2 x ptr>, ptr %3, align 8, !tbaa !69
  store <2 x ptr> %i.g, ptr %6, align 16, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79
  store ptr %i.j, ptr %i.h, align 16, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !80
  store <2 x ptr> %i.k, ptr %7, align 16, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  store ptr %i.n, ptr %i.l, align 16, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN27llama_kv_cache_iswa_contextC1EP19llama_kv_cache_iswaSt6vectorIN14llama_kv_cache9slot_infoESaIS4_EES6_S2_I12llama_ubatchSaIS7_EE(ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr noundef %i.b, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %5, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %6, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !73
  %i.p = load ptr, ptr %7, align 16, !tbaa !77    ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !58   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.t, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !65
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !1
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !1
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.f ], [ %i.ag, %bb.g ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.h, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i, !prof !67

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i

_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i:     ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 16, !tbaa !77
  br label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.aj = phi ptr [ %.pr.i, %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i
  %i.ak = load ptr, ptr %i.l, align 16, !tbaa !59
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #24
  br label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit

_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i, %bb.i
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  ret void

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #21
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #24
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !145    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN14llama_kv_cache9slot_infoES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN14llama_kv_cache9slot_infoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN14llama_kv_cache9slot_infoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !152 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !153
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !143

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !149
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZSt8_DestroyIN14llama_kv_cache9slot_infoEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !157
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #24
  br label %_ZSt8_DestroyIN14llama_kv_cache9slot_infoEEvPT_.exit.i.i

_ZSt8_DestroyIN14llama_kv_cache9slot_infoEEvPT_.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN14llama_kv_cache9slot_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !144

_ZSt8_DestroyIPN14llama_kv_cache9slot_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN14llama_kv_cache9slot_infoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPN14llama_kv_cache9slot_infoES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN14llama_kv_cache9slot_infoES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN14llama_kv_cache9slot_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.ac = phi ptr [ %.pr, %_ZSt8_DestroyIPN14llama_kv_cache9slot_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN14llama_kv_cache9slot_infoESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN14llama_kv_cache9slot_infoES1_EvT_S3_RSaIT0_E.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #24
  br label %_ZNSt12_Vector_baseIN14llama_kv_cache9slot_infoESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN14llama_kv_cache9slot_infoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN14llama_kv_cache9slot_infoES1_EvT_S3_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !65
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21, !inline_history !158
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21, !inline_history !158
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i

_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i:       ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI12llama_ubatchSaIS0_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #24
  br label %_ZNSt12_Vector_baseI12llama_ubatchSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI12llama_ubatchSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit, %bb.h
  ret void
}

declare void @_ZN18llama_batch_allocr11split_equalEjbj(ptr dead_on_unwind writable sret(%struct.llama_ubatch) align 8, ptr noundef nonnull align 8 dereferenceable(444), i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswa9init_fullEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.130") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22, !noalias !161 ; 3 uses
  invoke void @_ZN27llama_kv_cache_iswa_contextC1EP19llama_kv_cache_iswa(ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr noundef nonnull %1)
          to label %_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit unwind label %bb.b, !noalias !161

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #24, !noalias !161
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswa11init_updateEP13llama_contextb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.130") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22, !noalias !164 ; 3 uses
  invoke void @_ZN27llama_kv_cache_iswa_contextC1EP19llama_kv_cache_iswaP13llama_contextb(ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3)
          to label %_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit unwind label %bb.b, !noalias !164

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #24, !noalias !164
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrI27llama_kv_cache_iswa_contextSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK19llama_kv_cache_iswa13get_can_shiftEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b)
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(352) %i.h)
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.n = tail call noundef i32 @_ZNK14llama_kv_cache8get_sizeEv(ptr noundef nonnull align 8 dereferenceable(352) %i.m)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.p = tail call noundef i32 @_ZNK14llama_kv_cache8get_sizeEv(ptr noundef nonnull align 8 dereferenceable(352) %i.o)
  %i.q = icmp eq i32 %i.n, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.r = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.q, %bb.c ]
  ret i1 %i.r
}

declare noundef i32 @_ZNK14llama_kv_cache8get_sizeEv(ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK19llama_kv_cache_iswa11state_writeER16llama_io_write_iij(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %3, 1
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(352) %i.d, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(352) %i.i, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN19llama_kv_cache_iswa10state_readER15llama_io_read_iij(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %3, 1
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(352) %i.d, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(352) %i.i, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN27llama_kv_cache_iswa_contextC2E19llama_memory_status(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) initializes((0, 60)) %0, i32 noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV27llama_kv_cache_iswa_context, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i32 %1, ptr %i.b, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27llama_kv_cache_iswa_contextC2EP19llama_kv_cache_iswa(ptr noundef nonnull align 8 dereferenceable(60) initializes((0, 40)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV27llama_kv_cache_iswa_context, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.130") align 8 %i.b, ptr noundef nonnull align 8 dereferenceable(352) %i.d)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.130") align 8 %i.h, ptr noundef nonnull align 8 dereferenceable(352) %i.j)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = invoke noundef i32 @_Z27llama_memory_status_combine19llama_memory_statusS_(i32 noundef %i.r, i32 noundef %i.w)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.x, ptr %i.y, align 8, !tbaa !92
  ret void

bb.g:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit10

bb.h:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !93  ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i

_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i: ; preds = %bb.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #21, !inline_history !3
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ab, %bb.i ], [ %i.ab, %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i ] ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !93  ; 3 uses
  %.not.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit10, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i9

_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i9: ; preds = %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #21, !inline_history !3
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit10

_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit10: ; preds = %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i9, %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %.pn, %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit ], [ %.pn, %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i9 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ak) #21
  resume { ptr, i32 } %.pn.pn
}

declare noundef i32 @_Z27llama_memory_status_combine19llama_memory_statusS_(i32 noundef, i32 noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@_ZN27llama_kv_cache_iswa_contextC2EP19llama_kv_cache_iswaP13llama_contextb:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ak) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN27llama_kv_cache_iswa_contextC2EP19llama_kv_cache_iswaSt6vectorIN14llama_kv_cache9slot_infoESaIS4_EES6_S2_I12llama_ubatchSaIS7_EE(ptr noundef nonnull align 8 dereferenceable(60) initializes((0, 40)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofreeobj noundef align 8 captures(none) dereferenceable(24) %2, ptr nofreeobj noundef align 8 captures(none) dereferenceable(24) %3, ptr nofreeobj noundef align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.196", align 16  ; 5 uses
  %6 = alloca %"class.std::vector.188", align 8   ; 11 uses
  %7 = alloca %"class.std::vector.196", align 16  ; 5 uses
  %8 = alloca %"class.std::vector.188", align 8   ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV27llama_kv_cache_iswa_context, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !80
  store <2 x ptr> %i.d, ptr %i.b, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59
  store ptr %i.g, ptr %i.e, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #22
          to label %bb.b unwind label %bb.ae      ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = load <2 x ptr>, ptr %2, align 8, !tbaa !69
  store <2 x ptr> %i.l, ptr %5, align 16, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79
  store ptr %i.o, ptr %i.m, align 16, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i, label %.noexc16.thread, label %bb.c

.noexc16.thread:                                  ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr null, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !59
  br label %.loopexit49

bb.c:                                             ; preds = %bb.b
  %i.x = sdiv exact i64 %i.t, 104
  %i.y = icmp ugt i64 %i.x, 88686269585142075
  br i1 %i.y, label %.noexc.i.i, label %_ZNSt15__new_allocatorI12llama_ubatchE8allocateEmPKv.exit.i.i.i.i, !prof !67

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorI12llama_ubatchE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22
          to label %.noexc16 unwind label %bb.af  ; 4 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorI12llama_ubatchE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.z, ptr %6, align 8, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc16, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ao, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.z, %.noexc16 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.an, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.q, %.noexc16 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.04.08.i.i.i.i.i, i64 88, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !61
  store <2 x ptr> %i.ah, ptr %i.ad, align 8, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !35
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !35
  br label %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.p
  br i1 %.not.i.i.i.i.i, label %.loopexit49, label %.lr.ph.i.i.i.i.i, !llvm.loop !165

.loopexit49:                                      ; preds = %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc16.thread
  %i.ap = phi ptr [ %i.w, %.noexc16.thread ], [ %i.ac, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.aq = phi ptr [ %i.u, %.noexc16.thread ], [ %i.aa, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc16.thread ], [ %i.ao, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !58
  invoke void @_ZN22llama_kv_cache_contextC1EP14llama_kv_cacheSt6vectorINS0_9slot_infoESaIS3_EES2_I12llama_ubatchSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(148) %i.i, ptr noundef %i.k, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %5, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.g unwind label %bb.ag

bb.g:                                             ; preds = %.loopexit49
  store ptr %i.i, ptr %i.h, align 8, !tbaa !93
  %i.ar = load ptr, ptr %6, align 8, !tbaa !77    ; 3 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i ], [ %i.ar, %bb.g ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.av, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !65
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #21, !inline_history !1
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #21, !inline_history !1
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.k ], [ %i.bi, %bb.l ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.m, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i, !prof !67

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #21
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i

_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i:     ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.as
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !77
  br label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %bb.g
  %i.bl = phi ptr [ %.pr.i, %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.ar, %bb.g ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i
  %i.bm = load ptr, ptr %i.ap, align 8, !tbaa !59
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #24
  br label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit

_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i, %bb.n
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.br = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #22
          to label %bb.o unwind label %bb.ai      ; 3 uses

bb.o:                                             ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34
  %i.bu = load <2 x ptr>, ptr %3, align 8, !tbaa !69
  store <2 x ptr> %i.bu, ptr %7, align 16, !tbaa !69
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !79
  store ptr %i.bx, ptr %i.bv, align 16, !tbaa !79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !58  ; 3 uses
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !77  ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i17 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i.i.i17, label %.noexc30.thread, label %bb.p

.noexc30.thread:                                  ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr null, i64 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !59
  br label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cg = sdiv exact i64 %i.cc, 104
  %i.ch = icmp ugt i64 %i.cg, 88686269585142075
  br i1 %i.ch, label %.noexc.i.i28, label %_ZNSt15__new_allocatorI12llama_ubatchE8allocateEmPKv.exit.i.i.i.i18, !prof !67

.noexc.i.i28:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc29 unwind label %bb.aj

.noexc29:                                         ; preds = %.noexc.i.i28
  unreachable

_ZNSt15__new_allocatorI12llama_ubatchE8allocateEmPKv.exit.i.i.i.i18: ; preds = %bb.p
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #22
          to label %.noexc30 unwind label %bb.aj  ; 4 uses

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorI12llama_ubatchE8allocateEmPKv.exit.i.i.i.i18
  store ptr %i.ci, ptr %8, align 8, !tbaa !77
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !58
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cc
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.noexc30, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25
  %.09.i.i.i.i.i21 = phi ptr [ %i.cx, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %i.ci, %.noexc30 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.cw, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %i.bz, %.noexc30 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.09.i.i.i.i.i21, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.04.08.i.i.i.i.i22, i64 88, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 88
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 88
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 96
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !60 ; 2 uses
  %i.cq = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !61
  store <2 x ptr> %i.cq, ptr %i.cm, align 8, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i23, label %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i.i.i.i24 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i24, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !35
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !35
  br label %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25

bb.s:                                             ; preds = %bb.q
  %i.cv = atomicrmw volatile add ptr %i.cr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25

_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25: ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i.i.i20
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 104 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 104 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.cw, %i.by
  br i1 %.not.i.i.i.i.i26, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !165

.loopexit:                                        ; preds = %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25, %.noexc30.thread
  %i.cy = phi ptr [ %i.cf, %.noexc30.thread ], [ %i.cl, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25 ]
  %i.cz = phi ptr [ %i.cd, %.noexc30.thread ], [ %i.cj, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i27 = phi ptr [ null, %.noexc30.thread ], [ %i.cx, %_ZSt10_ConstructI12llama_ubatchJRKS0_EEvPT_DpOT0_.exit.i.i.i.i.i25 ]
  store ptr %.0.lcssa.i.i.i.i.i27, ptr %i.cz, align 8, !tbaa !58
  invoke void @_ZN22llama_kv_cache_contextC1EP14llama_kv_cacheSt6vectorINS0_9slot_infoESaIS3_EES2_I12llama_ubatchSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(148) %i.br, ptr noundef %i.bt, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %7, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.t unwind label %bb.ak

bb.t:                                             ; preds = %.loopexit
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !93
  %i.da = load ptr, ptr %8, align 8, !tbaa !77    ; 3 uses
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !58 ; 2 uses
  %.not4.i.i.i32 = icmp eq ptr %i.da, %i.db
  br i1 %.not4.i.i.i32, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i43, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %bb.t, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i39
  %.05.i.i.i34 = phi ptr [ %i.dt, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i39 ], [ %i.da, %bb.t ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i34, i64 96
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i39, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.de, align 8, !tbaa !64
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !65
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !1
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21, !inline_history !1
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i39

bb.w:                                             ; preds = %bb.u
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i36 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i.i36, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i37

bb.y:                                             ; preds = %bb.w
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i37: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i38 = phi i32 [ %i.dh, %bb.x ], [ %i.dr, %bb.y ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i38, 1
  br i1 %i.ds, label %bb.z, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i39, !prof !67

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #21
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i39

_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i39:   ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i37, %bb.v, %.lr.ph.i.i.i33
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i34, i64 104 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.dt, %i.db
  br i1 %.not.i.i.i40, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i41, label %.lr.ph.i.i.i33, !llvm.loop !2

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i41: ; preds = %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i39
  %.pr.i42 = load ptr, ptr %8, align 8, !tbaa !77
  br label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i43

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i43: ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i41, %bb.t
  %i.du = phi ptr [ %.pr.i42, %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i41 ], [ %i.da, %bb.t ] ; 3 uses
  %.not.i.i1.i44 = icmp eq ptr %i.du, null
  br i1 %.not.i.i1.i44, label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit45, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i43
  %i.dv = load ptr, ptr %i.cy, align 8, !tbaa !59
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dy) #24
  br label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit45

_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit45:   ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i43, %bb.aa
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #21
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !93  ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef i32 %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.dz)
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit45
  %i.ee = load ptr, ptr %i.bq, align 8, !tbaa !93 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = invoke noundef i32 %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %bb.ac unwind label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %i.ej = invoke noundef i32 @_Z27llama_memory_status_combine19llama_memory_statusS_(i32 noundef %i.ed, i32 noundef %i.ei)
          to label %bb.ad unwind label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !92
  ret void

bb.ae:                                            ; preds = %bb.a
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit48

bb.af:                                            ; preds = %_ZNSt15__new_allocatorI12llama_ubatchE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %.loopexit49
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.en, %bb.ag ], [ %i.em, %bb.af ]
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 152) #24
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit48

bb.ai:                                            ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorI12llama_ubatchE8allocateEmPKv.exit.i.i.i.i18, %.noexc.i.i28
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %.loopexit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #21
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn11 = phi { ptr, i32 } [ %i.eq, %bb.ak ], [ %i.ep, %bb.aj ]
  call void @_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 152) #24
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit

bb.am:                                            ; preds = %bb.ac, %bb.ab, %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit45
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %i.bq, align 8, !tbaa !93 ; 3 uses
  %.not.i = icmp eq ptr %i.es, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i

_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i: ; preds = %bb.am
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.es) #21, !inline_history !3
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i, %bb.am, %bb.al, %bb.ai
  %.pn13 = phi { ptr, i32 } [ %i.eo, %bb.ai ], [ %.pn11, %bb.al ], [ %i.er, %bb.am ], [ %i.er, %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i ] ; 2 uses
  %i.ew = load ptr, ptr %i.h, align 8, !tbaa !93  ; 3 uses
  %.not.i46 = icmp eq ptr %i.ew, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit48, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i47

_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i47: ; preds = %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !13
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ew) #21, !inline_history !3
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit48

_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit48: ; preds = %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i47, %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit, %bb.ah, %bb.ae
  %.pn13.pn = phi { ptr, i32 } [ %i.el, %bb.ae ], [ %.pn, %bb.ah ], [ %.pn13, %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit ], [ %.pn13, %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i47 ]
  call void @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #21
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZN22llama_kv_cache_contextC1EP14llama_kv_cacheSt6vectorINS0_9slot_infoESaIS3_EES2_I12llama_ubatchSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN27llama_kv_cache_iswa_contextD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(60) dereferenceable(60) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV27llama_kv_cache_iswa_context, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i

_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #21, !inline_history !3
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit3, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i2

_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i2: ; preds = %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #21, !inline_history !3
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit3

_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit3: ; preds = %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit3, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i ], [ %i.l, %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit3 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.q, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !65
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21, !inline_history !1
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21, !inline_history !1
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.e ], [ %i.ad, %bb.f ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.g, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i

_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i:     ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.k, align 8, !tbaa !77
  br label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit3
  %i.ag = phi ptr [ %.pr.i, %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.l, %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit3 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !59
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #24
  br label %_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit

_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN27llama_kv_cache_iswa_contextD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN27llama_kv_cache_iswa_contextD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN27llama_kv_cache_iswa_context4nextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !94
  %i.o = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !77
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 104
  %.not = icmp ult i64 %i.o, %i.w
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN27llama_kv_cache_iswa_context5applyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.m = and i1 %i.f, %i.l
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK27llama_kv_cache_iswa_context10get_statusEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(104) ptr @_ZNK27llama_kv_cache_iswa_context10get_ubatchEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.c
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK27llama_kv_cache_iswa_context8get_baseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK27llama_kv_cache_iswa_context7get_swaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN19llama_kv_cache_iswaD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTV19llama_kv_cache_iswa, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i

_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b) #21, !inline_history !0
  br label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 3 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit3, label %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i2

_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i2: ; preds = %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(352) %i.g) #21, !inline_history !0
  br label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit3

_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit3: ; preds = %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN19llama_kv_cache_iswaD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTV19llama_kv_cache_iswa, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i.i

_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(352) %i.b) #21, !inline_history !166
  br label %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 3 uses
  %.not.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i1.i, label %_ZN19llama_kv_cache_iswaD2Ev.exit, label %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i2.i

_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i2.i: ; preds = %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(352) %i.g) #21, !inline_history !166
  br label %_ZN19llama_kv_cache_iswaD2Ev.exit

_ZN19llama_kv_cache_iswaD2Ev.exit:                ; preds = %_ZNSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EED2Ev.exit.i, %_ZNKSt14default_deleteI14llama_kv_cacheEclEPS0_.exit.i2.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  tail call void @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !167

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !169
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !35   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !169
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbiEZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIS0_ERKSB_IFiiEESI_E3$_0E9_M_invokeERKSt9_Any_dataOi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.val = load i32, ptr %1, align 4, !tbaa !35    ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !172, !nonnull !36, !align !96 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %.not.i.i.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i, label %bb.b, label %_ZNKSt8functionIFbiEEclEi.exit.i.i.i

_ZNKSt8functionIFbiEEclEi.exit.i.i.i:             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.val, ptr %i.a, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.g, label %bb.b, label %"_ZSt10__invoke_rIbRZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS7_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSA_IFiiEESI_E3$_0JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit"

bb.b:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit.i.i.i, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173, !nonnull !36, !align !96
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = call noundef zeroext i1 @_ZNK13llama_hparams6is_swaEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.j, i32 noundef %.val)
  %i.l = xor i1 %i.k, true
  br label %"_ZSt10__invoke_rIbRZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS7_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSA_IFiiEESI_E3$_0JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit"

"_ZSt10__invoke_rIbRZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS7_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSA_IFiiEESI_E3$_0JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit": ; preds = %_ZNKSt8functionIFbiEEclEi.exit.i.i.i, %bb.b
  %.0.i.i.i = phi i1 [ %i.l, %bb.b ], [ false, %_ZNKSt8functionIFbiEEclEi.exit.i.i.i ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbiEZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIS0_ERKSB_IFiiEESI_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSB_IFiiEESJ_E3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_0", ptr %0, align 8, !tbaa !98
  br label %"_ZNSt14_Function_base13_Base_managerIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSB_IFiiEESJ_E3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !61
  br label %"_ZNSt14_Function_base13_Base_managerIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSB_IFiiEESJ_E3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !99
  br label %"_ZNSt14_Function_base13_Base_managerIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSB_IFiiEESJ_E3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSB_IFiiEESJ_E3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZNK13llama_hparams6is_swaEj(ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbiEZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIS0_ERKSB_IFiiEESI_E3$_1E9_M_invokeERKSt9_Any_dataOi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.val = load i32, ptr %1, align 4, !tbaa !35    ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !176, !nonnull !36, !align !96 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %.not.i.i.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i, label %bb.b, label %_ZNKSt8functionIFbiEEclEi.exit.i.i.i

_ZNKSt8functionIFbiEEclEi.exit.i.i.i:             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.val, ptr %i.a, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.g, label %bb.b, label %"_ZSt10__invoke_rIbRZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS7_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSA_IFiiEESI_E3$_1JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit"

bb.b:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit.i.i.i, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177, !nonnull !36, !align !96
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = call noundef zeroext i1 @_ZNK13llama_hparams6is_swaEj(ptr noundef nonnull align 8 dereferenceable(36056) %i.j, i32 noundef %.val)
  br label %"_ZSt10__invoke_rIbRZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS7_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSA_IFiiEESI_E3$_1JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit"

"_ZSt10__invoke_rIbRZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS7_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSA_IFiiEESI_E3$_1JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit": ; preds = %_ZNKSt8functionIFbiEEclEi.exit.i.i.i, %bb.b
  %.0.i.i.i = phi i1 [ %i.k, %bb.b ], [ false, %_ZNKSt8functionIFbiEEclEi.exit.i.i.i ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbiEZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIS0_ERKSB_IFiiEESI_E3$_1E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSB_IFiiEESJ_E3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_1", ptr %0, align 8, !tbaa !98
  br label %"_ZNSt14_Function_base13_Base_managerIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSB_IFiiEESJ_E3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !61
  br label %"_ZNSt14_Function_base13_Base_managerIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSB_IFiiEESJ_E3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !99
  br label %"_ZNSt14_Function_base13_Base_managerIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSB_IFiiEESJ_E3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS8_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKSB_IFiiEESJ_E3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN14llama_kv_cacheC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbjjjj14llama_swa_typeP14llama_memory_iRKSt8functionIFbiEERKSA_IFiiEESI_PKc(ptr noundef nonnull align 8 dereferenceable(352), ptr noundef nonnull align 8 dereferenceable(36840), ptr noundef nonnull align 8 dereferenceable(36056), i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = load ptr, ptr %2, align 8, !tbaa !47
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !48 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !47     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !178

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #25 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !47
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !47     ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.ag = icmp ult ptr %i.af, %i.w
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !95
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !48 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47 ; 2 uses
  %i.an = icmp ult ptr %i.w, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !48 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !178

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #25 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !48 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !178

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !42
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #25 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi ptr [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult ptr %i.bl, %i.w                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeIP24ggml_backend_buffer_typeSt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI12llama_ubatchSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !77     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI12llama_ubatchSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

_ZNKSt6vectorI12llama_ubatchSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 104                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 88686269585142075)
  %i.l = select i1 %i.j, i64 88686269585142075, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 104
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 88, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.u = load <2 x ptr>, ptr %i.s, align 8, !tbaa !61
  store ptr null, ptr %i.t, align 8, !tbaa !60
  store <2 x ptr> %i.u, ptr %i.r, align 8, !tbaa !61
  store ptr null, ptr %i.s, align 8, !tbaa !62
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI12llama_ubatchSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorI12llama_ubatchSaIS0_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI12llama_ubatchSaIS0_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.0911.i.i.i, i64 88, i1 false), !alias.scope !188
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96
  %i.y = load <2 x ptr>, ptr %i.w, align 8, !tbaa !61, !alias.scope !187
  store ptr null, ptr %i.x, align 8, !tbaa !60, !alias.scope !187
  store <2 x ptr> %i.y, ptr %i.v, align 8, !tbaa !61, !alias.scope !186
  store ptr null, ptr %i.w, align 8, !tbaa !62, !alias.scope !187
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !182

_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI12llama_ubatchSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI12llama_ubatchSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 104 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(104) %.0911.i.i.i19, i64 88, i1 false), !alias.scope !191
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 88 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 96
  %i.af = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !61, !alias.scope !190
  store ptr null, ptr %i.ae, align 8, !tbaa !60, !alias.scope !190
  store <2 x ptr> %i.af, ptr %i.ac, align 8, !tbaa !61, !alias.scope !189
  store ptr null, ptr %i.ad, align 8, !tbaa !62, !alias.scope !190
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 104 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 104 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !182

_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseI12llama_ubatchSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !59
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #24
  br label %_ZNSt12_Vector_baseI12llama_ubatchSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI12llama_ubatchSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI12llama_ubatchSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !77
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !59
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { noreturn }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null}
!1 = distinct !{ptr @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev, null, null, null, ptr @_ZN12llama_ubatchD2Ev, null, null, null}
!2 = distinct !{!2, !49}
!3 = distinct !{null, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTS14llama_memory_i"}
!15 = !{!"bool", !8, i64 0}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"p1 _ZTS14llama_kv_cache", !16, i64 0}
!18 = !{!"_ZTSSt10_Head_baseILm0EP14llama_kv_cacheLb0EE", !17, i64 0}
!19 = !{!"_ZTSSt11_Tuple_implILm0EJP14llama_kv_cacheSt14default_deleteIS0_EEE", !18, i64 0}
!20 = !{!"_ZTSSt5tupleIJP14llama_kv_cacheSt14default_deleteIS0_EEE", !19, i64 0}
!21 = !{!"_ZTSSt15__uniq_ptr_implI14llama_kv_cacheSt14default_deleteIS0_EE", !20, i64 0}
!22 = !{!"_ZTSSt15__uniq_ptr_dataI14llama_kv_cacheSt14default_deleteIS0_ELb1ELb1EE", !21, i64 0}
!23 = !{!"_ZTSSt10unique_ptrI14llama_kv_cacheSt14default_deleteIS0_EE", !22, i64 0}
!24 = !{!"_ZTS19llama_kv_cache_iswa", !14, i64 0, !15, i64 8, !23, i64 16, !23, i64 24}
!25 = !{!24, !15, i64 8}
!26 = !{!"p1 _ZTSSt8functionIFbiEE", !16, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"p1 _ZTS11llama_model", !16, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTSSt14_Function_base", !8, i64 0, !16, i64 16}
!31 = !{!"_ZTSSt8functionIFbiEE", !30, i64 0, !16, i64 24}
!32 = !{!31, !16, i64 24}
!33 = !{!30, !16, i64 16}
!34 = !{!17, !17, i64 0}
!35 = !{!9, !9, i64 0}
!36 = !{}
!37 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!38 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!39 = !{!"_ZTSSt18_Rb_tree_node_base", !37, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!40 = !{!"long", !8, i64 0}
!41 = !{!"_ZTSSt15_Rb_tree_header", !39, i64 0, !40, i64 32}
!42 = !{!41, !38, i64 16}
!43 = !{!41, !38, i64 8}
!44 = !{!"p1 _ZTS24ggml_backend_buffer_type", !16, i64 0}
!45 = !{!"_ZTSSt4pairIKP24ggml_backend_buffer_typemE", !44, i64 0, !40, i64 8}
!46 = !{!45, !40, i64 8}
!47 = !{!44, !44, i64 0}
!48 = !{!38, !38, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!41, !40, i64 32}
!51 = !{!"p1 int", !16, i64 0}
!52 = !{!"p1 _ZTSN12llama_ubatch6data_tE", !16, i64 0}
!53 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!54 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0}
!55 = !{!"_ZTSSt12__shared_ptrIN12llama_ubatch6data_tELN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0, !54, i64 8}
!56 = !{!"p1 _ZTS12llama_ubatch", !16, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseI12llama_ubatchSaIS0_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!57, !56, i64 8}
!59 = !{!57, !56, i64 16}
!60 = !{!54, !53, i64 0}
!61 = !{!16, !16, i64 0}
!62 = !{!55, !52, i64 0}
!63 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!64 = !{!63, !9, i64 8}
!65 = !{!63, !9, i64 12}
!66 = !{!8, !8, i64 0}
!67 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!68 = !{!"p1 _ZTSN14llama_kv_cache9slot_infoE", !16, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"p1 _ZTS19llama_kv_cache_iswa", !16, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"p1 _ZTS27llama_kv_cache_iswa_context", !16, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"p1 _ZTS22llama_memory_context_i", !16, i64 0}
!75 = !{!"_ZTSSt10_Head_baseILm0EP22llama_memory_context_iLb0EE", !74, i64 0}
!76 = !{!75, !74, i64 0}
!77 = !{!57, !56, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIN14llama_kv_cache9slot_infoESaIS1_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!79 = !{!78, !68, i64 16}
!80 = !{!56, !56, i64 0}
!81 = !{!"_ZTS22llama_memory_context_i"}
!82 = !{!"_ZTSNSt12_Vector_baseI12llama_ubatchSaIS0_EE12_Vector_implE", !57, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseI12llama_ubatchSaIS0_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorI12llama_ubatchSaIS0_EE", !83, i64 0}
!85 = !{!"_ZTSSt11_Tuple_implILm0EJP22llama_memory_context_iSt14default_deleteIS0_EEE", !75, i64 0}
!86 = !{!"_ZTSSt5tupleIJP22llama_memory_context_iSt14default_deleteIS0_EEE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implI22llama_memory_context_iSt14default_deleteIS0_EE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataI22llama_memory_context_iSt14default_deleteIS0_ELb1ELb1EE", !87, i64 0}
!89 = !{!"_ZTSSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EE", !88, i64 0}
!90 = !{!"_ZTS19llama_memory_status", !8, i64 0}
!91 = !{!"_ZTS27llama_kv_cache_iswa_context", !81, i64 0, !40, i64 8, !84, i64 16, !89, i64 40, !89, i64 48, !90, i64 56}
!92 = !{!91, !90, i64 56}
!93 = !{!74, !74, i64 0}
!94 = !{!91, !40, i64 8}
!95 = !{!39, !38, i64 24}
!96 = !{i64 8}
!97 = !{!"p1 _ZTSSt9type_info", !16, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{i64 0, i64 8, !27, i64 8, i64 8, !29}
!100 = distinct !{!100, i1 true, !"_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RKjRjSC_i14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSH_IFiiEESP_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!101 = distinct !{!101, !100, !"_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RKjRjSC_i14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSH_IFiiEESP_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!102 = distinct !{null, null, null, null, null}
!103 = distinct !{!103, i1 true, !"_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RjSA_SA_RKjRK14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSJ_IFiiEESR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!104 = distinct !{!104, !103, !"_ZSt11make_uniqueI14llama_kv_cacheJRK11llama_modelRK13llama_hparamsR9ggml_typeS8_RbS9_S9_RjSA_SA_RKjRK14llama_swa_typeRP14llama_memory_iRKSt8functionIFbiEERKSJ_IFiiEESR_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!105 = !{!"_ZTS20llama_hparams_posnet", !9, i64 0, !9, i64 4}
!106 = !{!"_ZTS22llama_hparams_convnext", !9, i64 0, !9, i64 4}
!107 = !{!"_ZTSSt5arrayIjLm512EE", !8, i64 0}
!108 = !{!"float", !8, i64 0}
!109 = !{!"_ZTSSt5arrayIiLm4EE", !8, i64 0}
!110 = !{!"_ZTS14llama_swa_type", !8, i64 0}
!111 = !{!"_ZTS21llama_non_causal_type", !8, i64 0}
!112 = !{!"_ZTSSt5arrayIfLm512EE", !8, i64 0}
!113 = !{!"_ZTSSt12_Base_bitsetILm8EE", !8, i64 0}
!114 = !{!"_ZTSSt6bitsetILm512EE", !113, i64 0}
!115 = !{!"_ZTSSt5arrayImLm8EE", !8, i64 0}
!116 = !{!"_ZTSSt5arrayIjLm64EE", !8, i64 0}
!117 = !{!"_ZTSSt5arrayIiLm512EE", !8, i64 0}
!118 = !{!"_ZTS18llama_pooling_type", !8, i64 0}
!119 = !{!"_ZTS15llama_rope_type", !8, i64 0}
!120 = !{!"_ZTS23llama_rope_scaling_type", !8, i64 0}
!121 = !{!"_ZTS15llm_ffn_op_type", !8, i64 0}
!122 = !{!"_ZTS13llama_hparams", !15, i64 0, !15, i64 1, !15, i64 2, !15, i64 3, !15, i64 4, !15, i64 5, !15, i64 6, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !105, i64 72, !106, i64 80, !9, i64 88, !107, i64 92, !107, i64 2140, !107, i64 4188, !107, i64 6236, !107, i64 8284, !9, i64 10332, !9, i64 10336, !9, i64 10340, !9, i64 10344, !9, i64 10348, !9, i64 10352, !9, i64 10356, !9, i64 10360, !9, i64 10364, !9, i64 10368, !9, i64 10372, !9, i64 10376, !9, i64 10380, !108, i64 10384, !108, i64 10388, !15, i64 10392, !9, i64 10396, !9, i64 10400, !9, i64 10404, !108, i64 10408, !108, i64 10412, !108, i64 10416, !108, i64 10420, !108, i64 10424, !108, i64 10428, !9, i64 10432, !9, i64 10436, !9, i64 10440, !9, i64 10444, !9, i64 10448, !9, i64 10452, !9, i64 10456, !9, i64 10460, !9, i64 10464, !108, i64 10468, !108, i64 10472, !108, i64 10476, !108, i64 10480, !108, i64 10484, !108, i64 10488, !9, i64 10492, !108, i64 10496, !108, i64 10500, !108, i64 10504, !108, i64 10508, !108, i64 10512, !109, i64 10516, !107, i64 10532, !110, i64 12580, !9, i64 12584, !111, i64 12588, !107, i64 12592, !107, i64 14640, !9, i64 16688, !9, i64 16692, !9, i64 16696, !9, i64 16700, !9, i64 16704, !9, i64 16708, !9, i64 16712, !15, i64 16716, !9, i64 16720, !9, i64 16724, !108, i64 16728, !108, i64 16732, !108, i64 16736, !15, i64 16740, !108, i64 16744, !108, i64 16748, !108, i64 16752, !108, i64 16756, !108, i64 16760, !108, i64 16764, !108, i64 16768, !9, i64 16772, !108, i64 16776, !15, i64 16780, !15, i64 16781, !15, i64 16782, !15, i64 16783, !9, i64 16784, !9, i64 16788, !9, i64 16792, !9, i64 16796, !9, i64 16800, !9, i64 16804, !9, i64 16808, !9, i64 16812, !9, i64 16816, !9, i64 16820, !9, i64 16824, !9, i64 16828, !108, i64 16832, !108, i64 16836, !9, i64 16840, !9, i64 16844, !9, i64 16848, !9, i64 16852, !9, i64 16856, !9, i64 16860, !9, i64 16864, !9, i64 16868, !112, i64 16872, !112, i64 18920, !112, i64 20968, !112, i64 23016, !9, i64 25064, !9, i64 25068, !9, i64 25072, !9, i64 25076, !9, i64 25080, !107, i64 25084, !9, i64 27132, !9, i64 27136, !9, i64 27140, !9, i64 27144, !9, i64 27148, !108, i64 27152, !108, i64 27156, !107, i64 27160, !9, i64 29208, !9, i64 29212, !9, i64 29216, !9, i64 29220, !9, i64 29224, !9, i64 29228, !9, i64 29232, !9, i64 29236, !114, i64 29240, !115, i64 29304, !116, i64 29368, !116, i64 29624, !9, i64 29880, !117, i64 29884, !9, i64 31932, !9, i64 31936, !9, i64 31940, !118, i64 31944, !119, i64 31948, !120, i64 31952, !121, i64 31956, !112, i64 31960, !112, i64 34008}
!123 = !{!122, !9, i64 12584}
!124 = !{!101}
!125 = !{!104}
!126 = !{!110, !110, i64 0}
!127 = !{!40, !40, i64 0}
!128 = distinct !{!128, !49}
!129 = !{!45, !44, i64 0}
!130 = distinct !{ptr @_ZN12llama_ubatchD2Ev, null, null, null}
!131 = distinct !{!131, i1 true, !"_ZSt11make_uniqueI27llama_kv_cache_iswa_contextJ19llama_memory_statusEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!132 = distinct !{!132, !131, !"_ZSt11make_uniqueI27llama_kv_cache_iswa_contextJ19llama_memory_statusEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!133 = !{i8 0, i8 2}
!134 = !{!"p1 float", !16, i64 0}
!135 = !{!"any p2 pointer", !16, i64 0}
!136 = !{!"p2 int", !135, i64 0}
!137 = !{!"p1 omnipotent char", !16, i64 0}
!138 = !{!"_ZTSSt10shared_ptrIN12llama_ubatch6data_tEE", !55, i64 0}
!139 = !{!"_ZTS12llama_ubatch", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !51, i64 24, !134, i64 32, !51, i64 40, !51, i64 48, !136, i64 56, !51, i64 64, !51, i64 72, !137, i64 80, !138, i64 88}
!140 = !{!139, !9, i64 4}
!141 = !{!132}
!142 = distinct !{null, null, null}
!143 = distinct !{!143, !49}
!144 = distinct !{!144, !49}
!145 = !{!78, !68, i64 0}
!146 = !{!78, !68, i64 8}
!147 = !{!"p1 _ZTSSt6vectorIjSaIjEE", !16, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!149 = !{!148, !147, i64 0}
!150 = !{!148, !147, i64 8}
!151 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!152 = !{!151, !51, i64 0}
!153 = !{!151, !51, i64 16}
!154 = !{!148, !147, i64 16}
!155 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!156 = !{!155, !51, i64 0}
!157 = !{!155, !51, i64 16}
!158 = distinct !{null, null, null, ptr @_ZN12llama_ubatchD2Ev, null, null, null}
!159 = distinct !{!159, i1 true, !"_ZSt11make_uniqueI27llama_kv_cache_iswa_contextJP19llama_kv_cache_iswaEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!160 = distinct !{!160, !159, !"_ZSt11make_uniqueI27llama_kv_cache_iswa_contextJP19llama_kv_cache_iswaEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!161 = !{!160}
!162 = distinct !{!162, i1 true, !"_ZSt11make_uniqueI27llama_kv_cache_iswa_contextJP19llama_kv_cache_iswaRP13llama_contextRbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!163 = distinct !{!163, !162, !"_ZSt11make_uniqueI27llama_kv_cache_iswa_contextJP19llama_kv_cache_iswaRP13llama_contextRbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!164 = !{!163}
!165 = distinct !{!165, !49}
!166 = distinct !{ptr @_ZN19llama_kv_cache_iswaD2Ev, null, null}
!167 = distinct !{!167, !49}
!168 = !{!39, !38, i64 16}
!169 = distinct !{null}
!170 = distinct !{null, null, null, null}
!171 = !{!"_ZTSZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_0", !26, i64 0, !28, i64 8}
!172 = !{!171, !26, i64 0}
!173 = !{!171, !28, i64 8}
!174 = distinct !{null, null, null, null}
!175 = !{!"_ZTSZN19llama_kv_cache_iswaC1ERK11llama_modelRK13llama_hparams9ggml_typeS6_bbbbjjjjP14llama_memory_iRKSt8functionIFbiEERKS9_IFiiEESH_E3$_1", !26, i64 0, !28, i64 8}
!176 = !{!175, !26, i64 0}
!177 = !{!175, !28, i64 8}
!178 = distinct !{!178, !49}
!179 = distinct !{!179, i1 true, !"_ZSt19__relocate_object_aI12llama_ubatchS0_SaIS0_EEvPT_PT0_RT1_"}
!180 = distinct !{!180, !179, !"_ZSt19__relocate_object_aI12llama_ubatchS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!181 = distinct !{!181, !179, !"_ZSt19__relocate_object_aI12llama_ubatchS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!182 = distinct !{!182, !49}
!183 = distinct !{!183, i1 true, !"_ZSt19__relocate_object_aI12llama_ubatchS0_SaIS0_EEvPT_PT0_RT1_"}
!184 = distinct !{!184, !183, !"_ZSt19__relocate_object_aI12llama_ubatchS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!185 = distinct !{!185, !183, !"_ZSt19__relocate_object_aI12llama_ubatchS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!186 = !{!180}
!187 = !{!181}
!188 = !{!180, !181}
!189 = !{!184}
!190 = !{!185}
!191 = !{!184, !185}
end_hunk_1
