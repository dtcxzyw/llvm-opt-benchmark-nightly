Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/framework?download=true
inline.NumInlined: 4258
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZZN5boost4rtti11rtti_detail12rttid_holderISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE4instEvE6s_instB5cxx11 = linkonce_odr global %"struct.boost::rtti::rtti_detail::rttid_holder<std::vector<std::__cxx11::basic_string<char>>>::rttid" zeroinitializer, comdat, align 1
@_ZTIN5boost7runtime17arg_type_mismatchE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost7runtime17arg_type_mismatchE, ptr @_ZTIN5boost7runtime20specific_param_errorINS0_17arg_type_mismatchENS0_10init_errorEEE }, comdat, align 8
@_ZTSN5boost7runtime17arg_type_mismatchE = linkonce_odr constant [36 x i8] c"N5boost7runtime17arg_type_mismatchE\00", comdat, align 1
@_ZTIN5boost7runtime20specific_param_errorINS0_17arg_type_mismatchENS0_10init_errorEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost7runtime20specific_param_errorINS0_17arg_type_mismatchENS0_10init_errorEEE, ptr @_ZTIN5boost7runtime10init_errorE }, comdat, align 8
@_ZTSN5boost7runtime20specific_param_errorINS0_17arg_type_mismatchENS0_10init_errorEEE = linkonce_odr constant [82 x i8] c"N5boost7runtime20specific_param_errorINS0_17arg_type_mismatchENS0_10init_errorEEE\00", comdat, align 1
@_ZTVN5boost7runtime17arg_type_mismatchE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5boost7runtime17arg_type_mismatchE, ptr @_ZN5boost7runtime11param_errorD2Ev, ptr @_ZN5boost7runtime17arg_type_mismatchD0Ev, ptr @_ZNK5boost7runtime11param_error4whatEv] }, comdat, align 8
@_ZZN5boost4rtti11rtti_detail12rttid_holderIjE4instEvE6s_inst = linkonce_odr global %"struct.boost::rtti::rtti_detail::rttid_holder<unsigned int>::rttid" zeroinitializer, comdat, align 1
@_ZZN5boost4rtti11rtti_detail12rttid_holderINS_9unit_test9log_levelEE4instEvE6s_inst = linkonce_odr global %"struct.boost::rtti::rtti_detail::rttid_holder<boost::unit_test::log_level>::rttid" zeroinitializer, comdat, align 1
@_ZZN5boost4rtti11rtti_detail12rttid_holderINS_9unit_test13output_formatEE4instEvE6s_inst = linkonce_odr global %"struct.boost::rtti::rtti_detail::rttid_holder<boost::unit_test::output_format>::rttid" zeroinitializer, comdat, align 1
@_ZZN5boost10function_nIvJEE9assign_toINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvRSoEvS9_JSA_EEENS3_4listIJNS3_5valueIPS9_EENS_17reference_wrapperISoEEEEEEEEEvT_E13stored_vtable = linkonce_odr hidden constant %"struct.boost::detail::function::basic_vtable" { %"struct.boost::detail::function::vtable_base" { ptr @_ZN5boost6detail8function15functor_managerINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvRSoEvS9_JSA_EEENS3_4listIJNS3_5valueIPS9_EENS_17reference_wrapperISoEEEEEEEE6manageERKNS1_15function_bufferERSN_NS1_30functor_manager_operation_typeE }, ptr @_ZN5boost6detail8function25void_function_obj_invokerINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvRSoEvS9_JSA_EEENS3_4listIJNS3_5valueIPS9_EENS_17reference_wrapperISoEEEEEEEvJEE6invokeERNS1_15function_bufferE }, comdat, align 8
@_ZTIN5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvRSoEvS6_JS7_EEENS0_4listIJNS0_5valueIPS6_EENS_17reference_wrapperISoEEEEEEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvRSoEvS6_JS7_EEENS0_4listIJNS0_5valueIPS6_EENS_17reference_wrapperISoEEEEEEE }, comdat, align 8
@_ZTSN5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvRSoEvS6_JS7_EEENS0_4listIJNS0_5valueIPS6_EENS_17reference_wrapperISoEEEEEEE = linkonce_odr hidden constant [159 x i8] c"N5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvRSoEvS6_JS7_EEENS0_4listIJNS0_5valueIPS6_EENS_17reference_wrapperISoEEEEEEE\00", comdat, align 1
@_ZZN5boost4rtti11rtti_detail12rttid_holderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4instEvE6s_instB5cxx11 = linkonce_odr global %"struct.boost::rtti::rtti_detail::rttid_holder<std::__cxx11::basic_string<char>>::rttid" zeroinitializer, comdat, align 1
@.str.57 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZZN5boost10function_nIvJEE9assign_toINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvNS8_13output_formatERSoEvS9_JSA_SB_EEENS3_4listIJNS3_5valueIPS9_EENSG_ISA_EENS_17reference_wrapperISoEEEEEEEEEvT_E13stored_vtable = linkonce_odr hidden constant %"struct.boost::detail::function::basic_vtable" { %"struct.boost::detail::function::vtable_base" { ptr @_ZN5boost6detail8function15functor_managerINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvNS8_13output_formatERSoEvS9_JSA_SB_EEENS3_4listIJNS3_5valueIPS9_EENSG_ISA_EENS_17reference_wrapperISoEEEEEEEE6manageERKNS1_15function_bufferERSP_NS1_30functor_manager_operation_typeE }, ptr @_ZN5boost6detail8function25void_function_obj_invokerINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvNS8_13output_formatERSoEvS9_JSA_SB_EEENS3_4listIJNS3_5valueIPS9_EENSG_ISA_EENS_17reference_wrapperISoEEEEEEEvJEE6invokeERNS1_15function_bufferE }, comdat, align 8
@_ZTIN5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvNS5_13output_formatERSoEvS6_JS7_S8_EEENS0_4listIJNS0_5valueIPS6_EENSD_IS7_EENS_17reference_wrapperISoEEEEEEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvNS5_13output_formatERSoEvS6_JS7_S8_EEENS0_4listIJNS0_5valueIPS6_EENSD_IS7_EENS_17reference_wrapperISoEEEEEEE }, comdat, align 8
@_ZTSN5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvNS5_13output_formatERSoEvS6_JS7_S8_EEENS0_4listIJNS0_5valueIPS6_EENSD_IS7_EENS_17reference_wrapperISoEEEEEEE = linkonce_odr hidden constant [192 x i8] c"N5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test15unit_test_log_tEFvNS5_13output_formatERSoEvS6_JS7_S8_EEENS0_4listIJNS0_5valueIPS6_EENSD_IS7_EENS_17reference_wrapperISoEEEEEEE\00", comdat, align 1
@_ZTIN5boost9unit_test9framework15nothing_to_testE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost9unit_test9framework15nothing_to_testE }, comdat, align 8
@_ZTSN5boost9unit_test9framework15nothing_to_testE = linkonce_odr hidden constant [46 x i8] c"N5boost9unit_test9framework15nothing_to_testE\00", comdat, align 1
@_ZZN5boost4rtti11rtti_detail12rttid_holderINS_9unit_test12report_levelEE4instEvE6s_inst = linkonce_odr global %"struct.boost::rtti::rtti_detail::rttid_holder<boost::unit_test::report_level>::rttid" zeroinitializer, comdat, align 1
@_ZZN5boost10function_nIvJEE9assign_toINS_3_bi6bind_tIvPFvRSoENS3_4listIJNS_17reference_wrapperISoEEEEEEEEEvT_E13stored_vtable = linkonce_odr hidden constant %"struct.boost::detail::function::basic_vtable" { %"struct.boost::detail::function::vtable_base" { ptr @_ZN5boost6detail8function15functor_managerINS_3_bi6bind_tIvPFvRSoENS3_4listIJNS_17reference_wrapperISoEEEEEEEE6manageERKNS1_15function_bufferERSE_NS1_30functor_manager_operation_typeE }, ptr @_ZN5boost6detail8function25void_function_obj_invokerINS_3_bi6bind_tIvPFvRSoENS3_4listIJNS_17reference_wrapperISoEEEEEEEvJEE6invokeERNS1_15function_bufferE }, comdat, align 8
@_ZTIN5boost3_bi6bind_tIvPFvRSoENS0_4listIJNS_17reference_wrapperISoEEEEEEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost3_bi6bind_tIvPFvRSoENS0_4listIJNS_17reference_wrapperISoEEEEEEE }, comdat, align 8
@_ZTSN5boost3_bi6bind_tIvPFvRSoENS0_4listIJNS_17reference_wrapperISoEEEEEEE = linkonce_odr hidden constant [71 x i8] c"N5boost3_bi6bind_tIvPFvRSoENS0_4listIJNS_17reference_wrapperISoEEEEEEE\00", comdat, align 1
@_ZZN5boost4rtti11rtti_detail12rttid_holderIbE4instEvE6s_inst = linkonce_odr global %"struct.boost::rtti::rtti_detail::rttid_holder<bool>::rttid" zeroinitializer, comdat, align 1
@_ZZN5boost4rtti11rtti_detail12rttid_holderImE4instEvE6s_inst = linkonce_odr global %"struct.boost::rtti::rtti_detail::rttid_holder<unsigned long>::rttid" zeroinitializer, comdat, align 1
@_ZZN5boost10function_nIvJEE9assign_toINS_3_bi6bind_tIvPFvPFbvEENS3_4listIJNS3_5valueIS6_EEEEEEEEEvT_E13stored_vtable = linkonce_odr hidden constant %"struct.boost::detail::function::basic_vtable" { %"struct.boost::detail::function::vtable_base" { ptr @_ZN5boost6detail8function15functor_managerINS_3_bi6bind_tIvPFvPFbvEENS3_4listIJNS3_5valueIS6_EEEEEEEE6manageERKNS1_15function_bufferERSF_NS1_30functor_manager_operation_typeE }, ptr @_ZN5boost6detail8function25void_function_obj_invokerINS_3_bi6bind_tIvPFvPFbvEENS3_4listIJNS3_5valueIS6_EEEEEEEvJEE6invokeERNS1_15function_bufferE }, comdat, align 8
@_ZTIN5boost3_bi6bind_tIvPFvPFbvEENS0_4listIJNS0_5valueIS3_EEEEEEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost3_bi6bind_tIvPFvPFbvEENS0_4listIJNS0_5valueIS3_EEEEEEE }, comdat, align 8
@_ZTSN5boost3_bi6bind_tIvPFvPFbvEENS0_4listIJNS0_5valueIS3_EEEEEEE = linkonce_odr hidden constant [62 x i8] c"N5boost3_bi6bind_tIvPFvPFbvEENS0_4listIJNS0_5valueIS3_EEEEEEE\00", comdat, align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZZN5boost10function_nIvJEE9assign_toINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test13test_observerEFvmmEvS9_JmmEEENS3_4listIJNS3_5valueIPS9_EENSE_INS8_17test_case_counter19readonly_property43EEENSE_ImEEEEEEEEEvT_E13stored_vtable = linkonce_odr hidden constant %"struct.boost::detail::function::basic_vtable" { %"struct.boost::detail::function::vtable_base" { ptr @_ZN5boost6detail8function15functor_managerINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test13test_observerEFvmmEvS9_JmmEEENS3_4listIJNS3_5valueIPS9_EENSE_INS8_17test_case_counter19readonly_property43EEENSE_ImEEEEEEEE6manageERKNS1_15function_bufferERSO_NS1_30functor_manager_operation_typeE }, ptr @_ZN5boost6detail8function25void_function_obj_invokerINS_3_bi6bind_tINS3_11unspecifiedENS_4_mfi2mfIMNS_9unit_test13test_observerEFvmmEvS9_JmmEEENS3_4listIJNS3_5valueIPS9_EENSE_INS8_17test_case_counter19readonly_property43EEENSE_ImEEEEEEEvJEE6invokeERNS1_15function_bufferE }, comdat, align 8
@_ZTIN5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test13test_observerEFvmmEvS6_JmmEEENS0_4listIJNS0_5valueIPS6_EENSB_INS5_17test_case_counter19readonly_property43EEENSB_ImEEEEEEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test13test_observerEFvmmEvS6_JmmEEENS0_4listIJNS0_5valueIPS6_EENSB_INS5_17test_case_counter19readonly_property43EEENSB_ImEEEEEEE }, comdat, align 8
@_ZTSN5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test13test_observerEFvmmEvS6_JmmEEENS0_4listIJNS0_5valueIPS6_EENSB_INS5_17test_case_counter19readonly_property43EEENSB_ImEEEEEEE = linkonce_odr hidden constant [188 x i8] c"N5boost3_bi6bind_tINS0_11unspecifiedENS_4_mfi2mfIMNS_9unit_test13test_observerEFvmmEvS6_JmmEEENS0_4listIJNS0_5valueIPS6_EENSB_INS5_17test_case_counter19readonly_property43EEENSB_ImEEEEEEE\00", comdat, align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVN5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEEE = linkonce_odr hidden constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEEE, ptr @_ZN5boost6detail15sp_counted_baseD2Ev, ptr @_ZN5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEED0Ev, ptr @_ZN5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEE7disposeEv, ptr @_ZN5boost6detail15sp_counted_base7destroyEv, ptr @_ZN5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEE11get_deleterERKSt9type_info, ptr @_ZN5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEE17get_local_deleterERKSt9type_info, ptr @_ZN5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEE19get_untyped_deleterEv] }, comdat, align 8
@_ZTIN5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEEE, ptr @_ZTIN5boost6detail15sp_counted_baseE }, comdat, align 8
@_ZTSN5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEEE = linkonce_odr hidden constant [89 x i8] c"N5boost6detail17sp_counted_impl_pINS_9unit_test9framework4impl21global_fixture_handleEEE\00", comdat, align 1
@_ZTVN5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA42_cRA42_KcEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA42_cRA42_KcEE, ptr @_ZN5boost9unit_test12lazy_ostreamD2Ev, ptr @_ZN5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA42_cRA42_KcED0Ev, ptr @_ZNK5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA42_cRA42_KcEclERSo] }, comdat, align 8
@_ZTIN5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA42_cRA42_KcEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA42_cRA42_KcEE, ptr @_ZTIN5boost9unit_test12lazy_ostreamE }, comdat, align 8
@_ZTSN5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA42_cRA42_KcEE = linkonce_odr hidden constant [71 x i8] c"N5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA42_cRA42_KcEE\00", comdat, align 1
@_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA42_cRA42_KcEEjRKjEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA42_cRA42_KcEEjRKjEE, ptr @_ZN5boost9unit_test12lazy_ostreamD2Ev, ptr @_ZN5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA42_cRA42_KcEEjRKjED0Ev, ptr @_ZNK5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA42_cRA42_KcEEjRKjEclERSo] }, comdat, align 8
@_ZTIN5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA42_cRA42_KcEEjRKjEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA42_cRA42_KcEEjRKjEE, ptr @_ZTIN5boost9unit_test12lazy_ostreamE }, comdat, align 8
@_ZTSN5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA42_cRA42_KcEEjRKjEE = linkonce_odr hidden constant [82 x i8] c"N5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA42_cRA42_KcEEjRKjEE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_framework.cpp, ptr null }]

@_ZN5boost9unit_test9framework4impl29master_test_suite_name_setterC1ENS0_13basic_cstringIKcEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost9unit_test9framework4impl29master_test_suite_name_setterC2ENS0_13basic_cstringIKcEE

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_test15unit_test_log_t8instanceEv() local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9unit_test19unit_test_monitor_t8instanceEv() local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_test19results_collector_t8instanceEv() local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_test18progress_monitor_t8instanceEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN5boost9unit_test9framework4impl19setup_for_executionERKNS0_9test_unitE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  resume { ptr, i32 } %i.e

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  tail call void @_ZN5boost9unit_test9framework5state17deduce_run_statusEm(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 noundef %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9unit_test9framework5state17deduce_run_statusEm(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::unit_test::framework::internal_error", align 8 ; 5 uses
  %3 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.boost::unit_test::framework::impl::label_filter", align 8 ; 4 uses
  %5 = alloca %"class.boost::unit_test::framework::impl::name_filter", align 8 ; 10 uses
  %6 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %7 = alloca %"class.boost::unit_test::framework::impl::label_filter", align 8 ; 4 uses
  %8 = alloca %"class.boost::unit_test::framework::impl::name_filter", align 8 ; 10 uses
  %9 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %11 = alloca %"struct.boost::unit_test::framework::setup_error", align 8 ; 5 uses
  %12 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 6 uses
  %13 = alloca %"class.boost::unit_test::utils::basic_string_token_iterator", align 8 ; 20 uses
  %14 = alloca %"struct.boost::unit_test::framework::setup_error", align 8 ; 5 uses
  %15 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 6 uses
  %16 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %17 = alloca %"class.std::vector.41", align 8   ; 14 uses
  %18 = alloca %"class.std::vector.41", align 8   ; 13 uses
  %19 = alloca %"class.boost::unit_test::framework::impl::set_run_status", align 8 ; 9 uses
  %20 = alloca %"class.boost::unit_test::framework::impl::set_run_status", align 8 ; 8 uses
  %21 = alloca %"class.boost::unit_test::framework::impl::set_run_status", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr @_ZN5boost9unit_test14runtime_config16btrt_run_filtersB5cxx11E, align 8, !tbaa !42 ; 2 uses
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9unit_test14runtime_config16btrt_run_filtersB5cxx11E, i64 8), align 8, !tbaa !43
  %i.e = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9unit_test14runtime_config14argument_storeEv()
          to label %.noexc unwind label %.loopexit.split-lp66.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %i.c, ptr %16, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !46
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost7runtime15arguments_store3getISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEERT_NS_9unit_test13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dead_on_return %16)
          to label %bb.b unwind label %.loopexit.split-lp66.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  br label %bb.ab

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.m = load ptr, ptr @_ZN5boost9unit_test14runtime_config16btrt_run_filtersB5cxx11E, align 8, !tbaa !42 ; 2 uses
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost9unit_test14runtime_config16btrt_run_filtersB5cxx11E, i64 8), align 8, !tbaa !43
  %i.o = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost9unit_test14runtime_config14argument_storeEv()
          to label %.noexc30 unwind label %.loopexit.split-lp66.loopexit.split-lp

.noexc30:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.m, ptr %10, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !46
  %i.r = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost7runtime15arguments_store3getISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEERT_NS_9unit_test13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dead_on_return %10)
          to label %.noexc31 unwind label %.loopexit.split-lp66.loopexit.split-lp ; 2 uses

.noexc31:                                         ; preds = %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %.thread60, label %.lr.ph120.i

.thread60:                                        ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  br label %bb.ab

.lr.ph120.i:                                      ; preds = %.noexc31
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ap = insertelement <4 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test9framework4impl12label_filterE, i64 16), ptr poison, ptr poison, ptr poison>, ptr %18, i64 1
  %i.aq = insertelement <4 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test9framework4impl12label_filterE, i64 16), ptr poison, ptr poison, ptr poison>, ptr %17, i64 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph120.i
  %.031118.i = phi i1 [ false, %.lr.ph120.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.096.0117.i = phi ptr [ %i.s, %.lr.ph120.i ], [ %i.dc, %._crit_edge.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.096.0117.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43, !noalias !373 ; 2 uses
  %i.at = icmp samesign eq i64 %i.as, 0
  br i1 %i.at, label %bb.e, label %_ZN5boost9unit_test13basic_cstringIKcEC2EPS2_.exit.i.i.i

_ZN5boost9unit_test13basic_cstringIKcEC2EPS2_.exit.i.i.i: ; preds = %bb.d
  %i.au = load ptr, ptr %.sroa.096.0117.i, align 8, !tbaa !42, !noalias !373 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store <2 x ptr> <ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE>, ptr %i.w, align 8, !tbaa !49
  store <2 x ptr> <ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE>, ptr %i.aa, align 8, !tbaa !49
  store i8 0, ptr %i.ac, align 8, !tbaa !55
  store i64 -1, ptr %i.ad, align 8, !tbaa !56
  store i8 0, ptr %i.ae, align 8, !tbaa !57
  store ptr %i.au, ptr %i.af, align 8, !tbaa !45
  store ptr %i.av, ptr %i.ag, align 8, !tbaa !46
  store <2 x ptr> <ptr @.str.21, ptr getelementptr inbounds nuw (i8, ptr @.str.21, i64 1)>, ptr %i.y, align 8, !tbaa !49
  store i32 0, ptr %i.z, align 8, !tbaa !58
  store i32 3, ptr %i.ab, align 8, !tbaa !58
  store i8 1, ptr %13, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %i.au, ptr %i.b, align 8, !tbaa !49
  %i.aw = invoke noundef zeroext i1 @_ZN5boost9unit_test5utils19token_iterator_baseINS1_27basic_string_token_iteratorIcNS1_9ut_detail20default_char_compareIcEEEEcS6_NS0_13basic_cstringIKcEESA_NS_9iterators21forward_traversal_tagEE3getIPS9_EEbRT_SG_(ptr noundef nonnull align 8 dereferenceable(112) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.av)
          to label %.noexc32 unwind label %.loopexit.split-lp66.loopexit ; 2 uses

.noexc32:                                         ; preds = %_ZN5boost9unit_test13basic_cstringIKcEC2EPS2_.exit.i.i.i
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !49
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ay = zext i1 %i.aw to i8
  store i8 %i.ay, ptr %13, align 8, !tbaa !59
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr @.str.39, ptr %12, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.39, i64 28), ptr %i.az, align 8, !tbaa !46
  invoke void @_ZN5boost9unit_test9framework11setup_errorC2ENS0_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dead_on_return %12)
          to label %.noexc33 unwind label %.loopexit.split-lp66.loopexit.split-lp

.noexc33:                                         ; preds = %bb.e
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS0_9framework11setup_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc33
  unreachable

bb.g:                                             ; preds = %.noexc33
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.body

.lr.ph.i:                                         ; preds = %.noexc32, %.noexc39
  %.2115.i = phi i1 [ %24, %.noexc39 ], [ %.031118.i, %.noexc32 ] ; 2 uses
  %i.bb = load ptr, ptr %i.w, align 8, !tbaa !45, !noalias !374 ; 4 uses
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !46, !noalias !374 ; 9 uses
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !60  ; 2 uses
  switch i8 %i.bd, label %.thread.i [
    i8 33, label %bb.h
    i8 43, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 4 uses
  %.not.i.not.i = icmp ugt ptr %i.bc, %i.be
  br i1 %.not.i.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store ptr @.str.39, ptr %15, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.39, i64 28), ptr %i.bf, align 8, !tbaa !46
  invoke void @_ZN5boost9unit_test9framework11setup_errorC2ENS0_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dead_on_return %15)
          to label %.noexc34 unwind label %.loopexit.split-lp66.loopexit.split-lp

.noexc34:                                         ; preds = %bb.i
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS0_9framework11setup_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %14) #25
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc34
  unreachable

bb.k:                                             ; preds = %.noexc34
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body

bb.l:                                             ; preds = %bb.h
  %.not.i = icmp eq i8 %i.bd, 43
  br i1 %.not.i, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %bb.l, %.lr.ph.i
  %22 = phi i1 [ %.2115.i, %bb.l ], [ true, %.lr.ph.i ]
  %.sroa.057.0103.i = phi ptr [ %i.be, %bb.l ], [ %i.bb, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.bh = load i8, ptr %.sroa.057.0103.i, align 1, !tbaa !60
  %i.bi = icmp eq i8 %i.bh, 64
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.057.0103.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp ugt ptr %i.bc, %i.bj
  %spec.store.select.i.i.i = select i1 %.not.i.i.i, ptr %i.bj, ptr %i.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bk = insertelement <4 x ptr> %i.aq, ptr %spec.store.select.i.i.i, i64 2
  %i.bl = insertelement <4 x ptr> %i.bk, ptr %i.bc, i64 3
  store <4 x ptr> %i.bl, ptr %7, align 8
  invoke void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext true)
          to label %.noexc35 unwind label %.loopexit65

.noexc35:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit.i

bb.n:                                             ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %.sroa.057.0103.i, ptr %9, align 8, !tbaa !45
  store ptr %i.bc, ptr %i.al, align 8, !tbaa !46
  invoke void @_ZN5boost9unit_test9framework4impl11name_filterC2ERSt6vectorImSaImEENS0_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(44) %8, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dead_on_return %9)
          to label %.noexc36 unwind label %.loopexit65

.noexc36:                                         ; preds = %bb.n
  invoke void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %.noexc36
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test9framework4impl11name_filterE, i64 16), ptr %8, align 8, !tbaa !62
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !65 ; 3 uses
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !66 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bu, %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.bm, %bb.o ] ; 3 uses
  %i.bo = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !70
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #26, !inline_history !71
  br label %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bn
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.o
  %i.bv = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.bm, %bb.o ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %i.bw = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #26, !inline_history !71
  br label %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i.i

_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i.i: ; preds = %bb.q, %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit.i

bb.r:                                             ; preds = %.noexc36
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9unit_test9framework4impl11name_filterD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body

_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit.i: ; preds = %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i.i, %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.z

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cb = load i8, ptr %i.be, align 1, !tbaa !60
  %i.cc = icmp eq i8 %i.cb, 64
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 2 uses
  %.not.i.i49.i = icmp ugt ptr %i.bc, %i.cd
  %spec.store.select.i.i50.i = select i1 %.not.i.i49.i, ptr %i.cd, ptr %i.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ce = insertelement <4 x ptr> %i.ap, ptr %spec.store.select.i.i50.i, i64 2
  %i.cf = insertelement <4 x ptr> %i.ce, ptr %i.bc, i64 3
  store <4 x ptr> %i.cf, ptr %4, align 8
  invoke void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true)
          to label %.noexc37 unwind label %.loopexit65

.noexc37:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit51.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.be, ptr %6, align 8, !tbaa !45
  store ptr %i.bc, ptr %i.ah, align 8, !tbaa !46
  invoke void @_ZN5boost9unit_test9framework4impl11name_filterC2ERSt6vectorImSaImEENS0_13basic_cstringIKcEE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dead_on_return %6)
          to label %.noexc38 unwind label %.loopexit65

.noexc38:                                         ; preds = %bb.u
  invoke void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %.noexc38
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test9framework4impl11name_filterE, i64 16), ptr %5, align 8, !tbaa !62
  %i.cg = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 3 uses
  %i.ch = load ptr, ptr %i.aj, align 8, !tbaa !66 ; 2 uses
  %.not4.i.i.i.i.i38.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not4.i.i.i.i.i38.i, label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i46.i, label %.lr.ph.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i39.i:                             ; preds = %bb.v, %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i
  %.05.i.i.i.i.i40.i = phi ptr [ %i.co, %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i ], [ %i.cg, %bb.v ] ; 3 uses
  %i.ci = load ptr, ptr %.05.i.i.i.i.i40.i, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i41.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i.i.i41.i, label %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i39.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i40.i, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !70
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #26, !inline_history !71
  br label %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i

_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i: ; preds = %bb.w, %.lr.ph.i.i.i.i.i39.i
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i40.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i43.i = icmp eq ptr %i.co, %i.ch
  br i1 %.not.i.i.i.i.i43.i, label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i44.i, label %.lr.ph.i.i.i.i.i39.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i44.i: ; preds = %_ZSt8_DestroyISt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EEEvPT_.exit.i.i.i.i.i42.i
  %.pr.i.i.i45.i = load ptr, ptr %i.ai, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i46.i

_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i46.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i44.i, %bb.v
  %i.cp = phi ptr [ %.pr.i.i.i45.i, %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i44.i ], [ %i.cg, %bb.v ] ; 3 uses
  %.not.i.i1.i.i.i47.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i1.i.i.i47.i, label %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i48.i, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i46.i
  %i.cq = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ct) #26, !inline_history !71
  br label %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i48.i

_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i48.i: ; preds = %bb.x, %_ZSt8_DestroyIPSt6vectorIN5boost9unit_test9framework4impl11name_filter9componentESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit51.i

bb.y:                                             ; preds = %.noexc38
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9unit_test9framework4impl11name_filterD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit51.i: ; preds = %_ZN5boost9unit_test9framework4impl11name_filterD2Ev.exit.i48.i, %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.z

bb.z:                                             ; preds = %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit51.i, %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit.i
  %23 = phi i1 [ %.2115.i, %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit51.i ], [ %22, %_ZN5boost9unit_test9framework4implL23add_filtered_test_unitsEmNS0_13basic_cstringIKcEERSt6vectorImSaImEE.exit.i ]
  %24 = freeze i1 %23                             ; 3 uses
  %i.cv = load i8, ptr %13, align 8, !tbaa !59, !range !74, !noundef !75
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.i, label %._crit_edge.i

_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.i: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.cx = load ptr, ptr %i.af, align 8, !tbaa !45
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !49
  %i.cy = load ptr, ptr %i.ag, align 8, !tbaa !46
  %i.cz = invoke noundef zeroext i1 @_ZN5boost9unit_test5utils19token_iterator_baseINS1_27basic_string_token_iteratorIcNS1_9ut_detail20default_char_compareIcEEEEcS6_NS0_13basic_cstringIKcEESA_NS_9iterators21forward_traversal_tagEE3getIPS9_EEbRT_SG_(ptr noundef nonnull align 8 dereferenceable(112) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.cy)
          to label %.noexc39 unwind label %.loopexit65 ; 2 uses

.noexc39:                                         ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.i
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.da, ptr %i.af, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.db = zext i1 %i.cz to i8
  store i8 %i.db, ptr %13, align 8, !tbaa !59
  br i1 %i.cz, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !368

._crit_edge.i:                                    ; preds = %.noexc39, %bb.z, %.noexc32
  %.2.lcssa.i = phi i1 [ %.031118.i, %.noexc32 ], [ %24, %bb.z ], [ %24, %.noexc39 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.096.0117.i, i64 32 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.u
  br i1 %i.dd, label %bb.aa, label %bb.d, !llvm.loop !369

bb.aa:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %spec.select = select i1 %.2.lcssa.i, i32 0, i32 3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread60, %.thread
  %i.de = phi i32 [ 3, %.thread60 ], [ %spec.select, %bb.aa ], [ 3, %.thread ]
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test9framework4impl14set_run_statusE, i64 16), ptr %19, align 8, !tbaa !62
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %i.de, ptr %i.df, align 8, !tbaa !80
  %i.dg = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr null, ptr %i.dg, align 8, !tbaa !81
  invoke void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %19, i1 noundef zeroext true)
          to label %.preheader64 unwind label %bb.ae

.preheader64:                                     ; preds = %bb.ab
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.di = load ptr, ptr %17, align 8, !tbaa !83
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !83 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader64
  %i.dl = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %bb.ac

.preheader:                                       ; preds = %bb.ax, %.preheader64
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.do = load ptr, ptr %18, align 8, !tbaa !83
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !83 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %._crit_edge, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader
  %i.dr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %21, i64 16
  br label %bb.ay

bb.ac:                                            ; preds = %.lr.ph, %bb.ax
  %i.dt = phi ptr [ %i.dj, %.lr.ph ], [ %i.ft, %bb.ax ]
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !37
  %i.dw = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZN5boost9unit_test9framework3getEmNS0_14test_unit_typeE(i64 noundef %i.dv, i32 noundef 17)
          to label %bb.ad unwind label %bb.af     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dx = load ptr, ptr %i.dh, align 8, !tbaa !85
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8 ; 2 uses
  store ptr %i.dy, ptr %i.dh, align 8, !tbaa !85
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 220
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !86
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %bb.ax, label %bb.ag, !llvm.loop !370

.loopexit65:                                      ; preds = %bb.m, %bb.n, %bb.t, %bb.u, %_ZN5boost9iterators6detail20iterator_facade_baseINS_9unit_test5utils27basic_string_token_iteratorIcNS4_9ut_detail20default_char_compareIcEEEENS3_13basic_cstringIKcEENS0_21forward_traversal_tagESC_lLb0ELb0EEppEv.exit.i
  %lpad.loopexit67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp66.loopexit:                    ; preds = %_ZN5boost9unit_test13basic_cstringIKcEC2EPS2_.exit.i.i.i
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp66.loopexit.split-lp:           ; preds = %bb.i, %bb.e, %.noexc30, %bb.c, %.noexc, %bb.a
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %._crit_edge, %bb.ab
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.af:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test9framework4impl14set_run_statusE, i64 16), ptr %20, align 8, !tbaa !62
  store i32 1, ptr %i.dl, align 8, !tbaa !80
  store ptr %17, ptr %i.dm, align 8, !tbaa !81
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !37
  invoke void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %i.ef, ptr noundef nonnull align 8 dereferenceable(8) %20, i1 noundef zeroext true)
          to label %.preheader63 unwind label %bb.av

.preheader63:                                     ; preds = %bb.ag, %bb.au
  %.pn = phi ptr [ %i.fm, %bb.au ], [ %i.dw, %bb.ag ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 56
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !37  ; 5 uses
  %i.eg = icmp ne i64 %.0, 4294967295
  %i.eh = icmp ne i64 %.0, %1
  %i.ei = and i1 %i.eg, %i.eh
  br i1 %i.ei, label %bb.ah, label %bb.aw

bb.ah:                                            ; preds = %.preheader63
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ej = load atomic i8, ptr @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst acquire, align 8
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.ai, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, !prof !35

bb.ai:                                            ; preds = %bb.ah
  %i.el = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  %.not.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i, label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN5boost9unit_test9framework5stateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.em = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test9framework5stateD2Ev, ptr nonnull @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst) #24
  br label %.body43

_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i: ; preds = %bb.ak, %bb.ai, %bb.ah
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 56), align 8, !tbaa !91 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.eo, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !37
  %i.er = icmp ult i64 %i.eq, %.0                 ; 2 uses
  %.19.i.i.i.i = select i1 %i.er, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.er, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.es = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  br i1 %i.es, label %.critedge.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !37
  %i.ev = icmp ult i64 %.0, %i.eu
  br i1 %i.ev, label %.critedge.i, label %.noexc45

.critedge.i:                                      ; preds = %bb.am, %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.am ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZNSt3mapImPN5boost9unit_test9test_unitESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48), %_ZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEv.exit.i ]
  %i.ew = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %.noexc55 unwind label %.loopexit ; 6 uses

.noexc55:                                         ; preds = %.critedge.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 3 uses
  store i64 %.0, ptr %i.ex, align 8, !tbaa !95
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store ptr null, ptr %i.ey, align 8, !tbaa !96
  %i.ez = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 40), ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ex)
          to label %bb.an unwind label %_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.an:                                            ; preds = %.noexc55
  %i.fa = extractvalue { ptr, ptr } %i.ez, 0      ; 2 uses
  %i.fb = extractvalue { ptr, ptr } %i.ez, 1      ; 4 uses
  %.not.i.i54 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i54, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i4.i = icmp ne ptr %i.fa, null
  %i.fc = icmp eq ptr %i.fb, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.fc
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fe = load i64, ptr %i.ex, align 8, !tbaa !37
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !37
  %i.fg = icmp ult i64 %i.fe, %i.ff
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ap, %bb.ao
  %i.fh = phi i1 [ %i.fg, %bb.ap ], [ true, %bb.ao ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fh, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.fb, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 48)) #24
  %i.fi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test9framework4impl12_GLOBAL__N_111s_frk_stateEvE8the_inst, i64 80), align 8, !tbaa !97
  br label %.noexc45

_ZNSt8_Rb_treeImSt4pairIKmPN5boost9unit_test9test_unitEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc55
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef 48) #26
  br label %.body43

bb.aq:                                            ; preds = %bb.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef 48) #26
  br label %.noexc45

end_hunk_0
