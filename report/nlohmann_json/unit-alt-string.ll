Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-alt-string?download=true
inline.NumInlined: 5792
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 62
begin_hunk_0
@.str.90 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.92 = private unnamed_addr constant [51 x i8] c"cannot use operator[] with a string argument with \00", align 1
@_ZTIN8nlohmann16json_abi_v3_12_06detail10type_errorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8nlohmann16json_abi_v3_12_06detail10type_errorE, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail9exceptionE }, comdat, align 8
@_ZTSN8nlohmann16json_abi_v3_12_06detail10type_errorE = linkonce_odr dso_local constant [49 x i8] c"N8nlohmann16json_abi_v3_12_06detail10type_errorE\00", comdat, align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"type_error\00", align 1
@_ZTVN8nlohmann16json_abi_v3_12_06detail10type_errorE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail10type_errorE, ptr @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_06detail10type_errorD0Ev, ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9exception4whatEv] }, comdat, align 8
@.str.94 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"discarded\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [138 x i8] c"St23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEE, ptr @_ZN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringE15write_characterEc, ptr @_ZN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringE16write_charactersEPKcm, ptr @_ZN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringED0Ev] }, comdat, align 8
@_ZTIN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEE, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEE }, comdat, align 8
@_ZTSN8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEE = linkonce_odr dso_local constant [75 x i8] c"N8nlohmann16json_abi_v3_12_06detail21output_string_adapterIc10alt_stringEE\00", comdat, align 1
@_ZTIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEE }, comdat, align 8
@_ZTSN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEE = linkonce_odr dso_local constant [65 x i8] c"N8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"\22: \00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"\22:\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"\22bytes\22: [\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"],\0A\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"\22subtype\22: \00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"{\22bytes\22:[\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"],\22subtype\22:\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"null}\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"<discarded>\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"\\u%04x\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"\\u%04x\\u%04x\00", align 1
@.str.119 = private unnamed_addr constant [29 x i8] c"invalid UTF-8 byte at index \00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c": 0x\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"incomplete UTF-8 string; last byte: 0x\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"\\ufffd\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"\EF\BF\BD\00", align 1
@_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjhE5utf8d = linkonce_odr dso_local local_unnamed_addr constant %"struct.std::array.85" { [400 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08\00\01\02\03\05\08\07\01\01\01\04\06\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01\01\00\01\00\01\01\01\01\01\01\01\02\01\01\01\01\01\02\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\03\01\03\01\01\01\01\01\01\01\03\01\01\01\01\01\03\01\03\01\01\01\01\01\01\01\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01" }, comdat, align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIhTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISE_mEE5valuesr3std7is_sameISE_lEE5valuesr3std7is_sameISE_hEE5valueEiE4typeELi0EEEvSE_E12digits_to_99 = linkonce_odr dso_local local_unnamed_addr constant %"struct.std::array.86" { [100 x %"struct.std::array.87"] [%"struct.std::array.87" { [2 x i8] c"00" }, %"struct.std::array.87" { [2 x i8] c"01" }, %"struct.std::array.87" { [2 x i8] c"02" }, %"struct.std::array.87" { [2 x i8] c"03" }, %"struct.std::array.87" { [2 x i8] c"04" }, %"struct.std::array.87" { [2 x i8] c"05" }, %"struct.std::array.87" { [2 x i8] c"06" }, %"struct.std::array.87" { [2 x i8] c"07" }, %"struct.std::array.87" { [2 x i8] c"08" }, %"struct.std::array.87" { [2 x i8] c"09" }, %"struct.std::array.87" { [2 x i8] c"10" }, %"struct.std::array.87" { [2 x i8] c"11" }, %"struct.std::array.87" { [2 x i8] c"12" }, %"struct.std::array.87" { [2 x i8] c"13" }, %"struct.std::array.87" { [2 x i8] c"14" }, %"struct.std::array.87" { [2 x i8] c"15" }, %"struct.std::array.87" { [2 x i8] c"16" }, %"struct.std::array.87" { [2 x i8] c"17" }, %"struct.std::array.87" { [2 x i8] c"18" }, %"struct.std::array.87" { [2 x i8] c"19" }, %"struct.std::array.87" { [2 x i8] c"20" }, %"struct.std::array.87" { [2 x i8] c"21" }, %"struct.std::array.87" { [2 x i8] c"22" }, %"struct.std::array.87" { [2 x i8] c"23" }, %"struct.std::array.87" { [2 x i8] c"24" }, %"struct.std::array.87" { [2 x i8] c"25" }, %"struct.std::array.87" { [2 x i8] c"26" }, %"struct.std::array.87" { [2 x i8] c"27" }, %"struct.std::array.87" { [2 x i8] c"28" }, %"struct.std::array.87" { [2 x i8] c"29" }, %"struct.std::array.87" { [2 x i8] c"30" }, %"struct.std::array.87" { [2 x i8] c"31" }, %"struct.std::array.87" { [2 x i8] c"32" }, %"struct.std::array.87" { [2 x i8] c"33" }, %"struct.std::array.87" { [2 x i8] c"34" }, %"struct.std::array.87" { [2 x i8] c"35" }, %"struct.std::array.87" { [2 x i8] c"36" }, %"struct.std::array.87" { [2 x i8] c"37" }, %"struct.std::array.87" { [2 x i8] c"38" }, %"struct.std::array.87" { [2 x i8] c"39" }, %"struct.std::array.87" { [2 x i8] c"40" }, %"struct.std::array.87" { [2 x i8] c"41" }, %"struct.std::array.87" { [2 x i8] c"42" }, %"struct.std::array.87" { [2 x i8] c"43" }, %"struct.std::array.87" { [2 x i8] c"44" }, %"struct.std::array.87" { [2 x i8] c"45" }, %"struct.std::array.87" { [2 x i8] c"46" }, %"struct.std::array.87" { [2 x i8] c"47" }, %"struct.std::array.87" { [2 x i8] c"48" }, %"struct.std::array.87" { [2 x i8] c"49" }, %"struct.std::array.87" { [2 x i8] c"50" }, %"struct.std::array.87" { [2 x i8] c"51" }, %"struct.std::array.87" { [2 x i8] c"52" }, %"struct.std::array.87" { [2 x i8] c"53" }, %"struct.std::array.87" { [2 x i8] c"54" }, %"struct.std::array.87" { [2 x i8] c"55" }, %"struct.std::array.87" { [2 x i8] c"56" }, %"struct.std::array.87" { [2 x i8] c"57" }, %"struct.std::array.87" { [2 x i8] c"58" }, %"struct.std::array.87" { [2 x i8] c"59" }, %"struct.std::array.87" { [2 x i8] c"60" }, %"struct.std::array.87" { [2 x i8] c"61" }, %"struct.std::array.87" { [2 x i8] c"62" }, %"struct.std::array.87" { [2 x i8] c"63" }, %"struct.std::array.87" { [2 x i8] c"64" }, %"struct.std::array.87" { [2 x i8] c"65" }, %"struct.std::array.87" { [2 x i8] c"66" }, %"struct.std::array.87" { [2 x i8] c"67" }, %"struct.std::array.87" { [2 x i8] c"68" }, %"struct.std::array.87" { [2 x i8] c"69" }, %"struct.std::array.87" { [2 x i8] c"70" }, %"struct.std::array.87" { [2 x i8] c"71" }, %"struct.std::array.87" { [2 x i8] c"72" }, %"struct.std::array.87" { [2 x i8] c"73" }, %"struct.std::array.87" { [2 x i8] c"74" }, %"struct.std::array.87" { [2 x i8] c"75" }, %"struct.std::array.87" { [2 x i8] c"76" }, %"struct.std::array.87" { [2 x i8] c"77" }, %"struct.std::array.87" { [2 x i8] c"78" }, %"struct.std::array.87" { [2 x i8] c"79" }, %"struct.std::array.87" { [2 x i8] c"80" }, %"struct.std::array.87" { [2 x i8] c"81" }, %"struct.std::array.87" { [2 x i8] c"82" }, %"struct.std::array.87" { [2 x i8] c"83" }, %"struct.std::array.87" { [2 x i8] c"84" }, %"struct.std::array.87" { [2 x i8] c"85" }, %"struct.std::array.87" { [2 x i8] c"86" }, %"struct.std::array.87" { [2 x i8] c"87" }, %"struct.std::array.87" { [2 x i8] c"88" }, %"struct.std::array.87" { [2 x i8] c"89" }, %"struct.std::array.87" { [2 x i8] c"90" }, %"struct.std::array.87" { [2 x i8] c"91" }, %"struct.std::array.87" { [2 x i8] c"92" }, %"struct.std::array.87" { [2 x i8] c"93" }, %"struct.std::array.87" { [2 x i8] c"94" }, %"struct.std::array.87" { [2 x i8] c"95" }, %"struct.std::array.87" { [2 x i8] c"96" }, %"struct.std::array.87" { [2 x i8] c"97" }, %"struct.std::array.87" { [2 x i8] c"98" }, %"struct.std::array.87" { [2 x i8] c"99" }] }, comdat, align 1
@_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerImTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISE_mEE5valuesr3std7is_sameISE_lEE5valuesr3std7is_sameISE_hEE5valueEiE4typeELi0EEEvSE_E12digits_to_99 = linkonce_odr dso_local local_unnamed_addr constant %"struct.std::array.86" { [100 x %"struct.std::array.87"] [%"struct.std::array.87" { [2 x i8] c"00" }, %"struct.std::array.87" { [2 x i8] c"01" }, %"struct.std::array.87" { [2 x i8] c"02" }, %"struct.std::array.87" { [2 x i8] c"03" }, %"struct.std::array.87" { [2 x i8] c"04" }, %"struct.std::array.87" { [2 x i8] c"05" }, %"struct.std::array.87" { [2 x i8] c"06" }, %"struct.std::array.87" { [2 x i8] c"07" }, %"struct.std::array.87" { [2 x i8] c"08" }, %"struct.std::array.87" { [2 x i8] c"09" }, %"struct.std::array.87" { [2 x i8] c"10" }, %"struct.std::array.87" { [2 x i8] c"11" }, %"struct.std::array.87" { [2 x i8] c"12" }, %"struct.std::array.87" { [2 x i8] c"13" }, %"struct.std::array.87" { [2 x i8] c"14" }, %"struct.std::array.87" { [2 x i8] c"15" }, %"struct.std::array.87" { [2 x i8] c"16" }, %"struct.std::array.87" { [2 x i8] c"17" }, %"struct.std::array.87" { [2 x i8] c"18" }, %"struct.std::array.87" { [2 x i8] c"19" }, %"struct.std::array.87" { [2 x i8] c"20" }, %"struct.std::array.87" { [2 x i8] c"21" }, %"struct.std::array.87" { [2 x i8] c"22" }, %"struct.std::array.87" { [2 x i8] c"23" }, %"struct.std::array.87" { [2 x i8] c"24" }, %"struct.std::array.87" { [2 x i8] c"25" }, %"struct.std::array.87" { [2 x i8] c"26" }, %"struct.std::array.87" { [2 x i8] c"27" }, %"struct.std::array.87" { [2 x i8] c"28" }, %"struct.std::array.87" { [2 x i8] c"29" }, %"struct.std::array.87" { [2 x i8] c"30" }, %"struct.std::array.87" { [2 x i8] c"31" }, %"struct.std::array.87" { [2 x i8] c"32" }, %"struct.std::array.87" { [2 x i8] c"33" }, %"struct.std::array.87" { [2 x i8] c"34" }, %"struct.std::array.87" { [2 x i8] c"35" }, %"struct.std::array.87" { [2 x i8] c"36" }, %"struct.std::array.87" { [2 x i8] c"37" }, %"struct.std::array.87" { [2 x i8] c"38" }, %"struct.std::array.87" { [2 x i8] c"39" }, %"struct.std::array.87" { [2 x i8] c"40" }, %"struct.std::array.87" { [2 x i8] c"41" }, %"struct.std::array.87" { [2 x i8] c"42" }, %"struct.std::array.87" { [2 x i8] c"43" }, %"struct.std::array.87" { [2 x i8] c"44" }, %"struct.std::array.87" { [2 x i8] c"45" }, %"struct.std::array.87" { [2 x i8] c"46" }, %"struct.std::array.87" { [2 x i8] c"47" }, %"struct.std::array.87" { [2 x i8] c"48" }, %"struct.std::array.87" { [2 x i8] c"49" }, %"struct.std::array.87" { [2 x i8] c"50" }, %"struct.std::array.87" { [2 x i8] c"51" }, %"struct.std::array.87" { [2 x i8] c"52" }, %"struct.std::array.87" { [2 x i8] c"53" }, %"struct.std::array.87" { [2 x i8] c"54" }, %"struct.std::array.87" { [2 x i8] c"55" }, %"struct.std::array.87" { [2 x i8] c"56" }, %"struct.std::array.87" { [2 x i8] c"57" }, %"struct.std::array.87" { [2 x i8] c"58" }, %"struct.std::array.87" { [2 x i8] c"59" }, %"struct.std::array.87" { [2 x i8] c"60" }, %"struct.std::array.87" { [2 x i8] c"61" }, %"struct.std::array.87" { [2 x i8] c"62" }, %"struct.std::array.87" { [2 x i8] c"63" }, %"struct.std::array.87" { [2 x i8] c"64" }, %"struct.std::array.87" { [2 x i8] c"65" }, %"struct.std::array.87" { [2 x i8] c"66" }, %"struct.std::array.87" { [2 x i8] c"67" }, %"struct.std::array.87" { [2 x i8] c"68" }, %"struct.std::array.87" { [2 x i8] c"69" }, %"struct.std::array.87" { [2 x i8] c"70" }, %"struct.std::array.87" { [2 x i8] c"71" }, %"struct.std::array.87" { [2 x i8] c"72" }, %"struct.std::array.87" { [2 x i8] c"73" }, %"struct.std::array.87" { [2 x i8] c"74" }, %"struct.std::array.87" { [2 x i8] c"75" }, %"struct.std::array.87" { [2 x i8] c"76" }, %"struct.std::array.87" { [2 x i8] c"77" }, %"struct.std::array.87" { [2 x i8] c"78" }, %"struct.std::array.87" { [2 x i8] c"79" }, %"struct.std::array.87" { [2 x i8] c"80" }, %"struct.std::array.87" { [2 x i8] c"81" }, %"struct.std::array.87" { [2 x i8] c"82" }, %"struct.std::array.87" { [2 x i8] c"83" }, %"struct.std::array.87" { [2 x i8] c"84" }, %"struct.std::array.87" { [2 x i8] c"85" }, %"struct.std::array.87" { [2 x i8] c"86" }, %"struct.std::array.87" { [2 x i8] c"87" }, %"struct.std::array.87" { [2 x i8] c"88" }, %"struct.std::array.87" { [2 x i8] c"89" }, %"struct.std::array.87" { [2 x i8] c"90" }, %"struct.std::array.87" { [2 x i8] c"91" }, %"struct.std::array.87" { [2 x i8] c"92" }, %"struct.std::array.87" { [2 x i8] c"93" }, %"struct.std::array.87" { [2 x i8] c"94" }, %"struct.std::array.87" { [2 x i8] c"95" }, %"struct.std::array.87" { [2 x i8] c"96" }, %"struct.std::array.87" { [2 x i8] c"97" }, %"struct.std::array.87" { [2 x i8] c"98" }, %"struct.std::array.87" { [2 x i8] c"99" }] }, comdat, align 1
@_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIlTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISE_mEE5valuesr3std7is_sameISE_lEE5valuesr3std7is_sameISE_hEE5valueEiE4typeELi0EEEvSE_E12digits_to_99 = linkonce_odr dso_local local_unnamed_addr constant %"struct.std::array.86" { [100 x %"struct.std::array.87"] [%"struct.std::array.87" { [2 x i8] c"00" }, %"struct.std::array.87" { [2 x i8] c"01" }, %"struct.std::array.87" { [2 x i8] c"02" }, %"struct.std::array.87" { [2 x i8] c"03" }, %"struct.std::array.87" { [2 x i8] c"04" }, %"struct.std::array.87" { [2 x i8] c"05" }, %"struct.std::array.87" { [2 x i8] c"06" }, %"struct.std::array.87" { [2 x i8] c"07" }, %"struct.std::array.87" { [2 x i8] c"08" }, %"struct.std::array.87" { [2 x i8] c"09" }, %"struct.std::array.87" { [2 x i8] c"10" }, %"struct.std::array.87" { [2 x i8] c"11" }, %"struct.std::array.87" { [2 x i8] c"12" }, %"struct.std::array.87" { [2 x i8] c"13" }, %"struct.std::array.87" { [2 x i8] c"14" }, %"struct.std::array.87" { [2 x i8] c"15" }, %"struct.std::array.87" { [2 x i8] c"16" }, %"struct.std::array.87" { [2 x i8] c"17" }, %"struct.std::array.87" { [2 x i8] c"18" }, %"struct.std::array.87" { [2 x i8] c"19" }, %"struct.std::array.87" { [2 x i8] c"20" }, %"struct.std::array.87" { [2 x i8] c"21" }, %"struct.std::array.87" { [2 x i8] c"22" }, %"struct.std::array.87" { [2 x i8] c"23" }, %"struct.std::array.87" { [2 x i8] c"24" }, %"struct.std::array.87" { [2 x i8] c"25" }, %"struct.std::array.87" { [2 x i8] c"26" }, %"struct.std::array.87" { [2 x i8] c"27" }, %"struct.std::array.87" { [2 x i8] c"28" }, %"struct.std::array.87" { [2 x i8] c"29" }, %"struct.std::array.87" { [2 x i8] c"30" }, %"struct.std::array.87" { [2 x i8] c"31" }, %"struct.std::array.87" { [2 x i8] c"32" }, %"struct.std::array.87" { [2 x i8] c"33" }, %"struct.std::array.87" { [2 x i8] c"34" }, %"struct.std::array.87" { [2 x i8] c"35" }, %"struct.std::array.87" { [2 x i8] c"36" }, %"struct.std::array.87" { [2 x i8] c"37" }, %"struct.std::array.87" { [2 x i8] c"38" }, %"struct.std::array.87" { [2 x i8] c"39" }, %"struct.std::array.87" { [2 x i8] c"40" }, %"struct.std::array.87" { [2 x i8] c"41" }, %"struct.std::array.87" { [2 x i8] c"42" }, %"struct.std::array.87" { [2 x i8] c"43" }, %"struct.std::array.87" { [2 x i8] c"44" }, %"struct.std::array.87" { [2 x i8] c"45" }, %"struct.std::array.87" { [2 x i8] c"46" }, %"struct.std::array.87" { [2 x i8] c"47" }, %"struct.std::array.87" { [2 x i8] c"48" }, %"struct.std::array.87" { [2 x i8] c"49" }, %"struct.std::array.87" { [2 x i8] c"50" }, %"struct.std::array.87" { [2 x i8] c"51" }, %"struct.std::array.87" { [2 x i8] c"52" }, %"struct.std::array.87" { [2 x i8] c"53" }, %"struct.std::array.87" { [2 x i8] c"54" }, %"struct.std::array.87" { [2 x i8] c"55" }, %"struct.std::array.87" { [2 x i8] c"56" }, %"struct.std::array.87" { [2 x i8] c"57" }, %"struct.std::array.87" { [2 x i8] c"58" }, %"struct.std::array.87" { [2 x i8] c"59" }, %"struct.std::array.87" { [2 x i8] c"60" }, %"struct.std::array.87" { [2 x i8] c"61" }, %"struct.std::array.87" { [2 x i8] c"62" }, %"struct.std::array.87" { [2 x i8] c"63" }, %"struct.std::array.87" { [2 x i8] c"64" }, %"struct.std::array.87" { [2 x i8] c"65" }, %"struct.std::array.87" { [2 x i8] c"66" }, %"struct.std::array.87" { [2 x i8] c"67" }, %"struct.std::array.87" { [2 x i8] c"68" }, %"struct.std::array.87" { [2 x i8] c"69" }, %"struct.std::array.87" { [2 x i8] c"70" }, %"struct.std::array.87" { [2 x i8] c"71" }, %"struct.std::array.87" { [2 x i8] c"72" }, %"struct.std::array.87" { [2 x i8] c"73" }, %"struct.std::array.87" { [2 x i8] c"74" }, %"struct.std::array.87" { [2 x i8] c"75" }, %"struct.std::array.87" { [2 x i8] c"76" }, %"struct.std::array.87" { [2 x i8] c"77" }, %"struct.std::array.87" { [2 x i8] c"78" }, %"struct.std::array.87" { [2 x i8] c"79" }, %"struct.std::array.87" { [2 x i8] c"80" }, %"struct.std::array.87" { [2 x i8] c"81" }, %"struct.std::array.87" { [2 x i8] c"82" }, %"struct.std::array.87" { [2 x i8] c"83" }, %"struct.std::array.87" { [2 x i8] c"84" }, %"struct.std::array.87" { [2 x i8] c"85" }, %"struct.std::array.87" { [2 x i8] c"86" }, %"struct.std::array.87" { [2 x i8] c"87" }, %"struct.std::array.87" { [2 x i8] c"88" }, %"struct.std::array.87" { [2 x i8] c"89" }, %"struct.std::array.87" { [2 x i8] c"90" }, %"struct.std::array.87" { [2 x i8] c"91" }, %"struct.std::array.87" { [2 x i8] c"92" }, %"struct.std::array.87" { [2 x i8] c"93" }, %"struct.std::array.87" { [2 x i8] c"94" }, %"struct.std::array.87" { [2 x i8] c"95" }, %"struct.std::array.87" { [2 x i8] c"96" }, %"struct.std::array.87" { [2 x i8] c"97" }, %"struct.std::array.87" { [2 x i8] c"98" }, %"struct.std::array.87" { [2 x i8] c"99" }] }, comdat, align 1
@_ZZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl36get_cached_power_for_binary_exponentEiE13kCachedPowers = linkonce_odr dso_local local_unnamed_addr constant %"struct.std::array.89" { [79 x %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power"] [%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -6093090917745768758, i32 -1060, i32 -300 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -38366372719436721, i32 -1034, i32 -292 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -4731433901725329908, i32 -1007, i32 -284 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8228041688891786180, i32 -980, i32 -276 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -3219690930897053053, i32 -954, i32 -268 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -7101705404292871755, i32 -927, i32 -260 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -1541319077368263733, i32 -901, i32 -252 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -5851220927660403859, i32 -874, i32 -244 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -9062348037703676329, i32 -847, i32 -236 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -4462904269766699465, i32 -821, i32 -228 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8027971522334779313, i32 -794, i32 -220 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -2921563150702462265, i32 -768, i32 -212 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -6879582898840692748, i32 -741, i32 -204 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -1210330751515841307, i32 -715, i32 -196 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -5604615407819967858, i32 -688, i32 -188 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8878612607581929669, i32 -661, i32 -180 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -4189117143640191558, i32 -635, i32 -172 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -7823984217374209642, i32 -608, i32 -164 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -2617598379430861436, i32 -582, i32 -156 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -6653111496142234890, i32 -555, i32 -148 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -872862063775190746, i32 -529, i32 -140 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -5353181642124984136, i32 -502, i32 -132 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8691279853972075893, i32 -475, i32 -124 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -3909969587797413805, i32 -449, i32 -116 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -7616003081050118571, i32 -422, i32 -108 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -2307682335666372931, i32 -396, i32 -100 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -6422206049907525489, i32 -369, i32 -92 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -528786136287117932, i32 -343, i32 -84 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -5096825099203863601, i32 -316, i32 -76 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8500279345513818773, i32 -289, i32 -68 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -3625356651333078602, i32 -263, i32 -60 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -7403949918844649556, i32 -236, i32 -52 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -1991698500497491194, i32 -210, i32 -44 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -6186779746782440749, i32 -183, i32 -36 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -177973607073265138, i32 -157, i32 -28 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -4835449396872013077, i32 -130, i32 -20 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8305539271883716404, i32 -103, i32 -12 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -3335171328526686932, i32 -77, i32 -4 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -7187745005283311616, i32 -50, i32 4 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -1669528073709551616, i32 -24, i32 12 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -5946744073709551616, i32 3, i32 20 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -9133518327554766460, i32 30, i32 28 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -4568956265895094861, i32 56, i32 36 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8106986416796705680, i32 83, i32 44 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -3039304518611664792, i32 109, i32 52 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -6967307053960650171, i32 136, i32 60 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -1341049929119499481, i32 162, i32 68 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -5702008784649933400, i32 189, i32 76 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8951176327949752869, i32 216, i32 84 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -4297245513042813542, i32 242, i32 92 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -7904546130479028392, i32 269, i32 100 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -2737644984756826646, i32 295, i32 108 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -6742553186979055798, i32 322, i32 116 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -1006140569036166267, i32 348, i32 124 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -5452481866653427593, i32 375, i32 132 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8765264286586255934, i32 402, i32 140 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -4020214983419339459, i32 428, i32 148 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -7698142301602209613, i32 455, i32 156 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -2430079312244744221, i32 481, i32 164 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -6513398903789220827, i32 508, i32 172 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -664674077828931748, i32 534, i32 180 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -5198069505264599346, i32 561, i32 188 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8575712306248138270, i32 588, i32 196 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -3737760522056206171, i32 614, i32 204 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -7487697328667536417, i32 641, i32 212 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -2116491865831296966, i32 667, i32 220 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -6279758049420528746, i32 694, i32 228 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -316522074587315140, i32 720, i32 236 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -4938676049251384304, i32 747, i32 244 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8382449121214030822, i32 774, i32 252 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -3449775934753242068, i32 800, i32 260 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -7273132090830278359, i32 827, i32 268 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -1796764746270372707, i32 853, i32 276 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -6041542782089432023, i32 880, i32 284 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -9204148869281624187, i32 907, i32 292 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -4674203974643163859, i32 933, i32 300 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -8185402070463610993, i32 960, i32 308 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -3156152948152813503, i32 986, i32 316 }, %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::cached_power" { i64 -7054365918152680535, i32 1013, i32 324 }] }, comdat, align 8
@.str.126 = private unnamed_addr constant [5 x i8] c" == \00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"{?}\00", align 1
@.str.128 = private unnamed_addr constant [43 x i8] c"cannot create object from initializer list\00", align 1
@.str.129 = private unnamed_addr constant [52 x i8] c"cannot use operator[] with a numeric argument with \00", align 1
@.str.130 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.131 = private unnamed_addr constant [45 x i8] c"invalid BOM; must be 0xEF 0xBB 0xBF if given\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"invalid literal\00", align 1
@.str.133 = private unnamed_addr constant [38 x i8] c"invalid comment; missing closing '*/'\00", align 1
@.str.134 = private unnamed_addr constant [48 x i8] c"invalid comment; expecting '/' or '*' after '/'\00", align 1
@.str.135 = private unnamed_addr constant [38 x i8] c"invalid string: missing closing quote\00", align 1
@.str.136 = private unnamed_addr constant [54 x i8] c"invalid string: '\\u' must be followed by 4 hex digits\00", align 1
@.str.137 = private unnamed_addr constant [76 x i8] c"invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF\00", align 1
@.str.138 = private unnamed_addr constant [68 x i8] c"invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF\00", align 1
@.str.139 = private unnamed_addr constant [52 x i8] c"invalid string: forbidden character after backslash\00", align 1
@.str.140 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0000 (NUL) must be escaped to \\u0000\00", align 1
@.str.141 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0001 (SOH) must be escaped to \\u0001\00", align 1
@.str.142 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0002 (STX) must be escaped to \\u0002\00", align 1
@.str.143 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0003 (ETX) must be escaped to \\u0003\00", align 1
@.str.144 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0004 (EOT) must be escaped to \\u0004\00", align 1
@.str.145 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0005 (ENQ) must be escaped to \\u0005\00", align 1
@.str.146 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0006 (ACK) must be escaped to \\u0006\00", align 1
@.str.147 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0007 (BEL) must be escaped to \\u0007\00", align 1
@.str.148 = private unnamed_addr constant [78 x i8] c"invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b\00", align 1
@.str.149 = private unnamed_addr constant [78 x i8] c"invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t\00", align 1
@.str.150 = private unnamed_addr constant [78 x i8] c"invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n\00", align 1
@.str.151 = private unnamed_addr constant [72 x i8] c"invalid string: control character U+000B (VT) must be escaped to \\u000B\00", align 1
@.str.152 = private unnamed_addr constant [78 x i8] c"invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f\00", align 1
@.str.153 = private unnamed_addr constant [78 x i8] c"invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r\00", align 1
@.str.154 = private unnamed_addr constant [72 x i8] c"invalid string: control character U+000E (SO) must be escaped to \\u000E\00", align 1
@.str.155 = private unnamed_addr constant [72 x i8] c"invalid string: control character U+000F (SI) must be escaped to \\u000F\00", align 1
@.str.156 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0010 (DLE) must be escaped to \\u0010\00", align 1
@.str.157 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0011 (DC1) must be escaped to \\u0011\00", align 1
@.str.158 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0012 (DC2) must be escaped to \\u0012\00", align 1
@.str.159 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0013 (DC3) must be escaped to \\u0013\00", align 1
@.str.160 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0014 (DC4) must be escaped to \\u0014\00", align 1
@.str.161 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0015 (NAK) must be escaped to \\u0015\00", align 1
@.str.162 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0016 (SYN) must be escaped to \\u0016\00", align 1
@.str.163 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0017 (ETB) must be escaped to \\u0017\00", align 1
@.str.164 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+0018 (CAN) must be escaped to \\u0018\00", align 1
@.str.165 = private unnamed_addr constant [72 x i8] c"invalid string: control character U+0019 (EM) must be escaped to \\u0019\00", align 1
@.str.166 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+001A (SUB) must be escaped to \\u001A\00", align 1
@.str.167 = private unnamed_addr constant [73 x i8] c"invalid string: control character U+001B (ESC) must be escaped to \\u001B\00", align 1
@.str.168 = private unnamed_addr constant [72 x i8] c"invalid string: control character U+001C (FS) must be escaped to \\u001C\00", align 1
@.str.169 = private unnamed_addr constant [72 x i8] c"invalid string: control character U+001D (GS) must be escaped to \\u001D\00", align 1
@.str.170 = private unnamed_addr constant [72 x i8] c"invalid string: control character U+001E (RS) must be escaped to \\u001E\00", align 1
@.str.171 = private unnamed_addr constant [72 x i8] c"invalid string: control character U+001F (US) must be escaped to \\u001F\00", align 1
@constinit = private unnamed_addr constant [6 x i32] [i32 144, i32 191, i32 128, i32 191, i32 128, i32 191], align 4
@constinit.172 = private unnamed_addr constant [6 x i32] [i32 128, i32 191, i32 128, i32 191, i32 128, i32 191], align 4
@constinit.173 = private unnamed_addr constant [6 x i32] [i32 128, i32 143, i32 128, i32 191, i32 128, i32 191], align 4
@.str.174 = private unnamed_addr constant [38 x i8] c"invalid string: ill-formed UTF-8 byte\00", align 1
@.str.175 = private unnamed_addr constant [41 x i8] c"invalid number; expected digit after '-'\00", align 1
@.str.176 = private unnamed_addr constant [41 x i8] c"invalid number; expected digit after '.'\00", align 1
@.str.177 = private unnamed_addr constant [59 x i8] c"invalid number; expected '+', '-', or digit after exponent\00", align 1
@.str.178 = private unnamed_addr constant [51 x i8] c"invalid number; expected digit after exponent sign\00", align 1
@.str.179 = private unnamed_addr constant [28 x i8] c"vector<bool>::_M_insert_aux\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"object key\00", align 1
@.str.181 = private unnamed_addr constant [17 x i8] c"object separator\00", align 1
@.str.182 = private unnamed_addr constant [26 x i8] c"number overflow parsing '\00", align 1
@.str.183 = private unnamed_addr constant [102 x i8] c"attempting to parse an empty input; check that your input string or stream contains the expected JSON\00", align 1
@.str.184 = private unnamed_addr constant [24 x i8] c"excessive object size: \00", align 1
@_ZTIN8nlohmann16json_abi_v3_12_06detail12out_of_rangeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8nlohmann16json_abi_v3_12_06detail12out_of_rangeE, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail9exceptionE }, comdat, align 8
@_ZTSN8nlohmann16json_abi_v3_12_06detail12out_of_rangeE = linkonce_odr dso_local constant [51 x i8] c"N8nlohmann16json_abi_v3_12_06detail12out_of_rangeE\00", comdat, align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"out_of_range\00", align 1
@_ZTVN8nlohmann16json_abi_v3_12_06detail12out_of_rangeE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail12out_of_rangeE, ptr @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_06detail12out_of_rangeD0Ev, ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9exception4whatEv] }, comdat, align 8
@.str.186 = private unnamed_addr constant [49 x i8] c"cannot compare iterators of different containers\00", align 1
@_ZTIN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail9exceptionE }, comdat, align 8
@_ZTSN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE = linkonce_odr dso_local constant [55 x i8] c"N8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE\00", comdat, align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"invalid_iterator\00", align 1
@_ZTVN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, ptr @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorD0Ev, ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9exception4whatEv] }, comdat, align 8
@.str.188 = private unnamed_addr constant [17 x i8] c"cannot get value\00", align 1
@.str.189 = private unnamed_addr constant [36 x i8] c"iterator does not fit current value\00", align 1
@.str.190 = private unnamed_addr constant [22 x i8] c"iterator out of range\00", align 1
@.str.191 = private unnamed_addr constant [25 x i8] c"cannot use erase() with \00", align 1
@_ZStL19piecewise_construct = internal constant %"struct.std::piecewise_construct_t" zeroinitializer, align 1
@.str.192 = private unnamed_addr constant [23 x i8] c"excessive array size: \00", align 1
@_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8nlohmann16json_abi_v3_12_06detail11parse_errorE, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail9exceptionE }, comdat, align 8
@_ZTSN8nlohmann16json_abi_v3_12_06detail11parse_errorE = linkonce_odr dso_local constant [50 x i8] c"N8nlohmann16json_abi_v3_12_06detail11parse_errorE\00", comdat, align 1
@_ZTVN8nlohmann16json_abi_v3_12_06detail11parse_errorE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE, ptr @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_06detail11parse_errorD0Ev, ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9exception4whatEv] }, comdat, align 8
@.str.193 = private unnamed_addr constant [9 x i8] c"<U+%.4X>\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c"parse_error\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@.str.196 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c" at line \00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c", column \00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"syntax error \00", align 1
@.str.200 = private unnamed_addr constant [15 x i8] c"while parsing \00", align 1
@.str.201 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.202 = private unnamed_addr constant [15 x i8] c"; last read: '\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"unexpected \00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"; expected \00", align 1
@.str.205 = private unnamed_addr constant [16 x i8] c"<uninitialized>\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"true literal\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"false literal\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"null literal\00", align 1
@.str.209 = private unnamed_addr constant [15 x i8] c"string literal\00", align 1
@.str.210 = private unnamed_addr constant [15 x i8] c"number literal\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.212 = private unnamed_addr constant [4 x i8] c"'{'\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c"'}'\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"<parse error>\00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"end of input\00", align 1
@.str.219 = private unnamed_addr constant [23 x i8] c"'[', '{', or a literal\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"unknown token\00", align 1
@.str.221 = private unnamed_addr constant [42 x i8] c"cannot use key() for non-object iterators\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [126 x i8] c"St23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEE, ptr @_ZN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcE15write_characterEc, ptr @_ZN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcE16write_charactersEPKcm, ptr @_ZN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcED0Ev] }, comdat, align 8
@_ZTIN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEE, ptr @_ZTIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEE }, comdat, align 8
@_ZTSN8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEE = linkonce_odr dso_local constant [63 x i8] c"N8nlohmann16json_abi_v3_12_06detail21output_stream_adapterIcEE\00", comdat, align 1
@.str.222 = private unnamed_addr constant [5 x i8] c" != \00", align 1
@.str.224 = private unnamed_addr constant [18 x i8] c"array index '-' (\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c") is out of range\00", align 1
@.str.226 = private unnamed_addr constant [29 x i8] c"unresolved reference token '\00", align 1
@.str.227 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.228 = private unnamed_addr constant [22 x i8] c"cannot use at() with \00", align 1
@.str.229 = private unnamed_addr constant [6 x i8] c"key '\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c"' not found\00", align 1
@_ZTISt12out_of_range = external constant ptr
@.str.231 = private unnamed_addr constant [13 x i8] c"array index \00", align 1
@.str.232 = private unnamed_addr constant [17 x i8] c" is out of range\00", align 1
@.str.233 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.234 = private unnamed_addr constant [14 x i8] c"array index '\00", align 1
@.str.235 = private unnamed_addr constant [26 x i8] c"' must not begin with '0'\00", align 1
@.str.236 = private unnamed_addr constant [18 x i8] c"' is not a number\00", align 1
@.str.237 = private unnamed_addr constant [19 x i8] c" exceeds size_type\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c" at byte \00", align 1
@.str.239 = private unnamed_addr constant [54 x i8] c"JSON pointer must be empty or begin with '/' - was: '\00", align 1
@.str.240 = private unnamed_addr constant [54 x i8] c"escape character '~' must be followed with '0' or '1'\00", align 1
@.str.241 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.242 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.248 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.249 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.250 = private unnamed_addr constant [39 x i8] c"JSON patch must be an array of objects\00", align 1
@.str.251 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.252 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.254 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.259 = private unnamed_addr constant [15 x i8] c"unsuccessful: \00", align 1
@.str.260 = private unnamed_addr constant [18 x i8] c"operation value '\00", align 1
@.str.261 = private unnamed_addr constant [13 x i8] c"' is invalid\00", align 1
@.str.262 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.263 = private unnamed_addr constant [12 x i8] c"operation '\00", align 1
@.str.264 = private unnamed_addr constant [20 x i8] c" must have member '\00", align 1
@.str.265 = private unnamed_addr constant [27 x i8] c" must have string member '\00", align 1
@.str.266 = private unnamed_addr constant [29 x i8] c"type must be string, but is \00", align 1
@.str.267 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.268 = private unnamed_addr constant [27 x i8] c"JSON pointer has no parent\00", align 1
@.str.269 = private unnamed_addr constant [29 x i8] c"cannot use push_back() with \00", align 1
@.str.270 = private unnamed_addr constant [26 x i8] c"cannot use insert() with \00", align 1
@.str.271 = private unnamed_addr constant [41 x i8] c"cannot use offsets with object iterators\00", align 1
@.str.272 = private unnamed_addr constant [3 x i8] c"/-\00", align 1
@.str.274 = private unnamed_addr constant [21 x i8] c"iterators do not fit\00", align 1
@.str.275 = private unnamed_addr constant [45 x i8] c"passed iterators may not belong to container\00", align 1
@.str.276 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_unit_alt_string.cpp, ptr null }]
@switch.table._ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9type_nameEv = private unnamed_addr constant [10 x ptr] [ptr @.str.94, ptr @.str.29, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.100, ptr @.str.100, ptr @.str.100, ptr @.str.98, ptr @.str.99], align 8
@switch.table._ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE17exception_messageENS1_10lexer_baseISA_E10token_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = private unnamed_addr constant [17 x ptr] [ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.210, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.220, ptr @.str.218, ptr @.str.219], align 8
@switch.table._ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE17exception_messageENS1_10lexer_baseISA_E10token_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.2 = private unnamed_addr constant [16 x ptr] [ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.210, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219], align 8
@switch.table._ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE11start_arrayEm = private unnamed_addr constant [3 x i64] [i64 0, i64 115292150460684697, i64 576460752303423487], align 8

declare noundef i32 @_ZN7doctest6detail12setTestSuiteERKNS0_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN7doctest6detail9TestSuitemlEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13int_to_stringR10alt_stringm(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %class.alt_string, align 8          ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.b = icmp ult i64 %1, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.029.i.i = phi i32 [ %i.j, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.i, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.c = icmp ult i64 %.02328.i.i, 100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.e = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.i = udiv i64 %.02328.i.i, 10000
  %i.j = add i32 %.029.i.i, 4                     ; 2 uses
  %i.k = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.k, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %i.h, %bb.f ], [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ 1, %bb.a ], [ %i.j, %bb.g ]
  %i.l = zext i32 %.022.i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !30, !alias.scope !244
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.l, i8 noundef signext 0)
  %i.n = load ptr, ptr %3, align 8, !tbaa !33, !alias.scope !244 ; 4 uses
  %i.o = icmp ugt i64 %1, 99
  br i1 %i.o, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !34, !alias.scope !244
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, -1
  br label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %.lr.ph.i6.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.v, %.lr.ph.i6.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.af, %.lr.ph.i6.i ], [ %i.s, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.t = urem i64 %.020.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = udiv i64 %.020.i.i, 100                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !35, !noalias !244
  %i.z = zext i32 %.01819.i.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !35
  %i.ab = load i8, ptr %i.w, align 2, !tbaa !35, !noalias !244
  %i.ac = add i32 %.01819.i.i, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !35
  %i.af = add i32 %.01819.i.i, -2
  %i.ag = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ag, label %.lr.ph.i6.i, label %._crit_edge.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %.lr.ph.i6.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.v, %.lr.ph.i6.i ] ; 3 uses
  %i.ah = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35, !noalias !244
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !35
  %i.an = load i8, ptr %i.aj, align 2, !tbaa !35, !noalias !244
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ao = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ap = or disjoint i8 %i.ao, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.ap, %bb.i ], [ %i.an, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.n, align 1, !tbaa !35
  %i.aq = load ptr, ptr %3, align 8, !tbaa !33    ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !30
  %i.as = icmp eq ptr %i.aq, null
  br i1 %i.as, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %_ZNSt7__cxx119to_stringEm.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.j:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.at, ptr %i.a, align 8, !tbaa !36
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc3 unwind label %bb.s    ; 2 uses

.noexc3:                                          ; preds = %.noexc.i.i
  store ptr %i.av, ptr %2, align 8, !tbaa !33
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !35
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc3, %bb.j
  %i.ax = phi ptr [ %i.av, %.noexc3 ], [ %i.ar, %bb.j ] ; 2 uses
  switch i64 %i.at, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !35
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !35
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr nonnull align 1 %i.aq, i64 %i.at, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.az = load i64, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !34
  %i.bb = load ptr, ptr %2, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bd = load ptr, ptr %0, align 8, !tbaa !33    ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_JcS8_RA3_KcETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSF_OSG_DpOT1_:bb.a
  unreachable

_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcJS8_RA3_KcETnNSt9enable_ifIXaantsr24detect_string_can_appendIT_T0_EE5valuesr27detect_string_can_append_opISD_SE_EE5valueEiE4typeELi0EEEvRSD_OSE_DpOT1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.ah = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(3) %4, i64 noundef %i.ad) ; 0 uses
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail11other_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #29, !inline_history !144
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #29, !inline_history !144
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #29
  ret ptr %i.b
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #29, !inline_history !144
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #29, !inline_history !144
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.40", align 8    ; 22 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %i.a = icmp eq i8 %1, 1
  %i.b = load ptr, ptr %0, align 8                ; 6 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %or.cond31 = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond31, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 2
  %i.e = and i8 %1, -2
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp eq i8 %1, 8
  %i.h = or i1 %i.g, %i.f
  %or.cond65 = select i1 %i.h, i1 %i.c, i1 false
  br i1 %or.cond65, label %bb.al, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %1, -1
  %or.cond = icmp ult i8 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %i.d, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140  ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !120  ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp ugt i64 %i.o, 9223372036854775792
  br i1 %i.p, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not315 = icmp eq ptr %i.k, %i.l
  br i1 %.not315, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit.i unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !391 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %2, align 8, !tbaa !120
  store ptr %i.r, ptr %i.s, align 8, !tbaa !140
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 2 uses
  store ptr %i.t, ptr %i.q, align 8, !tbaa !145
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE7reserveEm.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit.i, %bb.f
  %i.u = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit.i ], [ null, %bb.f ]
  %i.v = phi ptr [ %i.r, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit.i ], [ null, %bb.f ] ; 3 uses
  %.not316 = icmp eq ptr %i.k, %i.l
  br i1 %.not316, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EED2Ev.exit, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE7reserveEm.exit
  %i.w = lshr exact i64 %i.o, 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i, %.lr.ph.i136
  %i.y = phi ptr [ %i.v, %.lr.ph.i136 ], [ %i.au, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i ] ; 6 uses
  %i.z = phi ptr [ %i.u, %.lr.ph.i136 ], [ %i.av, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i ] ; 5 uses
  %i.aa = phi ptr [ %i.v, %.lr.ph.i136 ], [ %i.aw, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i ] ; 3 uses
  %.0.i12.i137 = phi i64 [ %i.w, %.lr.ph.i136 ], [ %i.ay, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i ] ; 2 uses
  %.05.i11.i = phi ptr [ %i.l, %.lr.ph.i136 ], [ %i.ax, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i ] ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !140
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %.invoke, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ah = ashr exact i64 %i.af, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i161 = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i161)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #34
          to label %.noexc165 unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !392 ; 6 uses

.noexc165:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !35
  %.not.i1728.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i1728.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162: ; preds = %.noexc165, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162
  %.0.i30.i = phi ptr [ %i.as, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162 ], [ %i.an, %.noexc165 ] ; 2 uses
  %.09.i29.i = phi ptr [ %i.ar, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162 ], [ %i.y, %.noexc165 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.09.i29.i, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 16 ; 2 uses
  %.not.i17.i = icmp eq ptr %i.ar, %i.z
  br i1 %.not.i17.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162, !llvm.loop !5

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162, %.noexc165
  %.0.i.lcssa.i = phi ptr [ %i.an, %.noexc165 ], [ %i.as, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i162 ]
  %.0.i1931.i = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 16 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.y, null
  br i1 %.not.i16.i, label %.noexc138, label %bb.j

bb.j:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #31, !inline_history !392
  br label %.noexc138

.noexc138:                                        ; preds = %bb.j, %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i
  store ptr %i.an, ptr %2, align 8, !tbaa !120
  store ptr %.0.i1931.i, ptr %i.x, align 8, !tbaa !140
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al ; 2 uses
  store ptr %i.at, ptr %i.q, align 8, !tbaa !145
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i: ; preds = %.noexc138, %bb.h
  %i.au = phi ptr [ %i.an, %.noexc138 ], [ %i.y, %bb.h ] ; 2 uses
  %i.av = phi ptr [ %i.at, %.noexc138 ], [ %i.z, %bb.h ]
  %i.aw = phi ptr [ %.0.i1931.i, %.noexc138 ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  %i.ay = add nsw i64 %.0.i12.i137, -1
  %4 = icmp samesign ugt i64 %.0.i12.i137, 1
  br i1 %4, label %bb.g, label %.loopexit68, !llvm.loop !393

bb.k:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !77 ; 4 uses
  %i.bb = icmp ugt i64 %i.ba, 576460752303423487
  br i1 %i.bb, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not314 = icmp eq i64 %i.ba, 0
  br i1 %.not314, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE7reserveEm.exit154, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit.i140

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit.i140: ; preds = %bb.l
  %i.bd = shl nuw nsw i64 %i.ba, 4
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #34
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit.i151 unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !391 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit.i151: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit.i140
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.be, ptr %2, align 8, !tbaa !120
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !140
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.ba ; 2 uses
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !145
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE7reserveEm.exit154

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE7reserveEm.exit154: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit.i151, %bb.l
  %i.bh = phi ptr [ %i.bg, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit.i151 ], [ null, %bb.l ]
  %i.bi = phi ptr [ %i.be, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit.i151 ], [ null, %bb.l ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !54 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not87, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE7reserveEm.exit154
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit
  %i.bn = phi ptr [ %i.bi, %.lr.ph ], [ %i.cl, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit ] ; 6 uses
  %i.bo = phi ptr [ %i.bh, %.lr.ph ], [ %i.cm, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit ] ; 5 uses
  %i.bp = phi ptr [ %i.bi, %.lr.ph ], [ %i.cn, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit ] ; 3 uses
  %.sroa.059.088 = phi ptr [ %i.bk, %.lr.ph ], [ %i.co, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.059.088, i64 64 ; 4 uses
  %.not.i = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.bq, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.059.088, i64 72
  store ptr null, ptr %i.br, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !140
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit

bb.o:                                             ; preds = %bb.m
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775792
  br i1 %i.bw, label %.invoke, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i166

.invoke:                                          ; preds = %bb.o, %bb.i, %bb.k, %bb.e
  %i.bx = phi ptr [ @.str.90, %bb.k ], [ @.str.90, %bb.e ], [ @.str.91, %bb.i ], [ @.str.91, %bb.o ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bx) #30
          to label %.cont unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !394

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i166: ; preds = %bb.o
  %i.by = ashr exact i64 %i.bv, 4                 ; 3 uses
  %.sroa.speculated.i.i167 = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i167, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 576460752303423487)
  %i.cc = select i1 %i.ca, i64 576460752303423487, i64 %i.cb ; 3 uses
  %.not.i.i168 = icmp ne i64 %i.cc, 0
  tail call void @llvm.assume(i1 %.not.i.i168)
  %i.cd = shl nuw nsw i64 %i.cc, 4
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #34
          to label %.noexc188 unwind label %.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !394 ; 6 uses

.noexc188:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i166
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.bq, align 8, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.059.088, i64 72
  store ptr null, ptr %i.cg, align 8, !tbaa !35
  %.not.i1728.i169 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i1728.i169, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i183, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i170

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i170: ; preds = %.noexc188, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i170
  %.0.i30.i171 = phi ptr [ %i.cj, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i170 ], [ %i.ce, %.noexc188 ] ; 2 uses
  %.09.i29.i172 = phi ptr [ %i.ci, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i170 ], [ %i.bn, %.noexc188 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i171, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i172, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.09.i29.i172, align 8, !tbaa !41
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i29.i172, i64 8
  store ptr null, ptr %i.ch, align 8, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i29.i172, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i30.i171, i64 16 ; 2 uses
  %.not.i17.i173 = icmp eq ptr %i.ci, %i.bo
  br i1 %.not.i17.i173, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i183, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i170, !llvm.loop !5

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i183: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i170, %.noexc188
  %.0.i.lcssa.i175 = phi ptr [ %i.ce, %.noexc188 ], [ %i.cj, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i170 ]
  %.0.i1931.i176 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i175, i64 16 ; 2 uses
  %.not.i16.i185 = icmp eq ptr %i.bn, null
  br i1 %.not.i16.i185, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit189, label %bb.p

bb.p:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i183
  tail call void @_ZdlPv(ptr noundef nonnull %i.bn) #31, !inline_history !394
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit189

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit189: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i183, %bb.p
  store ptr %i.ce, ptr %2, align 8, !tbaa !120
  store ptr %.0.i1931.i176, ptr %i.bm, align 8, !tbaa !140
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cc ; 2 uses
  store ptr %i.ck, ptr %i.bc, align 8, !tbaa !145
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit189, %bb.n
  %i.cl = phi ptr [ %i.ce, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit189 ], [ %i.bn, %bb.n ] ; 2 uses
  %i.cm = phi ptr [ %i.ck, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit189 ], [ %i.bo, %bb.n ]
  %i.cn = phi ptr [ %.0.i1931.i176, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit189 ], [ %i.bs, %bb.n ] ; 2 uses
  %i.co = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.059.088) #33 ; 2 uses
  %.not = icmp eq ptr %i.co, %i.bl
  br i1 %.not, label %.loopexit68, label %bb.m

.loopexit.split-lp70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i166, %.invoke, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit.i140, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp70

.loopexit68:                                      ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i
  %i.cp = phi ptr [ %i.aw, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i ], [ %i.cn, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %i.cq = phi ptr [ %i.au, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit.i.i ], [ %i.cl, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.cs = icmp eq ptr %i.cq, %i.cp
  br i1 %i.cs, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EED2Ev.exit, label %.lr.ph98

.lr.ph98:                                         ; preds = %.loopexit68
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph98, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit
  %i.cv = phi ptr [ %i.cp, %.lr.ph98 ], [ %i.go, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.cw, align 8, !tbaa !41
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -8
  store ptr null, ptr %i.cx, align 8, !tbaa !35
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !140 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -16 ; 7 uses
  store ptr %i.cz, ptr %i.cr, align 8, !tbaa !140
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.db = load i8, ptr %i.cz, align 8, !tbaa !39
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.da, i8 noundef zeroext %i.db)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.r, !inline_history !395

bb.r:                                             ; preds = %bb.q
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #32, !inline_history !395
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.q
  %i.de = load i8, ptr %3, align 8, !tbaa !41
  switch i8 %i.de, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE15_M_erase_at_endEPS8_.exit [
    i8 2, label %bb.s
    i8 1, label %bb.x
  ]

bb.s:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.df = load ptr, ptr %i.ct, align 8, !tbaa !35 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !55 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !55 ; 2 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 4                 ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph95.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit

.lr.ph95.preheader:                               ; preds = %bb.s
  %.pre269 = load ptr, ptr %i.cu, align 8, !tbaa !145
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.noexc46
  %i.do = phi ptr [ %i.el, %.noexc46 ], [ %.pre269, %.lr.ph95.preheader ] ; 4 uses
  %i.dp = phi ptr [ %i.em, %.noexc46 ], [ %i.cz, %.lr.ph95.preheader ] ; 2 uses
  %.0.i.i4593 = phi i64 [ %i.eo, %.noexc46 ], [ %i.dm, %.lr.ph95.preheader ] ; 2 uses
  %.05.i.i92 = phi ptr [ %i.en, %.noexc46 ], [ %i.dg, %.lr.ph95.preheader ] ; 7 uses
  %.not.i48 = icmp eq ptr %i.dp, %i.do
  br i1 %.not.i48, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i92, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.05.i.i92, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i92, i64 8
  store ptr null, ptr %i.dq, align 8, !tbaa !35
  %i.dr = load ptr, ptr %i.cr, align 8, !tbaa !140
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  store ptr %i.ds, ptr %i.cr, align 8, !tbaa !140
  %.pre268 = load ptr, ptr %i.cu, align 8, !tbaa !145
  br label %.noexc46

bb.u:                                             ; preds = %.lr.ph95
  %i.dt = load ptr, ptr %2, align 8, !tbaa !120   ; 5 uses
  %i.du = ptrtoint ptr %i.do to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775792
  br i1 %i.dx, label %.invoke329, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i190

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i190: ; preds = %bb.u
  %i.dy = ashr exact i64 %i.dw, 4                 ; 3 uses
  %.sroa.speculated.i.i191 = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i191, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 576460752303423487)
  %i.ec = select i1 %i.ea, i64 576460752303423487, i64 %i.eb ; 3 uses
  %.not.i.i192 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i192)
  %i.ed = shl nuw nsw i64 %i.ec, 4
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #34
          to label %.noexc212 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !396 ; 5 uses

.noexc212:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i190
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i92, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.05.i.i92, align 8, !tbaa !41
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i.i92, i64 8
  store ptr null, ptr %i.eg, align 8, !tbaa !35
  %.not.i1728.i193 = icmp eq ptr %i.dt, %i.do
  br i1 %.not.i1728.i193, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i207, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i194

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i194: ; preds = %.noexc212, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i194
  %.0.i30.i195 = phi ptr [ %i.ej, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i194 ], [ %i.ee, %.noexc212 ] ; 2 uses
  %.09.i29.i196 = phi ptr [ %i.ei, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i194 ], [ %i.dt, %.noexc212 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i195, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i196, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.09.i29.i196, align 8, !tbaa !41
  %i.eh = getelementptr inbounds nuw i8, ptr %.09.i29.i196, i64 8
  store ptr null, ptr %i.eh, align 8, !tbaa !35
  %i.ei = getelementptr inbounds nuw i8, ptr %.09.i29.i196, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i30.i195, i64 16 ; 2 uses
  %.not.i17.i197 = icmp eq ptr %i.ei, %i.do
  br i1 %.not.i17.i197, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i207, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i194, !llvm.loop !5

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i207: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i194, %.noexc212
  %.0.i.lcssa.i199 = phi ptr [ %i.ee, %.noexc212 ], [ %i.ej, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i194 ]
  %.0.i1931.i200 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i199, i64 16 ; 2 uses
  %.not.i16.i209 = icmp eq ptr %i.dt, null
  br i1 %.not.i16.i209, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit213, label %bb.v

bb.v:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i207
  call void @_ZdlPv(ptr noundef nonnull %i.dt) #31, !inline_history !396
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit213

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit213: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i207, %bb.v
  store ptr %i.ee, ptr %2, align 8, !tbaa !120
  store ptr %.0.i1931.i200, ptr %i.cr, align 8, !tbaa !140
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ec ; 2 uses
  store ptr %i.ek, ptr %i.cu, align 8, !tbaa !145
  br label %.noexc46

.noexc46:                                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit213, %bb.t
  %i.el = phi ptr [ %i.ek, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit213 ], [ %.pre268, %bb.t ]
  %i.em = phi ptr [ %.0.i1931.i200, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit213 ], [ %i.ds, %bb.t ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i92, i64 16
  %i.eo = add nsw i64 %.0.i.i4593, -1
  %5 = icmp samesign ugt i64 %.0.i.i4593, 1
  br i1 %5, label %.lr.ph95, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit.loopexit, !llvm.loop !393

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit.loopexit: ; preds = %.noexc46
  %.pre108 = load ptr, ptr %i.ct, align 8, !tbaa !35 ; 3 uses
  %.pre109 = load ptr, ptr %.pre108, align 8, !tbaa !120
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre108, i64 8
  %.pre110 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !140
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit.loopexit, %bb.s
  %i.ep = phi ptr [ %i.em, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit.loopexit ], [ %i.cz, %bb.s ] ; 2 uses
  %i.eq = phi ptr [ %.pre110, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit.loopexit ], [ %i.di, %bb.s ] ; 2 uses
  %i.er = phi ptr [ %.pre109, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit.loopexit ], [ %i.dg, %bb.s ] ; 3 uses
  %i.es = phi ptr [ %.pre108, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit.loopexit ], [ %i.df, %bb.s ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.not.i40 = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i40, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE15_M_erase_at_endEPS8_.exit, label %.preheader67

.preheader67:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i
  %.0.i96 = phi ptr [ %i.ey, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i ], [ %i.er, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i96, i64 8
  %i.ev = load i8, ptr %.0.i96, align 8, !tbaa !39
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, i8 noundef zeroext %i.ev)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i unwind label %bb.w, !inline_history !397

bb.w:                                             ; preds = %.preheader67
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #32, !inline_history !397
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i: ; preds = %.preheader67
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i96, i64 16 ; 2 uses
  %.not.i47 = icmp eq ptr %i.ey, %i.eq
  br i1 %.not.i47, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_.exit.i, label %.preheader67, !llvm.loop !4

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i
  store ptr %i.er, ptr %i.et, align 8, !tbaa !140
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE15_M_erase_at_endEPS8_.exit

bb.x:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.ez = load ptr, ptr %i.ct, align 8, !tbaa !35 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !54 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %.not6689 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not6689, label %._crit_edge, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %bb.x
  %.pre267 = load ptr, ptr %i.cu, align 8, !tbaa !145
  br label %.lr.ph91

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit38
  %.pre = load ptr, ptr %i.ct, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.x
  %i.fd = phi ptr [ %i.gm, %._crit_edge.loopexit ], [ %i.cz, %bb.x ]
  %i.fe = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ez, %bb.x ] ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeI10alt_stringSt4pairIKS0_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS4_14adl_serializerES7_IhSaIhEEvEEESt10_Select1stISC_ESt4lessIS0_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fe, ptr noundef %i.fg)
          to label %_ZNSt8_Rb_treeI10alt_stringSt4pairIKS0_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS4_14adl_serializerES7_IhSaIhEEvEEESt10_Select1stISC_ESt4lessIS0_ESaISC_EE5clearEv.exit unwind label %bb.y, !inline_history !398

bb.y:                                             ; preds = %._crit_edge
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #32, !inline_history !398
  unreachable

_ZNSt8_Rb_treeI10alt_stringSt4pairIKS0_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS4_14adl_serializerES7_IhSaIhEEvEEESt10_Select1stISC_ESt4lessIS0_ESaISC_EE5clearEv.exit: ; preds = %._crit_edge
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  store ptr null, ptr %i.ff, align 8, !tbaa !146
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !54
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !76
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store i64 0, ptr %i.fm, align 8, !tbaa !77
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE15_M_erase_at_endEPS8_.exit

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit38
  %i.fn = phi ptr [ %i.gl, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit38 ], [ %.pre267, %.lr.ph91.preheader ] ; 4 uses
  %i.fo = phi ptr [ %i.gm, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit38 ], [ %i.cz, %.lr.ph91.preheader ] ; 2 uses
  %.sroa.055.090 = phi ptr [ %i.gn, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit38 ], [ %i.fb, %.lr.ph91.preheader ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.055.090, i64 64 ; 4 uses
  %.not.i41 = icmp eq ptr %i.fo, %i.fn
  br i1 %.not.i41, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.fp, align 8, !tbaa !41
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.055.090, i64 72
  store ptr null, ptr %i.fq, align 8, !tbaa !35
  %i.fr = load ptr, ptr %i.cr, align 8, !tbaa !140
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  store ptr %i.fs, ptr %i.cr, align 8, !tbaa !140
  %.pre266 = load ptr, ptr %i.cu, align 8, !tbaa !145
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit38

bb.aa:                                            ; preds = %.lr.ph91
  %i.ft = load ptr, ptr %2, align 8, !tbaa !120   ; 5 uses
  %i.fu = ptrtoint ptr %i.fn to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775792
  br i1 %i.fx, label %.invoke329, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i214

.invoke329:                                       ; preds = %bb.aa, %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #30
          to label %.cont330 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !394

.cont330:                                         ; preds = %.invoke329
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i214: ; preds = %bb.aa
  %i.fy = ashr exact i64 %i.fw, 4                 ; 3 uses
  %.sroa.speculated.i.i215 = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i215, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = call i64 @llvm.umin.i64(i64 %i.fz, i64 576460752303423487)
  %i.gc = select i1 %i.ga, i64 576460752303423487, i64 %i.gb ; 3 uses
  %.not.i.i216 = icmp ne i64 %i.gc, 0
  call void @llvm.assume(i1 %.not.i.i216)
  %i.gd = shl nuw nsw i64 %i.gc, 4
  %i.ge = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #34
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !394 ; 5 uses

.noexc236:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i214
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.fp, align 8, !tbaa !41
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.055.090, i64 72
  store ptr null, ptr %i.gg, align 8, !tbaa !35
  %.not.i1728.i217 = icmp eq ptr %i.ft, %i.fn
  br i1 %.not.i1728.i217, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i231, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i218

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i218: ; preds = %.noexc236, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i218
  %.0.i30.i219 = phi ptr [ %i.gj, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i218 ], [ %i.ge, %.noexc236 ] ; 2 uses
  %.09.i29.i220 = phi ptr [ %i.gi, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i218 ], [ %i.ft, %.noexc236 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i219, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i220, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.09.i29.i220, align 8, !tbaa !41
  %i.gh = getelementptr inbounds nuw i8, ptr %.09.i29.i220, i64 8
  store ptr null, ptr %i.gh, align 8, !tbaa !35
  %i.gi = getelementptr inbounds nuw i8, ptr %.09.i29.i220, i64 16 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i30.i219, i64 16 ; 2 uses
  %.not.i17.i221 = icmp eq ptr %i.gi, %i.fn
  br i1 %.not.i17.i221, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i231, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i218, !llvm.loop !5

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i231: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i218, %.noexc236
  %.0.i.lcssa.i223 = phi ptr [ %i.ge, %.noexc236 ], [ %i.gj, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i218 ]
  %.0.i1931.i224 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i223, i64 16 ; 2 uses
  %.not.i16.i233 = icmp eq ptr %i.ft, null
  br i1 %.not.i16.i233, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit237, label %bb.ab

bb.ab:                                            ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i231
  call void @_ZdlPv(ptr noundef nonnull %i.ft) #31, !inline_history !394
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit237

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit237: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit22.i231, %bb.ab
  store ptr %i.ge, ptr %2, align 8, !tbaa !120
  store ptr %.0.i1931.i224, ptr %i.cr, align 8, !tbaa !140
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.gc ; 2 uses
  store ptr %i.gk, ptr %i.cu, align 8, !tbaa !145
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit38

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE9push_backEOS8_.exit38: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit237, %bb.z
  %i.gl = phi ptr [ %i.gk, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit237 ], [ %.pre266, %bb.z ]
  %i.gm = phi ptr [ %.0.i1931.i224, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit237 ], [ %i.fs, %bb.z ] ; 2 uses
  %i.gn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.055.090) #33 ; 2 uses
  %.not66 = icmp eq ptr %i.gn, %i.fc
  br i1 %.not66, label %._crit_edge.loopexit, label %.lr.ph91

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i190, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit.i214, %.invoke329
  %lpad.loopexit.split-lp357 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29, !inline_history !402
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.loopexit.split-lp70

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE15_M_erase_at_endEPS8_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit, %_ZNSt8_Rb_treeI10alt_stringSt4pairIKS0_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS4_14adl_serializerES7_IhSaIhEEvEEESt10_Select1stISC_ESt4lessIS0_ESaISC_EE5clearEv.exit
  %i.go = phi ptr [ %i.cz, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ], [ %i.ep, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_.exit.i ], [ %i.ep, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESt20back_insert_iteratorISE_EET0_T_SJ_SI_.exit ], [ %i.fd, %_ZNSt8_Rb_treeI10alt_stringSt4pairIKS0_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS4_14adl_serializerES7_IhSaIhEEvEEESt10_Select1stISC_ESt4lessIS0_ESaISC_EE5clearEv.exit ] ; 2 uses
  %i.gp = load i8, ptr %3, align 8, !tbaa !39
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i8 noundef zeroext %i.gp)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit unwind label %bb.ac, !inline_history !403

bb.ac:                                            ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE15_M_erase_at_endEPS8_.exit
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #32, !inline_history !403
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE15_M_erase_at_endEPS8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.gs = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.go
  br i1 %i.gt, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EED2Ev.exit, label %bb.q, !llvm.loop !399
end_hunk_1
begin_hunk_2_@_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_escapedERKS6_b:bb.a
  store i8 %i.bp, ptr %i.bi, align 8, !tbaa !35, !alias.scope !442
  %i.bq = and i32 %i.bl, 15
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @.str.125, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !35, !noalias !442
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !35, !alias.scope !442
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA29_KcS8_RA5_S9_S8_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(29) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(5) @.str.120, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail10type_error6createIDnTnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::type_error") align 8 %i.bh, i32 noundef 316, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr null)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr %i.bh, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail10type_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #30
          to label %bb.ar unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread: ; preds = %.loopexit273
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.sink.split223

bb.t:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %bb.s, %bb.r
  %.065 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.by) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %.pn98 = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bx, %bb.u ] ; 4 uses
  %.166 = phi i1 [ true, %bb.t ], [ %.065, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.065, %bb.u ] ; 2 uses
  %i.cb = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bi
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.cd = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  call void @_ZdlPv(ptr noundef %i.cd) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.166, label %.sink.split223, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.166, label %.sink.split223, label %bb.aq

.loopexit274:                                     ; preds = %bb.p, %bb.p, %bb.af, %bb.af
  %.lcssa267 = phi i32 [ %i.dw, %bb.af ], [ %i.dw, %bb.af ], [ %i.bg, %bb.p ], [ %i.bg, %bb.p ]
  %.lcssa264 = phi i32 [ %i.do, %bb.af ], [ %i.do, %bb.af ], [ %i.n, %bb.p ], [ %i.n, %bb.p ] ; 3 uses
  %.078163.lcssa254 = phi i64 [ %.078163.ph, %bb.af ], [ %.078163.ph, %bb.af ], [ %.078163, %bb.p ], [ %.078163, %bb.p ]
  %.not97 = icmp ne i64 %.081162.ph, 0
  %i.cg = sext i1 %.not97 to i64
  %spec.select = add i64 %.078163.lcssa254, %i.cg ; 3 uses
  %i.ch = icmp eq i32 %.lcssa267, 1
  br i1 %i.ch, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %.loopexit274
  %i.ci = getelementptr i8, ptr %i.d, i64 %.083161.ph ; 5 uses
  br i1 %2, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store <4 x i8> <i8 92, i8 117, i8 102, i8 102>, ptr %i.ci, align 1, !tbaa !35
  %i.cj = getelementptr i8, ptr %i.ci, i64 4
  store i8 102, ptr %i.cj, align 1, !tbaa !35
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ck = getelementptr i8, ptr %i.ci, i64 1
  store i8 -17, ptr %i.ci, align 1, !tbaa !35
  store i8 -65, ptr %i.ck, align 1, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink222 = phi i64 [ 3, %bb.x ], [ 6, %bb.w ]
  %.sink221 = phi i64 [ 2, %bb.x ], [ 5, %bb.w ]
  %.sink = phi i8 [ -67, %bb.x ], [ 100, %bb.w ]
  %i.cl = add i64 %.083161.ph, %.sink222          ; 4 uses
  %i.cm = getelementptr i8, ptr %i.ci, i64 %.sink221
  store i8 %.sink, ptr %i.cm, align 1, !tbaa !35
  %i.cn = add i64 %i.cl, -500
  %i.co = icmp ult i64 %i.cn, 13
  br i1 %i.co, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cp = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !82
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull %i.d, i64 noundef %i.cl)
  br label %bb.ac

.loopexit:                                        ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit.peel
  %.lcssa261 = phi i32 [ %i.do, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit.peel ], [ %i.n, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit ]
  %.lcssa256 = phi i8 [ %i.dv, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit.peel ], [ %i.q, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit ]
  %.078163.lcssa = phi i64 [ %.078163.ph, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit.peel ], [ %.078163, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit ]
  %.lcssa = phi i8 [ %i.dc, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit.peel ], [ %i.g, %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit ]
  br i1 %2, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.ct = add i64 %.086160.ph, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 %.086160.ph
  store i8 %.lcssa, ptr %i.cu, align 1, !tbaa !35
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit
  %.6 = phi i64 [ %.086160.ph, %.loopexit ], [ %i.ct, %bb.aa ]
  %i.cv = add i64 %.081162.ph, 1
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit274, %bb.z, %bb.y, %bb.n, %bb.o, %bb.ab
  %i.cw = phi i32 [ %.lcssa261, %bb.ab ], [ %.lcssa262, %bb.o ], [ %.lcssa262, %bb.n ], [ %.lcssa264, %.loopexit274 ], [ %.lcssa264, %bb.y ], [ %.lcssa264, %bb.z ]
  %.1122 = phi i8 [ %.lcssa256, %bb.ab ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %.loopexit274 ], [ 0, %bb.y ], [ 0, %bb.z ] ; 2 uses
  %.7 = phi i64 [ %.6, %bb.ab ], [ 0, %bb.o ], [ %.187, %bb.n ], [ %.083161.ph, %.loopexit274 ], [ %i.cl, %bb.y ], [ 0, %bb.z ] ; 3 uses
  %.285 = phi i64 [ %.083161.ph, %bb.ab ], [ 0, %bb.o ], [ %.187, %bb.n ], [ %.083161.ph, %.loopexit274 ], [ %i.cl, %bb.y ], [ 0, %bb.z ] ; 2 uses
  %.182 = phi i64 [ %i.cv, %bb.ab ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %.loopexit274 ], [ 0, %bb.y ], [ 0, %bb.z ]
  %.280 = phi i64 [ %.078163.lcssa, %bb.ab ], [ %.078163.lcssa252, %bb.o ], [ %.078163.lcssa252, %bb.n ], [ %spec.select, %.loopexit274 ], [ %spec.select, %bb.y ], [ %spec.select, %bb.z ]
  %i.cx = add i64 %.280, 1                        ; 2 uses
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !34
  %i.cz = icmp ult i64 %i.cx, %i.cy
  br i1 %i.cz, label %.outer, label %._crit_edge, !llvm.loop !438

.outer:                                           ; preds = %bb.ac, %.lr.ph
  %.078163.ph = phi i64 [ %i.cx, %bb.ac ], [ 0, %.lr.ph ] ; 7 uses
  %.081162.ph = phi i64 [ %.182, %bb.ac ], [ 0, %.lr.ph ] ; 2 uses
  %.083161.ph = phi i64 [ %.285, %bb.ac ], [ 0, %.lr.ph ] ; 7 uses
  %.086160.ph = phi i64 [ %.7, %bb.ac ], [ 0, %.lr.ph ] ; 21 uses
  %.0121159.ph = phi i8 [ %.1122, %bb.ac ], [ 0, %.lr.ph ] ; 2 uses
  %.0123158.ph = phi i32 [ %i.cw, %bb.ac ], [ 0, %.lr.ph ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.078163.ph
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !35  ; 6 uses
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjhE5utf8d, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !35  ; 2 uses
  %.not.i.peel = icmp eq i8 %.0121159.ph, 0
  br i1 %.not.i.peel, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.outer
  %i.dg = and i8 %i.dc, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = shl i32 %.0123158.ph, 6
  %i.dj = or disjoint i32 %i.di, %i.dh
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit.peel

bb.ae:                                            ; preds = %.outer
  %i.dk = zext nneg i8 %i.df to i32
  %i.dl = lshr i32 255, %i.dk
  %i.dm = zext i8 %i.dc to i32
  %i.dn = and i32 %i.dl, %i.dm
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit.peel

_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit.peel: ; preds = %bb.ae, %bb.ad
  %i.do = phi i32 [ %i.dj, %bb.ad ], [ %i.dn, %bb.ae ] ; 5 uses
  %i.dp = zext i8 %.0121159.ph to i64
  %i.dq = shl nuw nsw i64 %i.dp, 4
  %i.dr = zext i8 %i.df to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjhE5utf8d, i64 %i.dq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 256
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !35  ; 2 uses
  switch i8 %i.dv, label %.loopexit [
    i8 0, label %.loopexit272
    i8 1, label %bb.af
  ]

bb.af:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit.peel
  %i.dw = load i32, ptr %i.c, align 8, !tbaa !104 ; 3 uses
  switch i32 %i.dw, label %.thread.peel [
    i32 0, label %.loopexit273
    i32 2, label %.loopexit274
    i32 1, label %.loopexit274
  ]

.thread.peel:                                     ; preds = %bb.af
  %i.dx = add nuw i64 %.078163.ph, 1              ; 2 uses
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !34
  %i.dz = icmp ult i64 %i.dx, %i.dy
  br i1 %i.dz, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit, label %._crit_edge.thread189

.thread:                                          ; preds = %bb.p
  %i.ea = add nuw i64 %.078163, 1                 ; 2 uses
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ec = icmp ult i64 %i.ea, %i.eb
  br i1 %i.ec, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE6decodeERhRjh.exit, label %._crit_edge.thread189, !llvm.loop !439

bb.ag:                                            ; preds = %._crit_edge
  %.not = icmp eq i64 %.7, 0
  br i1 %.not, label %.thread194, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !82
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull %i.ee, i64 noundef %.7)
  br label %.thread194

._crit_edge.thread189:                            ; preds = %.thread, %.thread.peel, %._crit_edge
  %.285188193 = phi i64 [ %.285, %._crit_edge ], [ %.083161.ph, %.thread.peel ], [ %.083161.ph, %.thread ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !104
  switch i32 %i.ej, label %.thread194 [
    i32 0, label %bb.ai
    i32 2, label %bb.am
    i32 1, label %bb.an
  ]

bb.ai:                                            ; preds = %._crit_edge.thread189
  %i.ek = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.el = load i64, ptr %i.a, align 8, !tbaa !34
  %i.em = load ptr, ptr %1, align 8, !tbaa !33
  %i.en = getelementptr i8, ptr %i.em, i64 %i.el
  %i.eo = getelementptr i8, ptr %i.en, i64 -1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.eq, ptr %7, align 8, !tbaa !30, !alias.scope !444
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.er, align 8, !tbaa !34, !alias.scope !444
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i8 0, ptr %i.es, align 2, !tbaa !35, !alias.scope !444
  %i.et = zext i8 %i.ep to i32                    ; 2 uses
  %i.eu = lshr i32 %i.et, 4
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @.str.125, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !35, !noalias !444
  store i8 %i.ex, ptr %i.eq, align 8, !tbaa !35, !alias.scope !444
  %i.ey = and i32 %i.et, 15
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @.str.125, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !35, !noalias !444
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !35, !alias.scope !444
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA39_KcS8_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(39) @.str.121, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.aj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail10type_error6createIDnTnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::type_error") align 8 %i.ek, i32 noundef 316, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr null)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @__cxa_throw(ptr %i.ek, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail10type_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #30
          to label %bb.ar unwind label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0 = phi i1 [ false, %bb.ak ], [ true, %bb.aj ] ; 2 uses
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fe = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.fe) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  %i.fh = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.eq
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread: ; preds = %bb.ai
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.eq
  br i1 %i.fl, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread
  call void @_ZdlPv(ptr noundef %i.fk) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  call void @_ZdlPv(ptr noundef %i.fh) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.0, label %.sink.split223, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.0, label %.sink.split223, label %bb.aq

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.sink.split223

bb.am:                                            ; preds = %._crit_edge.thread189
  %i.fm = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !82
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  tail call void %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull %i.fn, i64 noundef %.285188193)
  br label %.thread194

bb.an:                                            ; preds = %._crit_edge.thread189
  %i.fr = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !82
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  tail call void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull %i.fs, i64 noundef %.285188193)
  %i.fw = load ptr, ptr %0, align 8, !tbaa !88    ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !82
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  br i1 %2, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @.str.122, i64 noundef 6)
  br label %.thread194

bb.ap:                                            ; preds = %bb.an
  tail call void %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @.str.123, i64 noundef 3)
  br label %.thread194

.thread194:                                       ; preds = %bb.a, %bb.am, %bb.ap, %bb.ao, %._crit_edge.thread189, %bb.ag, %bb.ah
  ret void

.sink.split223:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  %.sink224 = phi ptr [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread ], [ %i.ek, %.sink.split ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ]
  %.pn98.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread ], [ %i.fj, %.sink.split ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ]
  call void @__cxa_free_exception(ptr %.sink224) #29
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %.pn98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %.pn98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn98.pn.pn.pn.ph, %.sink.split223 ]
  resume { ptr, i32 } %.pn98.pn.pn.pn

bb.ar:                                            ; preds = %bb.ak, %bb.s
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12dump_integerIlTnNSt9enable_ifIXoooooosr3std11is_integralIT_EE5valuesr3std7is_sameISE_mEE5valuesr3std7is_sameISE_lEE5valuesr3std7is_sameISE_hEE5valueEiE4typeELi0EEEvSE_(ptr noundef nonnull align 8 dereferenceable(644) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext 48)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  store i8 45, ptr %i.e, align 8, !tbaa !35
  %i.g = sub i64 0, %1                            ; 3 uses
  %i.h = icmp ult i64 %i.g, 10
  br i1 %i.h, label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.j
  %.017.i = phi i32 [ %i.p, %bb.j ], [ 1, %bb.d ] ; 4 uses
  %.01116.i = phi i64 [ %i.o, %bb.j ], [ %i.g, %bb.d ] ; 5 uses
  %i.i = icmp ult i64 %.01116.i, 100
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.j = add i32 %.017.i, 1
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE12count_digitsEm.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.k = icmp ult i64 %.01116.i, 1000
end_hunk_2
begin_hunk_3_@_ZN7doctest6detail19stringifyBinaryExprI10alt_stringA29_cEENS_6StringERKT_PKcRKT0_:bb.a
.noexc10:                                         ; preds = %.noexc
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctestlsERSoRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA29_cEENS_6StringERKT_.exit.i unwind label %bb.d, !noalias !492 ; 0 uses

bb.d:                                             ; preds = %.noexc10
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29, !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !492
  br label %.body

_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA29_cEENS_6StringERKT_.exit.i: ; preds = %.noexc10
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29, !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !492
  invoke void @_ZN7doctest6detail7tlssPopEv(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %8)
          to label %_ZN7doctest8toStringIA29_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit unwind label %bb.h

_ZN7doctest8toStringIA29_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit: ; preds = %_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA29_cEENS_6StringERKT_.exit.i
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN7doctest8toStringIA29_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.f:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA29_cEENS_6StringERKT_.exit.i, %.noexc, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN7doctest8toStringIA29_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #29
  br label %.body

.body:                                            ; preds = %bb.h, %bb.d, %bb.i
  %.pn = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.i, %bb.h ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.h, %bb.g ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEN9__gnu_cxx5__ops12_Iter_negateIZNSB_C1ESt16initializer_listISC_EbNS2_7value_tEEUlRSD_E_EEET_SO_SO_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = ashr i64 %i.d, 2                         ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.062 = phi i64 [ %i.bs, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.02961 = phi ptr [ %i.br, %bb.e ], [ %0, %bb.a ] ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02961, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr %.02961, ptr %i.h ; 3 uses
  %i.i = load i8, ptr %..i.i.i.i, align 8, !tbaa !41
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %..i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !120
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.r, 32
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i, i64 noundef 0)
  %i.u = load i8, ptr %i.t, align 8, !tbaa !41
  %.not56 = icmp eq i8 %i.u, 3
  br i1 %.not56, label %bb.b, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.02961, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02961, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.x, null
  %..i.i.i.i31 = select i1 %.not.i.i.i.i30, ptr %i.v, ptr %i.x ; 3 uses
  %i.y = load i8, ptr %..i.i.i.i31, align 8, !tbaa !41
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i32, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i32: ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %..i.i.i.i31, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !140
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !120
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp eq i64 %i.ah, 32
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit33, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit33: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i32
  %i.aj = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i31, i64 noundef 0)
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !41
  %.not57 = icmp eq i8 %i.ak, 3
  br i1 %.not57, label %bb.c, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit33
  %i.al = getelementptr inbounds nuw i8, ptr %.02961, i64 48 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02961, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.an, null
  %..i.i.i.i35 = select i1 %.not.i.i.i.i34, ptr %i.al, ptr %i.an ; 3 uses
  %i.ao = load i8, ptr %..i.i.i.i35, align 8, !tbaa !41
  %i.ap = icmp eq i8 %i.ao, 2
  br i1 %i.ap, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i36, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i36: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %..i.i.i.i35, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !140
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !120
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp eq i64 %i.ax, 32
  br i1 %i.ay, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit37, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit37: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i36
  %i.az = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i35, i64 noundef 0)
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !41
  %.not58 = icmp eq i8 %i.ba, 3
  br i1 %.not58, label %bb.d, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit37
  %i.bb = getelementptr inbounds nuw i8, ptr %.02961, i64 72 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02961, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.bd, null
  %..i.i.i.i39 = select i1 %.not.i.i.i.i38, ptr %i.bb, ptr %i.bd ; 3 uses
  %i.be = load i8, ptr %..i.i.i.i39, align 8, !tbaa !41
  %i.bf = icmp eq i8 %i.be, 2
  br i1 %i.bf, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i40, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i40: ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %..i.i.i.i39, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !35 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !140
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !120
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp eq i64 %i.bn, 32
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit41, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit41: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i40
  %i.bp = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i39, i64 noundef 0)
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !41
  %.not59 = icmp eq i8 %i.bq, 3
  br i1 %.not59, label %bb.e, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit41
  %i.br = getelementptr inbounds nuw i8, ptr %.02961, i64 96 ; 3 uses
  %i.bs = add nsw i64 %.062, -1
  %2 = icmp samesign ugt i64 %.062, 1
  br i1 %2, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !493

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %i.br to i64
  %.pre63 = sub i64 %i.a, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi64 = phi i64 [ %.pre63, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.029.lcssa = phi ptr [ %i.br, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 8 uses
  %i.bt = sdiv exact i64 %.pre-phi64, 24
  switch i64 %i.bt, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.bv, null
  %..i.i.i.i43 = select i1 %.not.i.i.i.i42, ptr %.029.lcssa, ptr %i.bv ; 3 uses
  %i.bw = load i8, ptr %..i.i.i.i43, align 8, !tbaa !41
  %i.bx = icmp eq i8 %i.bw, 2
  br i1 %i.bx, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i44, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i44: ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %..i.i.i.i43, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !35 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !140
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !120
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp eq i64 %i.cf, 32
  br i1 %i.cg, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit45, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit45: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i44
  %i.ch = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i43, i64 noundef 0)
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !41
  %.not = icmp eq i8 %i.ci, 3
  br i1 %.not, label %bb.g, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit45
  %i.cj = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.1 = phi ptr [ %i.cj, %bb.g ], [ %.029.lcssa, %._crit_edge ] ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.cl, null
  %..i.i.i.i47 = select i1 %.not.i.i.i.i46, ptr %.1, ptr %i.cl ; 3 uses
  %i.cm = load i8, ptr %..i.i.i.i47, align 8, !tbaa !41
  %i.cn = icmp eq i8 %i.cm, 2
  br i1 %i.cn, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i48, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i48: ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %..i.i.i.i47, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !35 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !140
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !120
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp eq i64 %i.cv, 32
  br i1 %i.cw, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit49, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit49: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i48
  %i.cx = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i47, i64 noundef 0)
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !41
  %.not54 = icmp eq i8 %i.cy, 3
  br i1 %.not54, label %bb.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit49
  %i.cz = getelementptr inbounds nuw i8, ptr %.1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.2 = phi ptr [ %i.cz, %bb.i ], [ %.029.lcssa, %._crit_edge ] ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.db, null
  %..i.i.i.i51 = select i1 %.not.i.i.i.i50, ptr %.2, ptr %i.db ; 3 uses
  %i.dc = load i8, ptr %..i.i.i.i51, align 8, !tbaa !41
  %i.dd = icmp eq i8 %i.dc, 2
  br i1 %i.dd, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i52, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i52: ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %..i.i.i.i51, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !35 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !140
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !120
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp eq i64 %i.dl, 32
  br i1 %i.dm, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit53, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit53: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i52
  %i.dn = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i51, i64 noundef 0)
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !41
  %.not55 = icmp eq i8 %i.do, 3
  br i1 %.not55, label %bb.k, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit53, %._crit_edge
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit.thread: ; preds = %bb.d, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i40, %bb.c, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i36, %bb.b, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i32, %.lr.ph, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit41, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit37, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit33, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit, %bb.j, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i52, %bb.h, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i48, %bb.f, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i44, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit53, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit49, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit45, %bb.k
  %.028 = phi ptr [ %.1, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit49 ], [ %.1, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i48 ], [ %.2, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i52 ], [ %.2, %bb.j ], [ %1, %bb.k ], [ %.029.lcssa, %bb.f ], [ %.029.lcssa, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit45 ], [ %.2, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit53 ], [ %.1, %bb.h ], [ %.029.lcssa, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i44 ], [ %i.bb, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i40 ], [ %i.al, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i36 ], [ %i.v, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i32 ], [ %.02961, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i ], [ %i.bb, %bb.d ], [ %i.al, %bb.c ], [ %i.v, %bb.b ], [ %.02961, %.lr.ph ], [ %i.bb, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit41 ], [ %i.al, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit37 ], [ %i.v, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit33 ], [ %.02961, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISB_EEEbNSD_7value_tEEUlRKSF_E_EclIPSI_EEbT_.exit ]
  ret ptr %.028
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !41
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c, !prof !118

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %1
  ret ptr %i.g

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.i = tail call noundef nonnull ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9type_nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #29
  store ptr %i.i, ptr %i.a, align 8, !tbaa !128
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA52_KcPS9_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(52) @.str.129, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail10type_error6createIPKNS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::type_error") align 8 %i.h, i32 noundef 305, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail10type_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #30
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn9 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.g ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail10type_error6createIPKNS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_(ptr dead_on_unwind noalias writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::type_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE17exception_messageENS1_10lexer_baseISA_E10token_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.aj, ptr %5, align 8, !tbaa !30, !alias.scope !546
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !34, !alias.scope !546
  store i8 0, ptr %i.aj, align 8, !tbaa !35, !alias.scope !546
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !128, !noalias !546
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #33
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !34, !noalias !546
  %i.ap = add i64 %i.am, 15
  %i.aq = add i64 %i.ap, %i.ao
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aq)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJRA15_S9_S8_cETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSE_OSF_DpOT1_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(15) @.str.202, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcRA15_S9_S8_cEEET_DpOT0_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !33, !alias.scope !546 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.aj
  br i1 %i.at, label %.body, label %.body.sink.split

_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcRA15_S9_S8_cEEET_DpOT0_.exit: ; preds = %bb.i
  %i.au = load i64, ptr %i.ak, align 8, !tbaa !34 ; 2 uses
  %i.av = load i64, ptr %i.g, align 8, !tbaa !34
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i32

bb.k:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcRA15_S9_S8_cEEET_DpOT0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #30
          to label %.noexc33 unwind label %bb.n

.noexc33:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i32: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcRA15_S9_S8_cEEET_DpOT0_.exit
  %i.ay = load ptr, ptr %5, align 8, !tbaa !33
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ay, i64 noundef %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit35 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i32
  %i.ba = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aj
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit35
  call void @_ZdlPv(ptr noundef %i.ba) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.bc = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  call void @_ZdlPv(ptr noundef %i.bc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.t

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.m:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i32, %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.aj
  br i1 %i.bj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.j
  %.sink = phi ptr [ %i.as, %bb.j ], [ %i.bi, %bb.n ]
  %.pn18.ph = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.bh, %bb.n ]
  call void @_ZdlPv(ptr noundef %.sink) #31
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.j
  %.pn18 = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.bh, %bb.n ], [ %.pn18.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.bk = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.bk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.m
  %.pn18.pn = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %.pn18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.pn18, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.aa

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.bn = icmp ult i32 %i.ae, 17
  br i1 %i.bn, label %switch.lookup, label %_ZN8nlohmann16json_abi_v3_12_06detail10lexer_baseINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15token_type_nameENSB_10token_typeE.exit

switch.lookup:                                    ; preds = %bb.o
  %i.bo = zext nneg i32 %i.ae to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE17exception_messageENS1_10lexer_baseISA_E10token_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 %i.bo
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10lexer_baseINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15token_type_nameENSB_10token_typeE.exit

_ZN8nlohmann16json_abi_v3_12_06detail10lexer_baseINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15token_type_nameENSB_10token_typeE.exit: ; preds = %bb.o, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.220, %bb.o ]
  store ptr %.0.i, ptr %i.d, align 8, !tbaa !128
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA12_KcPS9_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(12) @.str.203, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10lexer_baseINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15token_type_nameENSB_10token_typeE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !34 ; 2 uses
  %i.br = load i64, ptr %i.g, align 8, !tbaa !34
  %i.bs = sub i64 4611686018427387903, %i.br
  %i.bt = icmp ult i64 %i.bs, %i.bq
  br i1 %i.bt, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #30
          to label %.noexc49 unwind label %bb.s

.noexc49:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48: ; preds = %bb.p
  %i.bu = load ptr, ptr %7, align 8, !tbaa !33
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bu, i64 noundef %i.bq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51 unwind label %bb.s ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48
  %i.bw = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51
  call void @_ZdlPv(ptr noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.t

bb.r:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10lexer_baseINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15token_type_nameENSB_10token_typeE.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48, %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.cb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.r
  %.pn16 = phi { ptr, i32 } [ %i.bz, %bb.r ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.ca, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aa

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.ce = icmp ult i32 %2, 17
  br i1 %i.ce, label %switch.lookup90, label %_ZN8nlohmann16json_abi_v3_12_06detail10lexer_baseINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15token_type_nameENSB_10token_typeE.exit59

switch.lookup90:                                  ; preds = %bb.u
  %9 = zext nneg i32 %2 to i64
  %10 = getelementptr [8 x i8], ptr @switch.table._ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE17exception_messageENS1_10lexer_baseISA_E10token_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.2, i64 %9
  %switch.gep91 = getelementptr i8, ptr %10, i64 -8
  %switch.load92 = load ptr, ptr %switch.gep91, align 8
  br label %_ZN8nlohmann16json_abi_v3_12_06detail10lexer_baseINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15token_type_nameENSB_10token_typeE.exit59

_ZN8nlohmann16json_abi_v3_12_06detail10lexer_baseINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15token_type_nameENSB_10token_typeE.exit59: ; preds = %bb.u, %switch.lookup90
  %.0.i58 = phi ptr [ %switch.load92, %switch.lookup90 ], [ @.str.220, %bb.u ]
  store ptr %.0.i58, ptr %i.e, align 8, !tbaa !128
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA12_KcPS9_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(12) @.str.204, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10lexer_baseINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15token_type_nameENSB_10token_typeE.exit59
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !34 ; 2 uses
  %i.ch = load i64, ptr %i.g, align 8, !tbaa !34
  %i.ci = sub i64 4611686018427387903, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.cg
  br i1 %i.cj, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i60

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #30
          to label %.noexc61 unwind label %bb.y

.noexc61:                                         ; preds = %bb.w
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i60: ; preds = %bb.v
  %i.ck = load ptr, ptr %8, align 8, !tbaa !33
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ck, i64 noundef %i.cg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit63 unwind label %bb.y ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i60
  %i.cm = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit63
  call void @_ZdlPv(ptr noundef %i.cm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.z

bb.x:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail10lexer_baseINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15token_type_nameENSB_10token_typeE.exit59
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i60, %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.cr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.x
  %.pn21 = phi { ptr, i32 } [ %i.cp, %bb.x ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.cq, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.aa

bb.z:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn18.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.bf, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %i.cu = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.f
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.cu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #29
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i8, ptr %i.a, align 8, !tbaa !39
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.c)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.b, !inline_history !43

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32, !inline_history !43
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !222  ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !223  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  tail call void @_ZdlPv(ptr noundef %i.u) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !222  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !223  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ad
  tail call void @_ZdlPv(ptr noundef %i.ae) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !205 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2
  tail call void @_ZdlPv(ptr noundef nonnull %i.ag) #31
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EED2Ev.exit

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EED2Ev.exit: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE18sax_parse_internalINS1_19json_sax_dom_parserISA_SE_EEEEbPT_(ptr noundef nonnull align 8 dereferenceable(201) %0, ptr noundef nonnull %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.critedge:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.std::vector.176", align 8   ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::parse_error", align 8 ; 11 uses
  %5 = alloca %"struct.nlohmann::json_abi_v3_12_0::detail::position_t", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::parse_error", align 8 ; 11 uses
  %11 = alloca %"struct.nlohmann::json_abi_v3_12_0::detail::position_t", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE18sax_parse_internalINS1_19json_sax_dom_parserISA_SE_EEEEbPT_:.critedge
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

bb.fv:                                            ; preds = %bb.fp
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385

bb.fw:                                            ; preds = %bb.fq
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fr
  %i.pw = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %58, align 8, !tbaa !82
  %i.px = getelementptr inbounds nuw i8, ptr %58, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.px) #29, !inline_history !144
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %58) #29, !inline_history !144
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pn120 = phi { ptr, i32 } [ %i.pw, %bb.fx ], [ %i.pv, %bb.fw ] ; 2 uses
  %i.py = load ptr, ptr %60, align 8, !tbaa !33   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383: ; preds = %bb.fy
  call void @_ZdlPv(ptr noundef %i.py) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383, %bb.fv
  %.pn120.pn = phi { ptr, i32 } [ %i.pu, %bb.fv ], [ %.pn120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383 ], [ %.pn120, %bb.fy ] ; 2 uses
  %i.qb = load ptr, ptr %61, align 8, !tbaa !33   ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.qd = icmp eq ptr %i.qb, %i.qc
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385
  call void @_ZdlPv(ptr noundef %i.qb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386, %bb.fu
  %.pn120.pn.pn = phi { ptr, i32 } [ %i.pt, %bb.fu ], [ %.pn120.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386 ], [ %.pn120.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #29
  %i.qe = load ptr, ptr %57, align 8, !tbaa !33   ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.qg = icmp eq ptr %i.qe, %i.qf
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388
  call void @_ZdlPv(ptr noundef %i.qe) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389, %bb.ft
  %.pn120.pn.pn.pn = phi { ptr, i32 } [ %i.ps, %bb.ft ], [ %.pn120.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389 ], [ %.pn120.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #29
  br label %bb.ga

.loopexit:                                        ; preds = %bb.ao, %bb.b, %_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE6stringERS6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.384 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %i.mo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i196 ], [ %i.oa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361 ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ true, %_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE6stringERS6_.exit ], [ false, %bb.b ], [ false, %bb.ao ]
  %i.qh = load ptr, ptr %2, align 8, !tbaa !222   ; 2 uses
  %.not.i.i = icmp eq ptr %i.qh, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.fz

bb.fz:                                            ; preds = %.loopexit
  %i.qi = load ptr, ptr %i.k, align 8, !tbaa !223 ; 2 uses
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = ptrtoint ptr %i.qh to i64
  %i.ql = sub i64 %i.qj, %i.qk
  %i.qm = ashr exact i64 %i.ql, 3
  %i.qn = sub nsw i64 0, %i.qm
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.qi, i64 %i.qn
  call void @_ZdlPv(ptr noundef %i.qo) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %.loopexit, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i1 %.384

bb.ga:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %.pn142 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn137.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323 ], [ %.pn132.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ], [ %.pn127.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370 ], [ %.pn120.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391 ], [ %.pn98.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.pn115.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %.pn110.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn105.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %.pn93.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %.pn89.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ]
  %i.qp = load ptr, ptr %2, align 8, !tbaa !222   ; 2 uses
  %.not.i.i392 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i392, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit393, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.qq = load ptr, ptr %i.k, align 8, !tbaa !223 ; 2 uses
  %i.qr = ptrtoint ptr %i.qq to i64
  %i.qs = ptrtoint ptr %i.qp to i64
  %i.qt = sub i64 %i.qr, %i.qs
  %i.qu = ashr exact i64 %i.qt, 3
  %i.qv = sub nsw i64 0, %i.qu
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.qq, i64 %i.qv
  call void @_ZdlPv(ptr noundef %i.qw) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit393

_ZNSt13_Bvector_baseISaIbEED2Ev.exit393:          ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn142
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE11parse_errorINS1_11parse_errorEEEbmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8, !tbaa !204
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.c = load i8, ptr %i.b, align 1, !tbaa !203, !range !117, !noundef !108
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 2 uses
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail11parse_errorC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %3) #29
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.u = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0  ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.w = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0   ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !36
  %i.ad = and i64 %i.x, %i.ac
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !36
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !36
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !36
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %4 = icmp samesign ugt i64 %.024.i.i.i.i.i, 1
  br i1 %4, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !547

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.ak = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.al = load i64, ptr %1, align 8, !tbaa !36
  %i.am = or i64 %i.al, %i.ak
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.an = xor i64 %i.ak, -1
  %i.ao = load i64, ptr %1, align 8, !tbaa !36
  %i.ap = and i64 %i.ao, %i.an
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.ap, %bb.f ], [ %i.am, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !36
  %i.aq = add i32 %i.f, 1
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !224
  %i.ar = icmp eq i32 %i.f, 63
  br i1 %i.ar, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !224
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.as, ptr %i.a, align 8, !tbaa !222
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.at = load ptr, ptr %0, align 8, !tbaa !222   ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = sub i64 %i.g, %i.au                     ; 2 uses
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = zext i32 %i.f to i64
  %i.ay = add nsw i64 %i.aw, %i.ax                ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775744
  br i1 %i.az, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.179) #30
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.ba = add i64 %.sroa.speculated.i, %i.ay      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ay
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775744)
  %i.bd = add nuw nsw i64 %i.bc, 63
  %i.be = select i1 %i.bb, i64 9223372036854775807, i64 %i.bd ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1152921504606846968
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #34 ; 5 uses
  %i.bi = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bj = sub i64 %i.bi, %i.au                    ; 4 uses
  %i.bk = icmp sgt i64 %i.bj, 8
  br i1 %i.bk, label %bb.j, label %bb.k, !prof !118

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.at, i64 %i.bj, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bl = icmp eq i64 %i.bj, 8
  br i1 %i.bl, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bm = load i64, ptr %i.at, align 8, !tbaa !36
  store i64 %i.bm, ptr %i.bh, align 8, !tbaa !36
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.l, %bb.k, %bb.j
  %i.bn = getelementptr inbounds i8, ptr %i.bh, i64 %i.bj ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt13_Bit_iteratorppEi.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.bo = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ce, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bp = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !36
  %i.bs = and i64 %i.br, %i.bq
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bs, 0
  %i.bt = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bu = shl nuw i64 1, %i.bt                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bv = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !36
  %i.bw = or i64 %i.bv, %i.bu
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bx = xor i64 %i.bu, -1
  %i.by = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !36
  %i.bz = and i64 %i.by, %i.bx
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.bz, %bb.n ], [ %i.bw, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ca = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.cb = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.cb, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.cb, i32 0, i32 %i.ca
  %i.cc = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.cd = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.cd, i32 0, i32 %i.cc ; 4 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.cd, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 5 uses
  %i.ce = add nsw i64 %.020.i.i.i.i.i.i, -1
  %5 = icmp samesign ugt i64 %.020.i.i.i.i.i.i, 1
  br i1 %5, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !548

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.cf = add i32 %.sroa.55.1.i.i.i.i.i.i, 1
  %i.cg = icmp eq i32 %.sroa.55.1.i.i.i.i.i.i, 63
  br i1 %i.cg, label %bb.o, label %_ZNSt13_Bit_iteratorppEi.exit

bb.o:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i, i64 8
  br label %_ZNSt13_Bit_iteratorppEi.exit

_ZNSt13_Bit_iteratorppEi.exit:                    ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, %bb.o
  %.sroa.03.0.lcssa.i.i.i.i.i.i110 = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bn, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.sroa.55.0.lcssa.i.i.i.i.i.i109 = phi i32 [ 63, %bb.o ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ]
  %.sroa.683.0 = phi i32 [ 0, %bb.o ], [ %i.cf, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 1, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %.sroa.082.0 = phi ptr [ %i.ch, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bn, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %i.ci = zext nneg i32 %.sroa.55.0.lcssa.i.i.i.i.i.i109 to i64
  %i.cj = shl nuw i64 1, %i.ci                    ; 2 uses
  br i1 %3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.ck = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !36
  %i.cl = or i64 %i.ck, %i.cj
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.cm = xor i64 %i.cj, -1
  %i.cn = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !36
  %i.co = and i64 %i.cn, %i.cm
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge111 = phi i64 [ %i.co, %bb.q ], [ %i.cl, %bb.p ]
  store i64 %storemerge111, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !36
  %.sroa.2.0.copyload.i55 = load i32, ptr %i.e, align 8
  %i.cp = sub i64 %i.g, %i.bi
  %i.cq = shl nsw i64 %i.cp, 3
  %i.cr = zext i32 %.sroa.2.0.copyload.i55 to i64
  %i.cs = zext i32 %2 to i64
  %i.ct = sub nsw i64 %i.cr, %i.cs
  %i.cu = add i64 %i.ct, %i.cq                    ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt14_Bit_referenceaSEb.exit53, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66
  %.024.i.i.i.i.i62 = phi i64 [ %i.dl, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %i.cu, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i63 = phi ptr [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i64 = phi i32 [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i69, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %2, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i68, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %1, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %i.cw = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = zext nneg i32 %.sroa.59.022.i.i.i.i.i64 to i64
  %i.cz = shl nuw i64 1, %i.cy                    ; 2 uses
  %i.da = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !36
  %i.db = and i64 %i.da, %i.cx
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dc = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !36
  %i.dd = or i64 %i.dc, %i.cz
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = xor i64 %i.cz, -1
  %i.df = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !36
  %i.dg = and i64 %i.df, %i.de
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.dd, %bb.r ], [ %i.dg, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !36
  %i.dh = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.di = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.di, i64 8, i64 0
  %spec.select.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i69 = select i1 %i.di, i32 0, i32 %i.dh
  %i.dj = add i32 %.sroa.59.022.i.i.i.i.i64, 1
  %i.dk = icmp eq i32 %.sroa.59.022.i.i.i.i.i64, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i70 = select i1 %i.dk, i32 0, i32 %i.dj ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dk, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i63, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %i.dl = add nsw i64 %.024.i.i.i.i.i62, -1
  %6 = icmp samesign ugt i64 %.024.i.i.i.i.i62, 1
  br i1 %6, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !549

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.at, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.dm = ashr exact i64 %i.av, 3
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dn
  tail call void @_ZdlPv(ptr noundef %i.do) #31
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.dp = lshr i64 %i.be, 6
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dp
  store ptr %i.dq, ptr %i.c, align 8, !tbaa !223
  store ptr %i.bh, ptr %0, align 8
  %.sroa.587.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.587.0..sroa_idx88, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i59, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i58, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE12start_objectEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !229
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !205
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.l, ptr %i.a, align 4, !tbaa !90
  store i8 0, ptr %i.b, align 1, !tbaa !232
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SC_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SC_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !122
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.p), !inline_history !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !222  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !223
  %.not.i = icmp eq ptr %i.u, %i.w
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SC_.exit
  %i.x = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !224
  %i.y = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.y, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !224
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !222
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.aa = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !36
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !36
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = load i64, ptr %i.u, align 8, !tbaa !36
  %i.ag = and i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.u, align 8, !tbaa !36
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.g:                                             ; preds = %_ZNKSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEclEiS3_SC_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.s)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i8 1, ptr %i.c, align 1, !tbaa !42
  %i.ai = call { i8, ptr } @_ZN8nlohmann16json_abi_v3_12_06detail28json_sax_dom_callback_parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE12handle_valueINS1_7value_tEEESt4pairIbPSA_EOT_b(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i1 noundef zeroext true)
  %i.aj = extractvalue { i8, ptr } %i.ai, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !229 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !233
  %.not.i15 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.e, align 8, !tbaa !229
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE9push_backERKS9_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !205 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #30
  unreachable

_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #34 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !55
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #31
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit16.i.i
  store ptr %i.az, ptr %i.d, align 8, !tbaa !205
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !229
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !233
  br label %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE9push_backERKS9_.exit

_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE9push_backERKS9_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i
  %i.be = phi ptr [ %i.ak, %bb.h ], [ %i.ba, %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i ]
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !55 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  %.not12 = icmp eq i64 %1, -1
  %or.cond = or i1 %.not12, %.not
  br i1 %or.cond, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS9_EE9push_backERKS9_.exit
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !41  ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 3
  br i1 %i.bh, label %switch.lookup, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bi = zext nneg i8 %i.bg to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE11start_arrayEm, i64 %i.bi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE8max_sizeEv.exit: ; preds = %bb.m, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 1, %bb.m ]
  %i.bj = icmp ugt i64 %1, %.0.i
end_hunk_5
begin_hunk_6_@_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPNS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_:.noexc.i

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_JRKS8_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i.i, %.invoke.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !33, !alias.scope !582 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.j
  br i1 %i.ak, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.aj) #31
  br label %.body

_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_S8_RKS8_EEET_DpOT0_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_JRKS8_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i.i
  %i.al = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.h
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_S8_RKS8_EEET_DpOT0_.exit
  call void @_ZdlPv(ptr noundef %i.al) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_S8_RKS8_EEET_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.an = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.aq = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.b
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  call void @_ZdlPv(ptr noundef %i.aq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.as = load ptr, ptr %4, align 8, !tbaa !33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.at, align 8, !tbaa !157
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull %i.as)
          to label %bb.d unwind label %.body20

.body20:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #29
  %i.aw = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.j
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, i64 16), ptr %0, align 8, !tbaa !82
  %i.ay = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.j
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ay) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.e:                                             ; preds = %.noexc.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.f:                                             ; preds = %.noexc
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bc = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.h
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.bc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.be = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  call void @_ZdlPv(ptr noundef %i.be) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.f ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ] ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.b
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  call void @_ZdlPv(ptr noundef %i.bh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.e ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %.body20
  call void @_ZdlPv(ptr noundef %i.aw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %.body20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn12 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.av, %.body20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn12
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #29, !inline_history !144
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #29, !inline_history !144
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 4 uses
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i.i ] ; 4 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !35
  %i.p = load i8, ptr %.0812.i.i.i.i.i.i, align 1, !tbaa !42 ; 2 uses
  %i.q = load i8, ptr %2, align 8, !tbaa !42
  store i8 %i.q, ptr %.0812.i.i.i.i.i.i, align 1, !tbaa !42
  store i8 %i.p, ptr %2, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.s = load i64, ptr %i.n, align 8, !tbaa !35
  store i64 %i.s, ptr %i.r, align 8, !tbaa !35
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !35
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext %i.p)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i.i unwind label %bb.d, !inline_history !43

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #32, !inline_history !43
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i, i64 16
  %i.x = add nsw i64 %.013.i.i.i.i.i.i, -1
  %3 = icmp samesign ugt i64 %.013.i.i.i.i.i.i, 1
  br i1 %3, label %bb.c, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit.loopexit.i, !llvm.loop !583

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit.loopexit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i.i
  %.pre.pre.i = load ptr, ptr %i.g, align 8, !tbaa !140
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit.loopexit.i, %bb.b
  %.pre.i = phi ptr [ %.pre.pre.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit.loopexit.i ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.e

bb.e:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit.i, %bb.a
  %i.y = phi ptr [ %.pre.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !140
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.ab = load i8, ptr %i.z, align 8, !tbaa !39
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i8 noundef zeroext %i.ab)
          to label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS8_SA_EE.exit unwind label %bb.f, !inline_history !43

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #32, !inline_history !43
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS8_SA_EE.exit: ; preds = %bb.e
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA25_KcPS9_EEET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !35
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %i.d = load ptr, ptr %2, align 8, !tbaa !128
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #33
  %i.f = add i64 %i.e, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %1) #29 ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !34
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(25) %1, i64 noundef %i.g)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !128    ; 2 uses
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #29 ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !34
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %.invoke, label %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i

.invoke:                                          ; preds = %.noexc6, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #30
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i: ; preds = %.noexc6
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l, i64 noundef %i.m)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_KcJPS9_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSE_OSF_DpOT1_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.invoke, %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.r

_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_KcJPS9_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSE_OSF_DpOT1_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.185", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.188", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i

_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !14

_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEE11lower_boundERSC_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit

_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit:        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEE11lower_boundERSC_.exit, %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit
  %.08.lcssa.i.i.i11 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit ], [ %.19.i.i.i, %_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %1, ptr %2, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.x = call ptr @_ZNSt8_Rb_treeI10alt_stringSt4pairIKS0_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS4_14adl_serializerES7_IhSaIhEEvEEESt10_Select1stISC_ESt4lessIS0_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit
  %.sroa.06.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSE_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !41
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.c)
end_hunk_6
begin_hunk_7_@_ZN7doctest6detail19stringifyBinaryExprIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEESB_EENS_6StringERKT_PKcRKT0_:bb.a
bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.c = invoke noundef ptr @_ZN7doctest6detail8tlssPushEv()
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8nlohmann16json_abi_v3_12_0lsERSoRKNS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES4_IhSaIhEEvEE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc10 unwind label %bb.g   ; 0 uses

.noexc10:                                         ; preds = %.noexc
  invoke void @_ZN7doctest6detail7tlssPopEv(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %7)
          to label %_ZN7doctest8toStringIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKSE_.exit unwind label %bb.g

_ZN7doctest8toStringIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKSE_.exit: ; preds = %.noexc10
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN7doctest8toStringIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKSE_.exit
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.e:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %.noexc10, %.noexc, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZN7doctest8toStringIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKSE_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.f, %bb.f ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.e, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !120    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store i8 0, ptr %.08.i.i.i.prol, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !35
  %i.q = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !740

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store i8 0, ptr %.08.i.i.i, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store i8 0, ptr %i.u, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store ptr null, ptr %i.x, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store i8 0, ptr %i.y, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store ptr null, ptr %i.z, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i8 0, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store ptr null, ptr %i.ab, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store i8 0, ptr %i.ac, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store ptr null, ptr %i.ad, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  store i8 0, ptr %i.ae, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store ptr null, ptr %i.af, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store i8 0, ptr %i.ag, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  store ptr null, ptr %i.ah, align 8, !tbaa !35
  %i.ai = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !741

_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !140
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.249) #30
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 576460752303423487) ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #34 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter43 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit ]
  %prol.iter45 = phi i64 [ %prol.iter45.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit ]
  store i8 0, ptr %.08.i.i.i31.prol, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !35
  %i.ar = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16 ; 2 uses
  %prol.iter45.next = add i64 %prol.iter45, 1     ; 2 uses
  %prol.iter45.cmp.not = icmp eq i64 %prol.iter45.next, %xtraiter43
  br i1 %prol.iter45.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !742

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %2 = icmp slt i64 %1, 8
  br i1 %2, label %_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bj, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bi, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store i8 0, ptr %.08.i.i.i31, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store i8 0, ptr %i.au, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store ptr null, ptr %i.av, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store i8 0, ptr %i.aw, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store ptr null, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store i8 0, ptr %i.ay, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store ptr null, ptr %i.az, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i8 0, ptr %i.ba, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store ptr null, ptr %i.bb, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store i8 0, ptr %i.bc, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store ptr null, ptr %i.bd, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  store i8 0, ptr %i.be, align 8, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store ptr null, ptr %i.bf, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  store i8 0, ptr %i.bg, align 8, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  store ptr null, ptr %i.bh, align 8, !tbaa !35
  %i.bi = add i64 %.057.i.i.i32, -8               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 128
  %.not.i.i.i33.7 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !741

_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not11.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i: ; preds = %_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit35, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.bm, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0912.i.i.i = phi ptr [ %i.bl, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit35 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0912.i.i.i, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.0912.i.i.i, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  store ptr null, ptr %i.bk, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %.not.i.i.i37 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i, !llvm.loop !5

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit35
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit40, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #31
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit40

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit40: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !120
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %1
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !140
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bo, ptr %i.h, align 8, !tbaa !145
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEmS9_ET_SB_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit40, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE13patch_inplaceERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.219, align 1            ; 4 uses
  %3 = alloca %class.anon.221, align 8            ; 7 uses
  %4 = alloca %class.anon.222, align 8            ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl.223", align 8 ; 11 uses
  %8 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl.223", align 8 ; 9 uses
  %9 = alloca %class.anon.224, align 8            ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %class.alt_string, align 8         ; 13 uses
  %13 = alloca %class.alt_string, align 8         ; 10 uses
  %14 = alloca %class.alt_string, align 8         ; 10 uses
  %15 = alloca %class.alt_string, align 8         ; 11 uses
  %16 = alloca %class.alt_string, align 8         ; 10 uses
  %17 = alloca %"class.nlohmann::json_abi_v3_12_0::json_pointer", align 8 ; 14 uses
  %18 = alloca %class.alt_string, align 8         ; 10 uses
  %19 = alloca %class.alt_string, align 8         ; 10 uses
  %20 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %21 = alloca %class.alt_string, align 8         ; 10 uses
  %22 = alloca %class.alt_string, align 8         ; 10 uses
  %23 = alloca %class.alt_string, align 8         ; 11 uses
  %24 = alloca %class.alt_string, align 8         ; 10 uses
  %25 = alloca %class.alt_string, align 8         ; 10 uses
  %26 = alloca %"class.nlohmann::json_abi_v3_12_0::json_pointer", align 8 ; 10 uses
  %27 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %28 = alloca %class.alt_string, align 8         ; 11 uses
  %29 = alloca %class.alt_string, align 8         ; 10 uses
  %30 = alloca %class.alt_string, align 8         ; 10 uses
  %31 = alloca %"class.nlohmann::json_abi_v3_12_0::json_pointer", align 8 ; 9 uses
  %32 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %33 = alloca %class.alt_string, align 8         ; 10 uses
  %34 = alloca %class.alt_string, align 8         ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %class.alt_string, align 8         ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %0, ptr %3, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %0, ptr %4, align 8, !tbaa !241
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !55
  %i.b = load i8, ptr %1, align 8, !tbaa !41
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit, label %bb.b, !prof !118

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.250, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail11parse_error6createIPKNS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_imRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::parse_error") align 8 %i.d, i32 noundef 104, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.d, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #30
          to label %bb.cb unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br i1 %.031, label %bb.f, label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br i1 %.031, label %bb.f, label %bb.ca

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn103327 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #29
  br label %bb.ca

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  store ptr %1, ptr %7, align 8, !tbaa !142, !alias.scope !770
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i64 0, ptr %i.j, align 8
  store i64 -9223372036854775808, ptr %i.k, align 8, !tbaa !66, !alias.scope !770
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35, !noalias !770 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55, !noalias !770
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !55, !alias.scope !770
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  store ptr %1, ptr %8, align 8, !tbaa !142, !alias.scope !773
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 0, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %i.q, align 8, !tbaa !66, !alias.scope !773
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55, !noalias !773
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !55, !alias.scope !773
end_hunk_7
begin_hunk_8_@_ZZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE13patch_inplaceERKS8_ENKUlRKS4_SC_bE_clESC_SC_b:bb.a
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.z = sub i64 %i.i, %i.u
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i

_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i:    ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aa = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.aa, ptr %i.g, ptr %.19.i.i.i
  br label %_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEE4findERSC_.exit

_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEE4findERSC_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeI10alt_stringSt4pairIKS0_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS4_14adl_serializerES7_IhSaIhEEvEEESt10_Select1stISC_ESt4lessIS0_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.g, %bb.a ], [ %i.g, %_ZNSt8_Rb_treeI10alt_stringSt4pairIKS0_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS4_14adl_serializerES7_IhSaIhEEvEEESt10_Select1stISC_ESt4lessIS0_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ad = icmp eq i64 %i.ac, 2
  br i1 %i.ad, label %_ZNK10alt_stringeqIA3_cEEbRKT_.exit, label %_ZNK10alt_stringeqIA3_cEEbRKT_.exit.thread51

_ZNK10alt_stringeqIA3_cEEbRKT_.exit.thread51:     ; preds = %_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEE4findERSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  br label %bb.d

_ZNK10alt_stringeqIA3_cEEbRKT_.exit:              ; preds = %_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEE4findERSC_.exit
  %i.ae = load ptr, ptr %1, align 8, !tbaa !33
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = icmp ne i16 %i.af, 28783
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  br i1 %i.ai, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %_ZNK10alt_stringeqIA3_cEEbRKT_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aj, ptr noundef nonnull align 1 dereferenceable(9) @.str.262, i64 9, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 9, ptr %i.ak, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %i.al, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.critedge

bb.d:                                             ; preds = %_ZNK10alt_stringeqIA3_cEEbRKT_.exit.thread51, %_ZNK10alt_stringeqIA3_cEEbRKT_.exit
  store i8 39, ptr %i.a, align 1, !tbaa !35
  call void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA12_KcRK10alt_stringcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(12) @.str.263, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.pre = load ptr, ptr %0, align 8, !tbaa !790
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre61 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %._crit_edge.i.i
  %i.am = phi ptr [ %.pre61, %bb.d ], [ %i.d, %._crit_edge.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = icmp eq ptr %.sroa.0.0.i.i, %i.an
  br i1 %i.ao, label %bb.e, label %bb.i, !prof !105

bb.e:                                             ; preds = %.critedge
  %i.ap = call ptr @__cxa_allocate_exception(i64 40) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_RA20_KcRK10alt_stringRA2_SB_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(20) @.str.264, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.227)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %0, align 8, !tbaa !790, !nonnull !108, !align !109
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail11parse_error6createIPKNS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_imRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::parse_error") align 8 %i.ap, i32 noundef 105, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.aq)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr %i.ap, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #30
          to label %bb.p unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.sink.split

bb.h:                                             ; preds = %bb.g, %bb.f
  %.014 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.at) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br i1 %.014, label %.sink.split, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br i1 %.014, label %.sink.split, label %bb.o

bb.i:                                             ; preds = %.critedge
  br i1 %3, label %bb.j, label %.critedge37

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !41
  %.not = icmp eq i8 %i.ax, 3
  br i1 %.not, label %.critedge37, label %bb.k, !prof !118

bb.k:                                             ; preds = %bb.j
  %i.ay = call ptr @__cxa_allocate_exception(i64 40) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_RA27_KcRK10alt_stringRA2_SB_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(27) @.str.265, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.227)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %0, align 8, !tbaa !790, !nonnull !108, !align !109
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail11parse_error6createIPKNS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_imRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::parse_error") align 8 %i.ay, i32 noundef 105, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.az)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr %i.ay, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail11parse_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #30
          to label %bb.p unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread: ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.sink.split

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i1 [ false, %bb.m ], [ true, %bb.l ]  ; 2 uses
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bc = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.bc) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.0, label %.sink.split, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.0, label %.sink.split, label %bb.o

.critedge37:                                      ; preds = %bb.i, %bb.j
  %i.bf = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %.critedge37
  call void @_ZdlPv(ptr noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %.critedge37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret ptr %i.bi

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  %.pn30.pn.ph = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @__cxa_free_exception(ptr %.sink) #29
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn30.pn = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.pn30.pn.ph, %.sink.split ]
  %i.bj = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %.critedge35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.bj) #31
  br label %.critedge35

.critedge35:                                      ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn30.pn

bb.p:                                             ; preds = %bb.m, %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE13patch_inplaceERKS8_ENKUlRKS4_E_clESC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34
  switch i64 %i.b, label %_ZNK10alt_stringeqIA4_cEEbRKT_.exit.thread [
    i64 3, label %_ZNK10alt_stringeqIA4_cEEbRKT_.exit
    i64 6, label %_ZNK10alt_stringeqIA7_cEEbRKT_.exit
    i64 7, label %_ZNK10alt_stringeqIA8_cEEbRKT_.exit
    i64 4, label %_ZNK10alt_stringeqIA5_cEEbRKT_.exit
  ]

_ZNK10alt_stringeqIA4_cEEbRKT_.exit:              ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.d = load i16, ptr %i.c, align 1
  %i.e = xor i16 %i.d, 25697
  %i.f = getelementptr i8, ptr %i.c, i64 2
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i16
  %i.i = xor i16 %i.h, 100
  %i.j = or i16 %i.e, %i.i
  %i.k = icmp ne i16 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  %spec.select24 = select i1 %i.m, i32 0, i32 6
  br label %_ZNK10alt_stringeqIA4_cEEbRKT_.exit.thread

_ZNK10alt_stringeqIA7_cEEbRKT_.exit:              ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %2 = load i32, ptr %.pre, align 1
  %3 = xor i32 %2, 1869440370
  %4 = getelementptr i8, ptr %.pre, i64 4
  %5 = load i16, ptr %4, align 1
  %6 = zext i16 %5 to i32
  %7 = xor i32 %6, 25974
  %8 = or i32 %3, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %i.n = icmp eq i32 %10, 0
  %spec.select25 = select i1 %i.n, i32 1, i32 6
  br label %_ZNK10alt_stringeqIA4_cEEbRKT_.exit.thread

_ZNK10alt_stringeqIA8_cEEbRKT_.exit:              ; preds = %bb.a
  %.pre22 = load ptr, ptr %1, align 8, !tbaa !33  ; 2 uses
  %11 = load i32, ptr %.pre22, align 1
  %12 = xor i32 %11, 1819305330
  %13 = getelementptr i8, ptr %.pre22, i64 3
  %14 = load i32, ptr %13, align 1
  %15 = xor i32 %14, 1701011820
  %16 = or i32 %12, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %i.o = icmp eq i32 %18, 0
  %spec.select26 = select i1 %i.o, i32 2, i32 6
  br label %_ZNK10alt_stringeqIA4_cEEbRKT_.exit.thread

_ZNK10alt_stringeqIA5_cEEbRKT_.exit:              ; preds = %bb.a
  %.pre23 = load ptr, ptr %1, align 8, !tbaa !33  ; 3 uses
  %19 = load i32, ptr %.pre23, align 1
  %20 = icmp ne i32 %19, 1702260589
  %21 = zext i1 %20 to i32
  %i.p = icmp eq i32 %21, 0
  br i1 %i.p, label %_ZNK10alt_stringeqIA4_cEEbRKT_.exit.thread, label %_ZNK10alt_stringeqIA5_cEEbRKT_.exit10

_ZNK10alt_stringeqIA5_cEEbRKT_.exit10:            ; preds = %_ZNK10alt_stringeqIA5_cEEbRKT_.exit
  %i.q = load i32, ptr %.pre23, align 1
  %i.r = icmp ne i32 %i.q, 2037411683
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK10alt_stringeqIA4_cEEbRKT_.exit.thread, label %_ZNK10alt_stringeqIA5_cEEbRKT_.exit12

_ZNK10alt_stringeqIA5_cEEbRKT_.exit12:            ; preds = %_ZNK10alt_stringeqIA5_cEEbRKT_.exit10
  %i.u = load i32, ptr %.pre23, align 1
  %i.v = icmp ne i32 %i.u, 1953719668
  %i.w = zext i1 %i.v to i32
  %bcmp.i.i11.fr = freeze i32 %i.w
  %i.x = icmp eq i32 %bcmp.i.i11.fr, 0
  %spec.select = select i1 %i.x, i32 5, i32 6
  br label %_ZNK10alt_stringeqIA4_cEEbRKT_.exit.thread

_ZNK10alt_stringeqIA4_cEEbRKT_.exit.thread:       ; preds = %_ZNK10alt_stringeqIA8_cEEbRKT_.exit, %_ZNK10alt_stringeqIA7_cEEbRKT_.exit, %_ZNK10alt_stringeqIA4_cEEbRKT_.exit, %_ZNK10alt_stringeqIA5_cEEbRKT_.exit12, %bb.a, %_ZNK10alt_stringeqIA5_cEEbRKT_.exit10, %_ZNK10alt_stringeqIA5_cEEbRKT_.exit
  %.0 = phi i32 [ 4, %_ZNK10alt_stringeqIA5_cEEbRKT_.exit10 ], [ 6, %bb.a ], [ %spec.select24, %_ZNK10alt_stringeqIA4_cEEbRKT_.exit ], [ %spec.select26, %_ZNK10alt_stringeqIA8_cEEbRKT_.exit ], [ 3, %_ZNK10alt_stringeqIA5_cEEbRKT_.exit ], [ %spec.select, %_ZNK10alt_stringeqIA5_cEEbRKT_.exit12 ], [ %spec.select25, %_ZNK10alt_stringeqIA7_cEEbRKT_.exit ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE13patch_inplaceERKS8_ENKUlRNS0_12json_pointerIS4_EESA_E_clESD_SA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 4 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::json_pointer", align 8 ; 10 uses
  %5 = alloca %class.alt_string, align 8          ; 14 uses
  %6 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %7 = alloca %class.alt_string, align 8          ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl.223", align 8 ; 3 uses
  %11 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 9 uses
  %12 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.g = load ptr, ptr %0, align 8, !tbaa !797, !nonnull !108, !align !109 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !42    ; 2 uses
  %i.i = load i8, ptr %3, align 8, !tbaa !42
  store i8 %i.i, ptr %i.g, align 8, !tbaa !42
  store i8 %i.h, ptr %3, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35
  store i64 %i.l, ptr %i.j, align 8, !tbaa !35
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.k, align 8, !tbaa !35
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef zeroext %i.h)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.c, !inline_history !43

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #32, !inline_history !43
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZNK8nlohmann16json_abi_v3_12_012json_pointerI10alt_stringE3topEv(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::json_pointer") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !69     ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.v = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp eq i64 %i.t, %i.y
  br i1 %i.z, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_0neI10alt_stringS2_EEbRKNS0_12json_pointerIT_EERKNS3_IT0_EE.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %_ZNK10alt_stringeqERKS_.exit.thread.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZNK10alt_stringeqERKS_.exit.thread.i.i.i.i.i.i.i ], [ %i.v, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZNK10alt_stringeqERKS_.exit.thread.i.i.i.i.i.i.i ], [ %i.q, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.af = icmp eq i64 %i.ab, 0
  br i1 %i.af, label %_ZNK10alt_stringeqERKS_.exit.thread.i.i.i.i.i.i.i, label %_ZNK10alt_stringeqERKS_.exit.i.i.i.i.i.i.i

_ZNK10alt_stringeqERKS_.exit.i.i.i.i.i.i.i:       ; preds = %bb.f
  %i.ag = load ptr, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !33
  %i.ah = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !33
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ah, ptr %i.ag, i64 %i.ab)
  %i.ai = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZNK10alt_stringeqERKS_.exit.thread.i.i.i.i.i.i.i, label %.loopexit

_ZNK10alt_stringeqERKS_.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNK10alt_stringeqERKS_.exit.i.i.i.i.i.i.i, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_0neI10alt_stringS2_EEbRKNS0_12json_pointerIT_EERKNS3_IT0_EE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !791

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNK10alt_stringeqERKS_.exit.i.i.i.i.i.i.i, %bb.d
  %i.al = load ptr, ptr %0, align 8, !tbaa !797, !nonnull !108, !align !109
  %i.am = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_012json_pointerI10alt_stringE11get_checkedINS0_10basic_jsonISt3mapSt6vectorS2_blmdSaNS0_14adl_serializerES7_IhSaIhEEvEEEERT_PSC_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %_ZN8nlohmann16json_abi_v3_12_0neI10alt_stringS2_EEbRKNS0_12json_pointerIT_EERKNS3_IT0_EE.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %.loopexit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZN8nlohmann16json_abi_v3_12_0neI10alt_stringS2_EEbRKNS0_12json_pointerIT_EERKNS3_IT0_EE.exit: ; preds = %_ZNK10alt_stringeqERKS_.exit.thread.i.i.i.i.i.i.i, %.loopexit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8nlohmann16json_abi_v3_12_012json_pointerI10alt_stringE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.h unwind label %bb.m       ; 2 uses

bb.h:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_0neI10alt_stringS2_EEbRKNS0_12json_pointerIT_EERKNS3_IT0_EE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !30
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.as, ptr %i.b, align 8, !tbaa !36
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.au, ptr %5, align 8, !tbaa !33
  %i.av = load i64, ptr %i.b, align 8, !tbaa !36
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !35
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.h
  %i.aw = phi ptr [ %i.au, %.noexc ], [ %i.ap, %bb.h ] ; 2 uses
  switch i64 %i.as, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !35
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !35
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !34
  %i.ba = load ptr, ptr %5, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_012json_pointerI10alt_stringE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.l unwind label %bb.af

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %0, align 8, !tbaa !797, !nonnull !108, !align !109
  %i.bd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_012json_pointerI10alt_stringE11get_checkedINS0_10basic_jsonISt3mapSt6vectorS2_blmdSaNS0_14adl_serializerES7_IhSaIhEEvEEEERT_PSC_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE2atERKNS0_12json_pointerIS4_EE.exit49 unwind label %bb.af ; 11 uses

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE2atERKNS0_12json_pointerIS4_EE.exit49: ; preds = %bb.l
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !41
  switch i8 %i.be, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit55 [
    i8 0, label %bb.n
    i8 1, label %bb.n
    i8 2, label %bb.w
  ]

bb.m:                                             ; preds = %.noexc.i.i, %_ZN8nlohmann16json_abi_v3_12_0neI10alt_stringS2_EEbRKNS0_12json_pointerIT_EERKNS3_IT0_EE.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10alt_stringD2Ev.exit68

bb.n:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE2atERKNS0_12json_pointerIS4_EE.exit49, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE2atERKNS0_12json_pointerIS4_EE.exit49
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.o unwind label %bb.af

end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_:bb.a
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA26_KcPS9_EEET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !35
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %i.d = load ptr, ptr %2, align 8, !tbaa !128
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #33
  %i.f = add i64 %i.e, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #29 ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !34
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.g)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !128    ; 2 uses
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #29 ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !34
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %.invoke, label %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i

.invoke:                                          ; preds = %.noexc6, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #30
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i: ; preds = %.noexc6
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l, i64 noundef %i.m)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_KcJPS9_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSE_OSF_DpOT1_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.invoke, %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.r

_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_KcJPS9_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSE_OSF_DpOT1_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EERSD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::vector<nlohmann::json_abi_v3_12_0::basic_json<std::map, std::vector, alt_string>>::_Temporary_value", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !140  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !140
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.e, align 8, !tbaa !140
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %0, ptr %3, align 8, !tbaa !828
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i8 0, ptr %i.m, align 8, !tbaa !35
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2)
  invoke void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE13_M_insert_auxIS8_EEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i8, ptr %i.m, align 8, !tbaa !39
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext %i.o)
          to label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE16_Temporary_valueD2Ev.exit unwind label %bb.f, !inline_history !43

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #32, !inline_history !43
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE16_Temporary_valueD2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.r

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE16_Temporary_valueD2Ev.exit, %bb.h
  %i.t = load ptr, ptr %0, align 8, !tbaa !120
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.d
  ret ptr %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE13_M_insert_auxIS8_EEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  store ptr null, ptr %i.d, align 8, !tbaa !35
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !140
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.079.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -8
  store ptr null, ptr %i.o, align 8, !tbaa !35
  %i.p = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -16 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !42    ; 2 uses
  %i.r = load i8, ptr %3, align 8, !tbaa !42
  store i8 %i.r, ptr %i.p, align 1, !tbaa !42
  store i8 %i.q, ptr %3, align 8, !tbaa !42
  %i.s = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.t = load i64, ptr %i.m, align 8, !tbaa !35
  store i64 %i.t, ptr %i.s, align 8, !tbaa !35
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !35
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef zeroext %i.q)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i unwind label %bb.c, !inline_history !43

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #32, !inline_history !43
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i: ; preds = %bb.b
  %i.w = add nsw i64 %.011.i.i.i.i.i, -1
  %5 = icmp samesign ugt i64 %.011.i.i.i.i.i, 1
  br i1 %5, label %bb.b, label %_ZSt13move_backwardIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_ET0_T_SC_SB_.exit, !llvm.loop !16

_ZSt13move_backwardIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_ET0_T_SC_SB_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %2, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !35
  %i.y = load i8, ptr %1, align 1, !tbaa !42      ; 2 uses
  %i.z = load i8, ptr %4, align 8, !tbaa !42
  store i8 %i.z, ptr %1, align 1, !tbaa !42
  store i8 %i.y, ptr %4, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !35
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ab, align 8, !tbaa !35
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef zeroext %i.y)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.d, !inline_history !43

bb.d:                                             ; preds = %_ZSt13move_backwardIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_ET0_T_SC_SB_.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #32, !inline_history !43
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %_ZSt13move_backwardIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_ET0_T_SC_SB_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.a, align 8, !tbaa !39
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.c)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.b, !inline_history !43

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32, !inline_history !43
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !63
  %i.b = load i8, ptr %i.a, align 8, !tbaa !41
  switch i8 %i.b, label %bb.g [
    i8 1, label %bb.b
    i8 2, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.271, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !63
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPNS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::invalid_iterator") align 8 %i.c, i32 noundef 209, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.c, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #30
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #29
  br label %bb.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = getelementptr inbounds [16 x i8], ptr %i.k, i64 %1
  store ptr %i.l, ptr %i.j, align 8, !tbaa !65
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !66
  %i.o = add nsw i64 %i.n, %1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  ret ptr %0

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS4_(ptr dead_on_unwind noalias writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::iter_impl") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  store ptr %1, ptr %0, align 8, !tbaa !63, !alias.scope !831
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !alias.scope !831
  store i64 -9223372036854775808, ptr %i.b, align 8, !tbaa !66, !alias.scope !831
  %i.c = load i8, ptr %1, align 8, !tbaa !41, !noalias !831
  switch i8 %i.c, label %bb.c [
    i8 1, label %bb.d
    i8 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35, !noalias !831
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55, !noalias !831
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !55, !alias.scope !831
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit.thread

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !tbaa !66, !alias.scope !831
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35, !noalias !831 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !146  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapI10alt_stringN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS0_blmdSaNS2_14adl_serializerES4_IhSaIhEEvEESt4lessIS0_ESaISt4pairIKS0_S8_EEE4findERSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34   ; 4 uses
  %i.p = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.r) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = tail call i32 @memcmp(ptr noundef %i.u, ptr noundef %i.p, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessI10alt_stringEclERKS0_S3_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.e
  %i.w = sub i64 %i.r, %i.o
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
end_hunk_9
begin_hunk_10_@_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEA8_cTnNSt9enable_ifIXntsr3std7is_sameIT0_NT_8string_tEEE5valueEiE4typeELi0EEEvRSH_RKSG_:bb.a

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt10unique_ptrI10alt_stringZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS2_14adl_serializerES5_IhSaIhEEvE6createIS0_JRA8_KcEEEPT_DpOT0_EUlPS0_E_ED2Ev.exit5.i ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.h, ptr %i.d, align 8, !tbaa !33
  %i.i = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.i, ptr %i.e, align 8, !tbaa !35
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS4_JRA8_KcEEEPT_DpOT0_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !35
  store i8 %i.k, ptr %i.j, align 1, !tbaa !35
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS4_JRA8_KcEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 dereferenceable(8) %1, i64 %i.f, i1 false)
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS4_JRA8_KcEEEPT_DpOT0_.exit

_ZNSt10unique_ptrI10alt_stringZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS2_14adl_serializerES5_IhSaIhEEvE6createIS0_JRA8_KcEEEPT_DpOT0_EUlPS0_E_ED2Ev.exit5.i: ; preds = %.noexc.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.d) #31
  resume { ptr, i32 } %i.l

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS4_JRA8_KcEEEPT_DpOT0_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !34
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  store ptr %i.d, ptr %i.b, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEA5_cTnNSt9enable_ifIXntsr3std7is_sameIT0_NT_8string_tEEE5valueEiE4typeELi0EEEvRSH_RKSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(5) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !41
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.c)
  store i8 3, ptr %0, align 8, !tbaa !41
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !30
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.f, ptr %i.a, align 8, !tbaa !36
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt10unique_ptrI10alt_stringZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS2_14adl_serializerES5_IhSaIhEEvE6createIS0_JRA5_KcEEEPT_DpOT0_EUlPS0_E_ED2Ev.exit5.i ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.h, ptr %i.d, align 8, !tbaa !33
  %i.i = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.i, ptr %i.e, align 8, !tbaa !35
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS4_JRA5_KcEEEPT_DpOT0_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !35
  store i8 %i.k, ptr %i.j, align 1, !tbaa !35
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS4_JRA5_KcEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 dereferenceable(5) %1, i64 %i.f, i1 false)
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS4_JRA5_KcEEEPT_DpOT0_.exit

_ZNSt10unique_ptrI10alt_stringZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS0_blmdSaNS2_14adl_serializerES5_IhSaIhEEvE6createIS0_JRA5_KcEEEPT_DpOT0_EUlPS0_E_ED2Ev.exit5.i: ; preds = %.noexc.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.d) #31
  resume { ptr, i32 } %i.l

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS4_JRA5_KcEEEPT_DpOT0_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !34
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  store ptr %i.d, ptr %i.b, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS8_SA_EEEEvSF_T_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %5 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %6 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %.not107 = icmp eq ptr %2, %3
  br i1 %.not107, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140  ; 14 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !839

_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !140
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.g, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.v, %i.l
  %i.x = ashr exact i64 %i.w, 4                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i51
  %.011.i.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i51 ], [ %i.aj, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i51 ], [ %i.ac, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.079.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i51 ], [ %i.aa, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds i8, ptr %.079.i.i.i.i.i, i64 -8
  store ptr null, ptr %i.ab, align 8, !tbaa !35
  %i.ac = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -16 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !42  ; 2 uses
  %i.ae = load i8, ptr %6, align 8, !tbaa !42
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !42
  store i8 %i.ad, ptr %6, align 8, !tbaa !42
  %i.af = getelementptr inbounds i8, ptr %.0610.i.i.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ag = load i64, ptr %i.z, align 8, !tbaa !35
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !35
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !35
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef zeroext %i.ad)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i unwind label %bb.f, !inline_history !43

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #32, !inline_history !43
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aj = add nsw i64 %.011.i.i.i.i.i, -1
  %7 = icmp samesign ugt i64 %.011.i.i.i.i.i, 1
  br i1 %7, label %bb.e, label %_ZSt13move_backwardIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_ET0_T_SC_SB_.exit, !llvm.loop !16

_ZSt13move_backwardIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_ET0_T_SC_SB_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ak = icmp sgt i64 %i.d, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_ET0_T_SC_SB_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i55, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i52 ], [ %i.au, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i55 ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i.i52 ], [ %i.at, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i55 ] ; 4 uses
  %.0911.i.i.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i.i.i52 ], [ %i.as, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i55 ] ; 2 uses
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i)
  %i.am = load i8, ptr %.0812.i.i.i.i.i, align 1, !tbaa !42 ; 2 uses
  %i.an = load i8, ptr %5, align 8, !tbaa !42
  store i8 %i.an, ptr %.0812.i.i.i.i.i, align 1, !tbaa !42
  store i8 %i.am, ptr %5, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i54 = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !35
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !35
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i54, ptr %i.al, align 8, !tbaa !35
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i8 noundef zeroext %i.am)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i55 unwind label %bb.h, !inline_history !43

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #32, !inline_history !43
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i55: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16
  %i.au = add nsw i64 %.013.i.i.i.i.i53, -1
  %8 = icmp samesign ugt i64 %.013.i.i.i.i.i53, 1
  br i1 %8, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit, !llvm.loop !840

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i55, %_ZSt13move_backwardIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_ET0_T_SC_SB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ab

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.av, %3
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.ax, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.aw, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.av, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.i

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.aw, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !841

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %i.az) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_(ptr noundef %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.l

common.resume:                                    ; preds = %bb.aa, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.dh, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #32
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit.loopexit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !140
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.be = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bf = sub nuw nsw i64 %i.d, %i.n
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf ; 3 uses
  store ptr %i.bg, ptr %i.g, align 8, !tbaa !140
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit62, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i57 ], [ %i.bg, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i57 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i58, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i59, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 16
  %.not.i.i.i.i.i60 = icmp eq ptr %i.bi, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit62.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !839

_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre116 = load ptr, ptr %i.g, align 8, !tbaa !140
  br label %_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit62

_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit62: ; preds = %_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit62.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit
  %i.bk = phi ptr [ %.pre116, %_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit62.loopexit ], [ %i.bg, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.m
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bm = ashr exact i64 %i.m, 4                  ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit70

.lr.ph.i.i.i.i.i64:                               ; preds = %_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit62
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i69, %.lr.ph.i.i.i.i.i64
  %.013.i.i.i.i.i65 = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i64 ], [ %i.bx, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i69 ] ; 2 uses
  %.0812.i.i.i.i.i66 = phi ptr [ %1, %.lr.ph.i.i.i.i.i64 ], [ %i.bw, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i69 ] ; 4 uses
  %.0911.i.i.i.i.i67 = phi ptr [ %2, %.lr.ph.i.i.i.i.i64 ], [ %i.bv, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i69 ] ; 2 uses
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i67)
  %i.bp = load i8, ptr %.0812.i.i.i.i.i66, align 1, !tbaa !42 ; 2 uses
  %i.bq = load i8, ptr %4, align 8, !tbaa !42
  store i8 %i.bq, ptr %.0812.i.i.i.i.i66, align 1, !tbaa !42
  store i8 %i.bp, ptr %4, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i66, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i68 = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.bs = load i64, ptr %i.bo, align 8, !tbaa !35
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !35
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i68, ptr %i.bo, align 8, !tbaa !35
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i8 noundef zeroext %i.bp)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i69 unwind label %bb.o, !inline_history !43

bb.o:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #32, !inline_history !43
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i69: ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i67, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i66, i64 16
  %i.bx = add nsw i64 %.013.i.i.i.i.i65, -1
  %9 = icmp samesign ugt i64 %.013.i.i.i.i.i65, 1
  br i1 %9, label %bb.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit70, !llvm.loop !840

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit70: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i.i69, %_ZSt22__uninitialized_move_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ab

bb.p:                                             ; preds = %bb.b
  %i.by = load ptr, ptr %0, align 8, !tbaa !120   ; 7 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.j, %i.bz
  %i.cb = ashr exact i64 %i.ca, 4                 ; 4 uses
  %i.cc = sub nsw i64 576460752303423487, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.d
  br i1 %i.cd, label %bb.q, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.276) #30
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.p
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 %i.d)
  %i.ce = add nsw i64 %.sroa.speculated.i, %i.cb  ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cb
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 576460752303423487)
  %i.ch = select i1 %i.cf, i64 576460752303423487, i64 %i.cg ; 3 uses
  %.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #34
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit, %bb.r
  %i.ck = phi ptr [ %i.cj, %bb.r ], [ null, %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_10alt_stringblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not11.i.i.i.i.i71 = icmp eq ptr %i.by, %1
  br i1 %.not11.i.i.i.i.i71, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i72

.lr.ph.i.i.i.i.i72:                               ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i72
  %.013.i.i.i.i.i73 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i72 ], [ %i.ck, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i74 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i72 ], [ %i.by, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i73, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i74, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.sroa.08.012.i.i.i.i.i74, align 8, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i74, i64 8
  store ptr null, ptr %i.cl, align 8, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i74, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i73, i64 16 ; 2 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %i.cm, %1
  br i1 %.not.i.i.i.i.i75, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i72, !llvm.loop !839

_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i72, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i76 = phi ptr [ %i.ck, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE11_M_allocateEm.exit ], [ %i.cn, %.lr.ph.i.i.i.i.i72 ] ; 3 uses
  br label %.lr.ph.i.i.i.i78

.lr.ph.i.i.i.i78:                                 ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i81
  %.014.i.i.i.i79 = phi ptr [ %i.cp, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i81 ], [ %.0.lcssa.i.i.i.i.i76, %_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit ] ; 3 uses
  %.sroa.08.013.i.i.i.i80 = phi ptr [ %i.co, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i81 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit ] ; 2 uses
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i79, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.013.i.i.i.i80)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i81 unwind label %bb.s

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i81: ; preds = %.lr.ph.i.i.i.i78
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i80, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i79, i64 16 ; 3 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.co, %3
  br i1 %.not.i.i.i.i82, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i78, !llvm.loop !841

bb.s:                                             ; preds = %.lr.ph.i.i.i.i78
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  %i.cs = tail call ptr @__cxa_begin_catch(ptr %i.cr) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_(ptr noundef %.0.lcssa.i.i.i.i.i76, ptr noundef nonnull %.014.i.i.i.i79)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_rethrow() #30
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  tail call void @__clang_call_terminate(ptr %i.cv) #32
  unreachable

bb.w:                                             ; preds = %bb.t
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit84: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i81
  %.not11.i.i.i.i.i85 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i85, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit91, label %.lr.ph.i.i.i.i.i86

.lr.ph.i.i.i.i.i86:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit84, %.lr.ph.i.i.i.i.i86
  %.013.i.i.i.i.i87 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i86 ], [ %i.cp, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit84 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i88 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i86 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit84 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i87, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i88, i64 16, i1 false), !tbaa.struct !71
  store i8 0, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i88, i64 8
  store ptr null, ptr %i.cw, align 8, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i88, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i87, i64 16 ; 2 uses
  %.not.i.i.i.i.i89 = icmp eq ptr %i.cx, %i.h
  br i1 %.not.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit91, label %.lr.ph.i.i.i.i.i86, !llvm.loop !839

_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit91: ; preds = %.lr.ph.i.i.i.i.i86, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit84
  %.0.lcssa.i.i.i.i.i90 = phi ptr [ %i.cp, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESC_SB_ET0_T_SH_SG_RSaIT1_E.exit84 ], [ %i.cy, %.lr.ph.i.i.i.i.i86 ]
  %.not.i2.i = icmp eq ptr %i.by, %i.h
  br i1 %.not.i2.i, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit91, %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i
  %.0.i3.i = phi ptr [ %i.dd, %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i ], [ %i.by, %_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit91 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8
  %i.da = load i8, ptr %.0.i3.i, align 8, !tbaa !39
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i8 noundef zeroext %i.da)
          to label %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i unwind label %bb.x, !inline_history !842

bb.x:                                             ; preds = %.lr.ph.i
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  tail call void @__clang_call_terminate(ptr %i.dc) #32, !inline_history !842
  unreachable

_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i: ; preds = %.lr.ph.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dd, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !4

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvPT_.exit.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESA_SaIS9_EET0_T_SD_SC_RT1_.exit91
  %.not.i92 = icmp eq ptr %i.by, null
  br i1 %.not.i92, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.by) #31
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_.exit, %bb.y
  store ptr %i.ck, ptr %0, align 8, !tbaa !120
  store ptr %.0.lcssa.i.i.i.i.i90, ptr %i.g, align 8, !tbaa !140
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.ch
  store ptr %i.de, ptr %i.e, align 8, !tbaa !145
  br label %bb.ab

.body:                                            ; preds = %bb.u
  %i.df = extractvalue { ptr, i32 } %i.ct, 0
  %i.dg = tail call ptr @__cxa_begin_catch(ptr %i.df) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SB_(ptr noundef %i.ck, ptr noundef %.0.lcssa.i.i.i.i.i76)
          to label %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEES9_EvT_SB_RSaIT0_E.exit unwind label %bb.aa

_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEES9_EvT_SB_RSaIT0_E.exit: ; preds = %.body
  %.not.i93 = icmp eq ptr %i.ck, null
  br i1 %.not.i93, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit94, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEES9_EvT_SB_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.ck) #31
  br label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit94

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit94: ; preds = %bb.z, %_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEES9_EvT_SB_RSaIT0_E.exit
  invoke void @__cxa_rethrow() #30
          to label %bb.ad unwind label %bb.aa

bb.aa:                                            ; preds = %.body, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit94
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ac

bb.ab:                                            ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit70, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISB_SaISB_EEEESF_ET0_T_SH_SG_.exit, %bb.a
  ret void

bb.ac:                                            ; preds = %bb.aa
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  tail call void @__clang_call_terminate(ptr %i.dj) #32
  unreachable

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaIS9_EE13_M_deallocateEPS9_m.exit94
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEA7_cTnNSt9enable_ifIXntsr3std7is_sameIT0_NT_8string_tEEE5valueEiE4typeELi0EEEvRSH_RKSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(7) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !41
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.c)
  store i8 3, ptr %0, align 8, !tbaa !41
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !30
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
end_hunk_10
