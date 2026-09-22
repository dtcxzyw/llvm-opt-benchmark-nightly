Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0
@.str.176 = private unnamed_addr constant [16 x i8] c"cannot insert '\00", align 1
@.str.177 = private unnamed_addr constant [29 x i8] c"' into existing inline table\00", align 1
@.str.178 = private unnamed_addr constant [33 x i8] c"cannot redefine existing table '\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"' as \00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c"array-of-tables\00", align 1
@.str.181 = private unnamed_addr constant [37 x i8] c"File could not be opened for reading\00", align 1
@.str.182 = private unnamed_addr constant [30 x i8] c"Could not determine file size\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [117 x i8] c"St23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZN4toml2v34impl12utf8_decoder11state_tableE = linkonce_odr local_unnamed_addr constant [364 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08\00\0C\18$<`T\0C\0C\0C0H\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\00\0C\0C\0C\0C\0C\00\0C\00\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C", comdat, align 16
@.str.183 = private unnamed_addr constant [7 x i8] c"\\u0000\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"\\u0001\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"\\u0002\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"\\u0003\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"\\u0004\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"\\u0005\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"\\u0006\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"\\u0007\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"\\u000B\00", align 1
@.str.193 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"\\u000E\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"\\u000F\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"\\u0010\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"\\u0011\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"\\u0012\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"\\u0013\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"\\u0014\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"\\u0015\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"\\u0016\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"\\u0017\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"\\u0018\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"\\u0019\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"\\u001A\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"\\u001B\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"\\u001C\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"\\u001D\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"\\u001E\00", align 1
@.str.212 = private unnamed_addr constant [7 x i8] c"\\u001F\00", align 1
@__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits = private unnamed_addr constant [36 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz", align 16
@.str.213 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@.str.216 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.217 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.218 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.219 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE, ptr @_ZNK12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE11source_pathB5cxx11Ev, ptr @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE9read_nextEv, ptr @_ZNK12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE8peek_eofEv, ptr @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev, ptr @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED0Ev] }, align 8
@_ZTIN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE, ptr @_ZTIN12_GLOBAL__N_121utf8_reader_interfaceE }, align 8
@_ZTSN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE = internal constant [74 x i8] c"N12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE\00", align 1
@_ZTIN12_GLOBAL__N_121utf8_reader_interfaceE = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_121utf8_reader_interfaceE }, align 8
@_ZTSN12_GLOBAL__N_121utf8_reader_interfaceE = internal constant [40 x i8] c"N12_GLOBAL__N_121utf8_reader_interfaceE\00", align 1
@.str.221 = private unnamed_addr constant [60 x i8] c"Encountered EOF during incomplete utf-8 code point sequence\00", align 1
@.str.222 = private unnamed_addr constant [60 x i8] c"Reading from the underlying stream failed - zero bytes read\00", align 1
@.str.223 = private unnamed_addr constant [35 x i8] c"Encountered invalid utf-8 sequence\00", align 1
@.str.224 = private unnamed_addr constant [36 x i8] c"Encountered overlong utf-8 sequence\00", align 1
@.str.225 = private unnamed_addr constant [63 x i8] c"An I/O error occurred while reading from the underlying stream\00", align 1
@_ZTVN12_GLOBAL__N_111utf8_readerISiEE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_111utf8_readerISiEE, ptr @_ZNK12_GLOBAL__N_111utf8_readerISiE11source_pathB5cxx11Ev, ptr @_ZN12_GLOBAL__N_111utf8_readerISiE9read_nextEv, ptr @_ZNK12_GLOBAL__N_111utf8_readerISiE8peek_eofEv, ptr @_ZN12_GLOBAL__N_111utf8_readerISiED2Ev, ptr @_ZN12_GLOBAL__N_111utf8_readerISiED0Ev] }, align 8
@_ZTIN12_GLOBAL__N_111utf8_readerISiEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_111utf8_readerISiEE, ptr @_ZTIN12_GLOBAL__N_121utf8_reader_interfaceE }, align 8
@_ZTSN12_GLOBAL__N_111utf8_readerISiEE = internal constant [34 x i8] c"N12_GLOBAL__N_111utf8_readerISiEE\00", align 1
@_ZTISt9exception = external constant ptr
@.str.226 = private unnamed_addr constant [30 x i8] c"An unspecified error occurred\00", align 1
@switch.table._ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv = private unnamed_addr constant [16 x i16] [i16 512, i16 poison, i16 1024, i16 2048, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 256], align 4

@_ZN4toml2v34nodeD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v34nodeD2Ev
@_ZN4toml2v314path_componentC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v314path_componentC2Ev
@_ZN4toml2v314path_componentC1Em = unnamed_addr alias void (ptr, i64), ptr @_ZN4toml2v314path_componentC2Em
@_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE = unnamed_addr alias void (ptr, i64, ptr), ptr @_ZN4toml2v314path_componentC2ESt17basic_string_viewIcSt11char_traitsIcEE
@_ZN4toml2v314path_componentC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v314path_componentC2ERKS1_
@_ZN4toml2v314path_componentC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v314path_componentC2EOS1_
@_ZN4toml2v34pathC1ESt17basic_string_viewIcSt11char_traitsIcEE = unnamed_addr alias void (ptr, i64, ptr), ptr @_ZN4toml2v34pathC2ESt17basic_string_viewIcSt11char_traitsIcEE
@_ZN4toml2v35arrayC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v35arrayC2Ev
@_ZN4toml2v35arrayD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v35arrayD2Ev
@_ZN4toml2v35arrayC1EPKNS0_4impl15array_init_elemES5_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4toml2v35arrayC2EPKNS0_4impl15array_init_elemES5_
@_ZN4toml2v35arrayC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v35arrayC2ERKS1_
@_ZN4toml2v35arrayC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v35arrayC2EOS1_
@_ZN4toml2v35tableC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v35tableC2Ev
@_ZN4toml2v35tableD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v35tableD2Ev
@_ZN4toml2v35tableC1EPKNS0_4impl15table_init_pairES5_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4toml2v35tableC2EPKNS0_4impl15table_init_pairES5_
@_ZN4toml2v35tableC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v35tableC2ERKS1_
@_ZN4toml2v35tableC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v35tableC2EOS1_
@_ZN4toml2v34impl9formatterC1EPKNS0_4nodeEPKNS0_5tableERKNS1_19formatter_constantsERKNS1_16formatter_configE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4toml2v34impl9formatterC2EPKNS0_4nodeEPKNS0_5tableERKNS1_19formatter_constantsERKNS1_16formatter_configE

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoPKcm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %2) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %2, i64 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !67
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoaNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 27 uses
  %.not.i = icmp eq i8 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02535.i = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.c = add nuw i64 %.02535.i, 1                 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.c, %umax.i
  br i1 %exitcond38.not.i, label %_ZN12_GLOBAL__N_123print_integer_to_streamIaEEvRSoT_N4toml2v311value_flagsEm.exit, label %bb.c, !llvm.loop !357

bb.d:                                             ; preds = %bb.a
  %i.d = and i16 %2, 3                            ; 2 uses
  %i.e = icmp ne i16 %i.d, 0
  %i.f = icmp sgt i8 %1, 0
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  switch i16 %i.d, label %default.unreachable [
    i16 1, label %bb.h
    i16 2, label %bb.f
    i16 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.g = phi i1 [ false, %bb.d ], [ true, %bb.g ], [ false, %bb.f ], [ false, %bb.e ]
  %.024.i = phi i32 [ 10, %bb.d ], [ 16, %bb.g ], [ 8, %bb.f ], [ 2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = call { ptr, i32 } @_ZSt12__to_chars_iIaENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i8 noundef signext %1, i32 noundef %.024.i)
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l                       ; 12 uses
  %i.n = icmp ult i64 %i.m, %3
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.o = icmp ne i64 %i.m, 0
  %or.cond36.i = and i1 %i.g, %i.o
  br i1 %or.cond36.i, label %iter.check, label %.loopexit31.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph34.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.m, 16
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.m, 12
  %n.vec = and i64 %i.m, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue38, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue38 ] ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.q, align 1, !tbaa !69 ; 17 uses
  %i.r = icmp sgt <16 x i8> %wide.load, splat (i8 96) ; 16 uses
  %i.s = extractelement <16 x i1> %i.r, i64 0
  br i1 %i.s, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.t = extractelement <16 x i8> %wide.load, i64 0
  %i.u = add nsw i8 %i.t, -32
  store i8 %i.u, ptr %i.q, align 1, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.v = extractelement <16 x i1> %i.r, i64 1
  br i1 %i.v, label %pred.store.if9, label %pred.store.continue10

pred.store.if9:                                   ; preds = %pred.store.continue
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = extractelement <16 x i8> %wide.load, i64 1
  %i.z = add nsw i8 %i.y, -32
  store i8 %i.z, ptr %i.x, align 1, !tbaa !69
  br label %pred.store.continue10

pred.store.continue10:                            ; preds = %pred.store.if9, %pred.store.continue
  %i.aa = extractelement <16 x i1> %i.r, i64 2
  br i1 %i.aa, label %pred.store.if11, label %pred.store.continue12

pred.store.if11:                                  ; preds = %pred.store.continue10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = extractelement <16 x i8> %wide.load, i64 2
  %i.ae = add nsw i8 %i.ad, -32
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !69
  br label %pred.store.continue12

pred.store.continue12:                            ; preds = %pred.store.if11, %pred.store.continue10
  %i.af = extractelement <16 x i1> %i.r, i64 3
  br i1 %i.af, label %pred.store.if13, label %pred.store.continue14

pred.store.if13:                                  ; preds = %pred.store.continue12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.ai = extractelement <16 x i8> %wide.load, i64 3
  %i.aj = add nsw i8 %i.ai, -32
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !69
  br label %pred.store.continue14

pred.store.continue14:                            ; preds = %pred.store.if13, %pred.store.continue12
  %i.ak = extractelement <16 x i1> %i.r, i64 4
  br i1 %i.ak, label %pred.store.if15, label %pred.store.continue16

pred.store.if15:                                  ; preds = %pred.store.continue14
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = extractelement <16 x i8> %wide.load, i64 4
  %i.ao = add nsw i8 %i.an, -32
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !69
  br label %pred.store.continue16

pred.store.continue16:                            ; preds = %pred.store.if15, %pred.store.continue14
  %i.ap = extractelement <16 x i1> %i.r, i64 5
  br i1 %i.ap, label %pred.store.if17, label %pred.store.continue18

pred.store.if17:                                  ; preds = %pred.store.continue16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  %i.as = extractelement <16 x i8> %wide.load, i64 5
  %i.at = add nsw i8 %i.as, -32
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !69
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue16
  %i.au = extractelement <16 x i1> %i.r, i64 6
  br i1 %i.au, label %pred.store.if19, label %pred.store.continue20

pred.store.if19:                                  ; preds = %pred.store.continue18
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  %i.ax = extractelement <16 x i8> %wide.load, i64 6
  %i.ay = add nsw i8 %i.ax, -32
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !69
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %i.az = extractelement <16 x i1> %i.r, i64 7
  br i1 %i.az, label %pred.store.if21, label %pred.store.continue22

pred.store.if21:                                  ; preds = %pred.store.continue20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  %i.bc = extractelement <16 x i8> %wide.load, i64 7
  %i.bd = add nsw i8 %i.bc, -32
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !69
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue20
  %i.be = extractelement <16 x i1> %i.r, i64 8
  br i1 %i.be, label %pred.store.if23, label %pred.store.continue24

pred.store.if23:                                  ; preds = %pred.store.continue22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = extractelement <16 x i8> %wide.load, i64 8
  %i.bi = add nsw i8 %i.bh, -32
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !69
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue22
  %i.bj = extractelement <16 x i1> %i.r, i64 9
  br i1 %i.bj, label %pred.store.if25, label %pred.store.continue26

pred.store.if25:                                  ; preds = %pred.store.continue24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %i.bm = extractelement <16 x i8> %wide.load, i64 9
  %i.bn = add nsw i8 %i.bm, -32
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !69
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %i.bo = extractelement <16 x i1> %i.r, i64 10
  br i1 %i.bo, label %pred.store.if27, label %pred.store.continue28

pred.store.if27:                                  ; preds = %pred.store.continue26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.br = extractelement <16 x i8> %wide.load, i64 10
  %i.bs = add nsw i8 %i.br, -32
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !69
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue26
  %i.bt = extractelement <16 x i1> %i.r, i64 11
  br i1 %i.bt, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = extractelement <16 x i8> %wide.load, i64 11
  %i.bx = add nsw i8 %i.bw, -32
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !69
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue28
  %i.by = extractelement <16 x i1> %i.r, i64 12
  br i1 %i.by, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = extractelement <16 x i8> %wide.load, i64 12
  %i.cc = add nsw i8 %i.cb, -32
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !69
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.cd = extractelement <16 x i1> %i.r, i64 13
  br i1 %i.cd, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 13
  %i.cg = extractelement <16 x i8> %wide.load, i64 13
  %i.ch = add nsw i8 %i.cg, -32
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !69
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.ci = extractelement <16 x i1> %i.r, i64 14
  br i1 %i.ci, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cl = extractelement <16 x i8> %wide.load, i64 14
  %i.cm = add nsw i8 %i.cl, -32
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !69
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.cn = extractelement <16 x i1> %i.r, i64 15
  br i1 %i.cn, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 15
  %i.cq = extractelement <16 x i8> %wide.load, i64 15
  %i.cr = add nsw i8 %i.cq, -32
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !69
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %pred.store.continue38
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit31.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph34.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.m, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue49, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %pred.store.continue49 ] ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %index40 ; 2 uses
  %wide.load41 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !69 ; 5 uses
  %i.cu = icmp sgt <4 x i8> %wide.load41, splat (i8 96) ; 4 uses
  %i.cv = extractelement <4 x i1> %i.cu, i64 0
  br i1 %i.cv, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %vec.epilog.vector.body
  %i.cw = extractelement <4 x i8> %wide.load41, i64 0
  %i.cx = add nsw i8 %i.cw, -32
  store i8 %i.cx, ptr %i.ct, align 1, !tbaa !69
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %vec.epilog.vector.body
  %i.cy = extractelement <4 x i1> %i.cu, i64 1
  br i1 %i.cy, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 %index40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = extractelement <4 x i8> %wide.load41, i64 1
  %i.dc = add nsw i8 %i.db, -32
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !69
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.dd = extractelement <4 x i1> %i.cu, i64 2
  br i1 %i.dd, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %index40
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dg = extractelement <4 x i8> %wide.load41, i64 2
  %i.dh = add nsw i8 %i.dg, -32
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !69
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.di = extractelement <4 x i1> %i.cu, i64 3
  br i1 %i.di, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index40
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 3
  %i.dl = extractelement <4 x i8> %wide.load41, i64 3
  %i.dm = add nsw i8 %i.dl, -32
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !69
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %index.next50 = add nuw i64 %index40, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next50, %n.vec39
  br i1 %i.dn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !359

vec.epilog.middle.block:                          ; preds = %pred.store.continue49
  %cmp.n51 = icmp eq i64 %i.m, %n.vec39
  br i1 %cmp.n51, label %.loopexit31.i, label %.lr.ph34.i.preheader

.lr.ph34.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.033.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ]
  br label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.02332.i = phi i64 [ %i.dp, %.lr.ph.i ], [ %i.m, %bb.h ]
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.dp = add i64 %.02332.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dp, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !360

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.preheader, %bb.j
  %.033.i = phi i64 [ %i.du, %bb.j ], [ %.033.i.ph, %.lr.ph34.i.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.033.i ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !69  ; 2 uses
  %i.ds = icmp sgt i8 %i.dr, 96
  br i1 %i.ds, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph34.i
  %i.dt = add nsw i8 %i.dr, -32
  store i8 %i.dt, ptr %i.dq, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph34.i
  %i.du = add nuw nsw i64 %.033.i, 1              ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.du, %i.m
  br i1 %exitcond37.not.i, label %.loopexit31.i, label %.lr.ph34.i, !llvm.loop !361

.loopexit31.i:                                    ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN12_GLOBAL__N_123print_integer_to_streamIaEEvRSoT_N4toml2v311value_flagsEm.exit

_ZN12_GLOBAL__N_123print_integer_to_streamIaEEvRSoT_N4toml2v311value_flagsEm.exit: ; preds = %bb.c, %.loopexit31.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSosNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef signext %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 27 uses
  %.not.i = icmp eq i16 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02535.i = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.c = add nuw i64 %.02535.i, 1                 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.c, %umax.i
  br i1 %exitcond38.not.i, label %_ZN12_GLOBAL__N_123print_integer_to_streamIsEEvRSoT_N4toml2v311value_flagsEm.exit, label %bb.c, !llvm.loop !362

bb.d:                                             ; preds = %bb.a
  %i.d = and i16 %2, 3                            ; 2 uses
  %i.e = icmp ne i16 %i.d, 0
  %i.f = icmp sgt i16 %1, 0
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  switch i16 %i.d, label %default.unreachable [
    i16 1, label %bb.h
    i16 2, label %bb.f
    i16 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.g = phi i1 [ false, %bb.d ], [ true, %bb.g ], [ false, %bb.f ], [ false, %bb.e ]
  %.024.i = phi i32 [ 10, %bb.d ], [ 16, %bb.g ], [ 8, %bb.f ], [ 2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = call { ptr, i32 } @_ZSt12__to_chars_iIsENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i16 noundef signext %1, i32 noundef %.024.i)
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l                       ; 9 uses
  %i.n = icmp ult i64 %i.m, %3
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.o = icmp ne i64 %i.m, 0
  %or.cond36.i = and i1 %i.g, %i.o
  br i1 %or.cond36.i, label %iter.check, label %.loopexit31.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph34.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.m, 16
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.k, 15                         ; 3 uses
  %n.vec = sub nuw i64 %i.m, %i.p                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue38, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue38 ] ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.q, align 16, !tbaa !69 ; 17 uses
  %i.r = icmp sgt <16 x i8> %wide.load, splat (i8 96) ; 16 uses
  %i.s = extractelement <16 x i1> %i.r, i64 0
  br i1 %i.s, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.t = extractelement <16 x i8> %wide.load, i64 0
  %i.u = add nsw i8 %i.t, -32
  store i8 %i.u, ptr %i.q, align 16, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.v = extractelement <16 x i1> %i.r, i64 1
  br i1 %i.v, label %pred.store.if9, label %pred.store.continue10

pred.store.if9:                                   ; preds = %pred.store.continue
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = extractelement <16 x i8> %wide.load, i64 1
  %i.z = add nsw i8 %i.y, -32
  store i8 %i.z, ptr %i.x, align 1, !tbaa !69
  br label %pred.store.continue10

pred.store.continue10:                            ; preds = %pred.store.if9, %pred.store.continue
  %i.aa = extractelement <16 x i1> %i.r, i64 2
  br i1 %i.aa, label %pred.store.if11, label %pred.store.continue12

pred.store.if11:                                  ; preds = %pred.store.continue10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = extractelement <16 x i8> %wide.load, i64 2
  %i.ae = add nsw i8 %i.ad, -32
  store i8 %i.ae, ptr %i.ac, align 2, !tbaa !69
  br label %pred.store.continue12

pred.store.continue12:                            ; preds = %pred.store.if11, %pred.store.continue10
  %i.af = extractelement <16 x i1> %i.r, i64 3
  br i1 %i.af, label %pred.store.if13, label %pred.store.continue14

pred.store.if13:                                  ; preds = %pred.store.continue12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.ai = extractelement <16 x i8> %wide.load, i64 3
  %i.aj = add nsw i8 %i.ai, -32
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !69
  br label %pred.store.continue14

pred.store.continue14:                            ; preds = %pred.store.if13, %pred.store.continue12
  %i.ak = extractelement <16 x i1> %i.r, i64 4
  br i1 %i.ak, label %pred.store.if15, label %pred.store.continue16

pred.store.if15:                                  ; preds = %pred.store.continue14
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = extractelement <16 x i8> %wide.load, i64 4
  %i.ao = add nsw i8 %i.an, -32
  store i8 %i.ao, ptr %i.am, align 4, !tbaa !69
  br label %pred.store.continue16

pred.store.continue16:                            ; preds = %pred.store.if15, %pred.store.continue14
  %i.ap = extractelement <16 x i1> %i.r, i64 5
  br i1 %i.ap, label %pred.store.if17, label %pred.store.continue18

pred.store.if17:                                  ; preds = %pred.store.continue16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  %i.as = extractelement <16 x i8> %wide.load, i64 5
  %i.at = add nsw i8 %i.as, -32
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !69
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue16
  %i.au = extractelement <16 x i1> %i.r, i64 6
  br i1 %i.au, label %pred.store.if19, label %pred.store.continue20

pred.store.if19:                                  ; preds = %pred.store.continue18
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  %i.ax = extractelement <16 x i8> %wide.load, i64 6
  %i.ay = add nsw i8 %i.ax, -32
  store i8 %i.ay, ptr %i.aw, align 2, !tbaa !69
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %i.az = extractelement <16 x i1> %i.r, i64 7
  br i1 %i.az, label %pred.store.if21, label %pred.store.continue22

pred.store.if21:                                  ; preds = %pred.store.continue20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  %i.bc = extractelement <16 x i8> %wide.load, i64 7
  %i.bd = add nsw i8 %i.bc, -32
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !69
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue20
  %i.be = extractelement <16 x i1> %i.r, i64 8
  br i1 %i.be, label %pred.store.if23, label %pred.store.continue24

pred.store.if23:                                  ; preds = %pred.store.continue22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = extractelement <16 x i8> %wide.load, i64 8
  %i.bi = add nsw i8 %i.bh, -32
  store i8 %i.bi, ptr %i.bg, align 8, !tbaa !69
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue22
  %i.bj = extractelement <16 x i1> %i.r, i64 9
  br i1 %i.bj, label %pred.store.if25, label %pred.store.continue26

pred.store.if25:                                  ; preds = %pred.store.continue24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %i.bm = extractelement <16 x i8> %wide.load, i64 9
  %i.bn = add nsw i8 %i.bm, -32
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !69
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %i.bo = extractelement <16 x i1> %i.r, i64 10
  br i1 %i.bo, label %pred.store.if27, label %pred.store.continue28

pred.store.if27:                                  ; preds = %pred.store.continue26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.br = extractelement <16 x i8> %wide.load, i64 10
  %i.bs = add nsw i8 %i.br, -32
  store i8 %i.bs, ptr %i.bq, align 2, !tbaa !69
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue26
  %i.bt = extractelement <16 x i1> %i.r, i64 11
  br i1 %i.bt, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = extractelement <16 x i8> %wide.load, i64 11
  %i.bx = add nsw i8 %i.bw, -32
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !69
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue28
  %i.by = extractelement <16 x i1> %i.r, i64 12
  br i1 %i.by, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = extractelement <16 x i8> %wide.load, i64 12
  %i.cc = add nsw i8 %i.cb, -32
  store i8 %i.cc, ptr %i.ca, align 4, !tbaa !69
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.cd = extractelement <16 x i1> %i.r, i64 13
  br i1 %i.cd, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 13
  %i.cg = extractelement <16 x i8> %wide.load, i64 13
  %i.ch = add nsw i8 %i.cg, -32
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !69
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.ci = extractelement <16 x i1> %i.r, i64 14
  br i1 %i.ci, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cl = extractelement <16 x i8> %wide.load, i64 14
  %i.cm = add nsw i8 %i.cl, -32
  store i8 %i.cm, ptr %i.ck, align 2, !tbaa !69
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.cn = extractelement <16 x i1> %i.r, i64 15
  br i1 %i.cn, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 15
  %i.cq = extractelement <16 x i8> %wide.load, i64 15
  %i.cr = add nsw i8 %i.cq, -32
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !69
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !363

middle.block:                                     ; preds = %pred.store.continue38
  %cmp.n = icmp eq i64 %i.p, 0
  br i1 %cmp.n, label %.loopexit31.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.p, 4
  br i1 %min.epilog.iters.check, label %.lr.ph34.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ct = and i64 %i.k, 3                         ; 2 uses
  %n.vec39 = sub i64 %i.m, %i.ct                  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue49, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %pred.store.continue49 ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index40 ; 2 uses
  %wide.load41 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !69 ; 5 uses
  %i.cv = icmp sgt <4 x i8> %wide.load41, splat (i8 96) ; 4 uses
  %i.cw = extractelement <4 x i1> %i.cv, i64 0
  br i1 %i.cw, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %vec.epilog.vector.body
  %i.cx = extractelement <4 x i8> %wide.load41, i64 0
  %i.cy = add nsw i8 %i.cx, -32
  store i8 %i.cy, ptr %i.cu, align 1, !tbaa !69
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %vec.epilog.vector.body
  %i.cz = extractelement <4 x i1> %i.cv, i64 1
  br i1 %i.cz, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.da = getelementptr i8, ptr %i.a, i64 %index40
  %i.db = getelementptr i8, ptr %i.da, i64 1
  %i.dc = extractelement <4 x i8> %wide.load41, i64 1
  %i.dd = add nsw i8 %i.dc, -32
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !69
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.de = extractelement <4 x i1> %i.cv, i64 2
  br i1 %i.de, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.df = getelementptr i8, ptr %i.a, i64 %index40
  %i.dg = getelementptr i8, ptr %i.df, i64 2
  %i.dh = extractelement <4 x i8> %wide.load41, i64 2
  %i.di = add nsw i8 %i.dh, -32
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !69
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.dj = extractelement <4 x i1> %i.cv, i64 3
  br i1 %i.dj, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.dk = getelementptr i8, ptr %i.a, i64 %index40
  %i.dl = getelementptr i8, ptr %i.dk, i64 3
  %i.dm = extractelement <4 x i8> %wide.load41, i64 3
  %i.dn = add nsw i8 %i.dm, -32
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !69
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %index.next50 = add nuw i64 %index40, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next50, %n.vec39
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !364

vec.epilog.middle.block:                          ; preds = %pred.store.continue49
  %cmp.n51 = icmp eq i64 %i.ct, 0
  br i1 %cmp.n51, label %.loopexit31.i, label %.lr.ph34.i.preheader

.lr.ph34.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.033.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ]
  br label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.02332.i = phi i64 [ %i.dq, %.lr.ph.i ], [ %i.m, %bb.h ]
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.dq = add i64 %.02332.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dq, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !365

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.preheader, %bb.j
  %.033.i = phi i64 [ %i.dv, %bb.j ], [ %.033.i.ph, %.lr.ph34.i.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.033.i ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !69  ; 2 uses
  %i.dt = icmp sgt i8 %i.ds, 96
  br i1 %i.dt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph34.i
  %i.du = add nsw i8 %i.ds, -32
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph34.i
  %i.dv = add nuw nsw i64 %.033.i, 1              ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.dv, %i.m
  br i1 %exitcond37.not.i, label %.loopexit31.i, label %.lr.ph34.i, !llvm.loop !366

.loopexit31.i:                                    ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN12_GLOBAL__N_123print_integer_to_streamIsEEvRSoT_N4toml2v311value_flagsEm.exit

_ZN12_GLOBAL__N_123print_integer_to_streamIsEEvRSoT_N4toml2v311value_flagsEm.exit: ; preds = %bb.c, %.loopexit31.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoiNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 27 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02434.i = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.c = add nuw i64 %.02434.i, 1                 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.c, %umax.i
  br i1 %exitcond37.not.i, label %_ZN12_GLOBAL__N_123print_integer_to_streamIiEEvRSoT_N4toml2v311value_flagsEm.exit, label %bb.c, !llvm.loop !367

bb.d:                                             ; preds = %bb.a
  %i.d = and i16 %2, 3                            ; 2 uses
  %i.e = icmp ne i16 %i.d, 0
  %i.f = icmp sgt i32 %1, 0
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  switch i16 %i.d, label %default.unreachable [
    i16 1, label %bb.h
    i16 2, label %bb.f
    i16 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.g = phi i1 [ false, %bb.d ], [ true, %bb.g ], [ false, %bb.f ], [ false, %bb.e ]
  %.023.i = phi i32 [ 10, %bb.d ], [ 16, %bb.g ], [ 8, %bb.f ], [ 2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = call { ptr, i32 } @_ZSt12__to_chars_iIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef %1, i32 noundef %.023.i)
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l                       ; 9 uses
  %i.n = icmp ult i64 %i.m, %3
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.o = icmp ne i64 %i.m, 0
  %or.cond35.i = and i1 %i.g, %i.o
  br i1 %or.cond35.i, label %iter.check, label %.loopexit30.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph33.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.m, 16
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.k, 15                         ; 3 uses
  %n.vec = sub nuw i64 %i.m, %i.p                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue38, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue38 ] ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.q, align 16, !tbaa !69 ; 17 uses
  %i.r = icmp sgt <16 x i8> %wide.load, splat (i8 96) ; 16 uses
  %i.s = extractelement <16 x i1> %i.r, i64 0
  br i1 %i.s, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.t = extractelement <16 x i8> %wide.load, i64 0
  %i.u = add nsw i8 %i.t, -32
  store i8 %i.u, ptr %i.q, align 16, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.v = extractelement <16 x i1> %i.r, i64 1
  br i1 %i.v, label %pred.store.if9, label %pred.store.continue10

pred.store.if9:                                   ; preds = %pred.store.continue
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = extractelement <16 x i8> %wide.load, i64 1
  %i.z = add nsw i8 %i.y, -32
  store i8 %i.z, ptr %i.x, align 1, !tbaa !69
  br label %pred.store.continue10

pred.store.continue10:                            ; preds = %pred.store.if9, %pred.store.continue
  %i.aa = extractelement <16 x i1> %i.r, i64 2
  br i1 %i.aa, label %pred.store.if11, label %pred.store.continue12

pred.store.if11:                                  ; preds = %pred.store.continue10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = extractelement <16 x i8> %wide.load, i64 2
  %i.ae = add nsw i8 %i.ad, -32
  store i8 %i.ae, ptr %i.ac, align 2, !tbaa !69
  br label %pred.store.continue12

pred.store.continue12:                            ; preds = %pred.store.if11, %pred.store.continue10
  %i.af = extractelement <16 x i1> %i.r, i64 3
  br i1 %i.af, label %pred.store.if13, label %pred.store.continue14

pred.store.if13:                                  ; preds = %pred.store.continue12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.ai = extractelement <16 x i8> %wide.load, i64 3
  %i.aj = add nsw i8 %i.ai, -32
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !69
  br label %pred.store.continue14

pred.store.continue14:                            ; preds = %pred.store.if13, %pred.store.continue12
  %i.ak = extractelement <16 x i1> %i.r, i64 4
  br i1 %i.ak, label %pred.store.if15, label %pred.store.continue16

pred.store.if15:                                  ; preds = %pred.store.continue14
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = extractelement <16 x i8> %wide.load, i64 4
  %i.ao = add nsw i8 %i.an, -32
  store i8 %i.ao, ptr %i.am, align 4, !tbaa !69
  br label %pred.store.continue16

pred.store.continue16:                            ; preds = %pred.store.if15, %pred.store.continue14
  %i.ap = extractelement <16 x i1> %i.r, i64 5
  br i1 %i.ap, label %pred.store.if17, label %pred.store.continue18

pred.store.if17:                                  ; preds = %pred.store.continue16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  %i.as = extractelement <16 x i8> %wide.load, i64 5
  %i.at = add nsw i8 %i.as, -32
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !69
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue16
  %i.au = extractelement <16 x i1> %i.r, i64 6
  br i1 %i.au, label %pred.store.if19, label %pred.store.continue20

pred.store.if19:                                  ; preds = %pred.store.continue18
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  %i.ax = extractelement <16 x i8> %wide.load, i64 6
  %i.ay = add nsw i8 %i.ax, -32
  store i8 %i.ay, ptr %i.aw, align 2, !tbaa !69
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %i.az = extractelement <16 x i1> %i.r, i64 7
  br i1 %i.az, label %pred.store.if21, label %pred.store.continue22

pred.store.if21:                                  ; preds = %pred.store.continue20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  %i.bc = extractelement <16 x i8> %wide.load, i64 7
  %i.bd = add nsw i8 %i.bc, -32
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !69
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue20
  %i.be = extractelement <16 x i1> %i.r, i64 8
  br i1 %i.be, label %pred.store.if23, label %pred.store.continue24

pred.store.if23:                                  ; preds = %pred.store.continue22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = extractelement <16 x i8> %wide.load, i64 8
  %i.bi = add nsw i8 %i.bh, -32
  store i8 %i.bi, ptr %i.bg, align 8, !tbaa !69
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue22
  %i.bj = extractelement <16 x i1> %i.r, i64 9
  br i1 %i.bj, label %pred.store.if25, label %pred.store.continue26

pred.store.if25:                                  ; preds = %pred.store.continue24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %i.bm = extractelement <16 x i8> %wide.load, i64 9
  %i.bn = add nsw i8 %i.bm, -32
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !69
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %i.bo = extractelement <16 x i1> %i.r, i64 10
  br i1 %i.bo, label %pred.store.if27, label %pred.store.continue28

pred.store.if27:                                  ; preds = %pred.store.continue26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.br = extractelement <16 x i8> %wide.load, i64 10
  %i.bs = add nsw i8 %i.br, -32
  store i8 %i.bs, ptr %i.bq, align 2, !tbaa !69
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue26
  %i.bt = extractelement <16 x i1> %i.r, i64 11
  br i1 %i.bt, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = extractelement <16 x i8> %wide.load, i64 11
  %i.bx = add nsw i8 %i.bw, -32
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !69
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue28
  %i.by = extractelement <16 x i1> %i.r, i64 12
  br i1 %i.by, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = extractelement <16 x i8> %wide.load, i64 12
  %i.cc = add nsw i8 %i.cb, -32
  store i8 %i.cc, ptr %i.ca, align 4, !tbaa !69
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.cd = extractelement <16 x i1> %i.r, i64 13
  br i1 %i.cd, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 13
  %i.cg = extractelement <16 x i8> %wide.load, i64 13
  %i.ch = add nsw i8 %i.cg, -32
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !69
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.ci = extractelement <16 x i1> %i.r, i64 14
  br i1 %i.ci, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cl = extractelement <16 x i8> %wide.load, i64 14
  %i.cm = add nsw i8 %i.cl, -32
  store i8 %i.cm, ptr %i.ck, align 2, !tbaa !69
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.cn = extractelement <16 x i1> %i.r, i64 15
  br i1 %i.cn, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 15
  %i.cq = extractelement <16 x i8> %wide.load, i64 15
  %i.cr = add nsw i8 %i.cq, -32
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !69
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !368

middle.block:                                     ; preds = %pred.store.continue38
  %cmp.n = icmp eq i64 %i.p, 0
  br i1 %cmp.n, label %.loopexit30.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.p, 4
  br i1 %min.epilog.iters.check, label %.lr.ph33.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ct = and i64 %i.k, 3                         ; 2 uses
  %n.vec39 = sub i64 %i.m, %i.ct                  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue49, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %pred.store.continue49 ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index40 ; 2 uses
  %wide.load41 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !69 ; 5 uses
  %i.cv = icmp sgt <4 x i8> %wide.load41, splat (i8 96) ; 4 uses
  %i.cw = extractelement <4 x i1> %i.cv, i64 0
  br i1 %i.cw, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %vec.epilog.vector.body
  %i.cx = extractelement <4 x i8> %wide.load41, i64 0
  %i.cy = add nsw i8 %i.cx, -32
  store i8 %i.cy, ptr %i.cu, align 1, !tbaa !69
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %vec.epilog.vector.body
  %i.cz = extractelement <4 x i1> %i.cv, i64 1
  br i1 %i.cz, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.da = getelementptr i8, ptr %i.a, i64 %index40
  %i.db = getelementptr i8, ptr %i.da, i64 1
  %i.dc = extractelement <4 x i8> %wide.load41, i64 1
  %i.dd = add nsw i8 %i.dc, -32
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !69
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.de = extractelement <4 x i1> %i.cv, i64 2
  br i1 %i.de, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.df = getelementptr i8, ptr %i.a, i64 %index40
  %i.dg = getelementptr i8, ptr %i.df, i64 2
  %i.dh = extractelement <4 x i8> %wide.load41, i64 2
  %i.di = add nsw i8 %i.dh, -32
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !69
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.dj = extractelement <4 x i1> %i.cv, i64 3
  br i1 %i.dj, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.dk = getelementptr i8, ptr %i.a, i64 %index40
  %i.dl = getelementptr i8, ptr %i.dk, i64 3
  %i.dm = extractelement <4 x i8> %wide.load41, i64 3
  %i.dn = add nsw i8 %i.dm, -32
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !69
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %index.next50 = add nuw i64 %index40, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next50, %n.vec39
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !369

vec.epilog.middle.block:                          ; preds = %pred.store.continue49
  %cmp.n51 = icmp eq i64 %i.ct, 0
  br i1 %cmp.n51, label %.loopexit30.i, label %.lr.ph33.i.preheader

.lr.ph33.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ]
  br label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.02231.i = phi i64 [ %i.dq, %.lr.ph.i ], [ %i.m, %bb.h ]
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.dq = add i64 %.02231.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dq, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !370

.lr.ph33.i:                                       ; preds = %.lr.ph33.i.preheader, %bb.j
  %.032.i = phi i64 [ %i.dv, %bb.j ], [ %.032.i.ph, %.lr.ph33.i.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.032.i ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !69  ; 2 uses
  %i.dt = icmp sgt i8 %i.ds, 96
  br i1 %i.dt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph33.i
  %i.du = add nsw i8 %i.ds, -32
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph33.i
  %i.dv = add nuw nsw i64 %.032.i, 1              ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.dv, %i.m
  br i1 %exitcond36.not.i, label %.loopexit30.i, label %.lr.ph33.i, !llvm.loop !371

.loopexit30.i:                                    ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN12_GLOBAL__N_123print_integer_to_streamIiEEvRSoT_N4toml2v311value_flagsEm.exit

_ZN12_GLOBAL__N_123print_integer_to_streamIiEEvRSoT_N4toml2v311value_flagsEm.exit: ; preds = %bb.c, %.loopexit30.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSolNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 27 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02434.i = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.c = add nuw i64 %.02434.i, 1                 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.c, %umax.i
  br i1 %exitcond37.not.i, label %_ZN12_GLOBAL__N_123print_integer_to_streamIlEEvRSoT_N4toml2v311value_flagsEm.exit, label %bb.c, !llvm.loop !372

bb.d:                                             ; preds = %bb.a
  %i.d = and i16 %2, 3                            ; 2 uses
  %i.e = icmp ne i16 %i.d, 0
  %i.f = icmp sgt i64 %1, 0
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  switch i16 %i.d, label %default.unreachable [
    i16 1, label %bb.h
    i16 2, label %bb.f
    i16 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.g = phi i1 [ false, %bb.d ], [ true, %bb.g ], [ false, %bb.f ], [ false, %bb.e ]
  %.023.i = phi i32 [ 10, %bb.d ], [ 16, %bb.g ], [ 8, %bb.f ], [ 2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.i = call { ptr, i32 } @_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i64 noundef %1, i32 noundef %.023.i)
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l                       ; 9 uses
  %i.n = icmp ult i64 %i.m, %3
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.o = icmp ne i64 %i.m, 0
  %or.cond35.i = and i1 %i.g, %i.o
  br i1 %or.cond35.i, label %iter.check, label %.loopexit30.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph33.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.m, 16
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.k, 15                         ; 3 uses
  %n.vec = sub nuw i64 %i.m, %i.p                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue38, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue38 ] ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.q, align 16, !tbaa !69 ; 17 uses
  %i.r = icmp sgt <16 x i8> %wide.load, splat (i8 96) ; 16 uses
  %i.s = extractelement <16 x i1> %i.r, i64 0
  br i1 %i.s, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.t = extractelement <16 x i8> %wide.load, i64 0
  %i.u = add nsw i8 %i.t, -32
  store i8 %i.u, ptr %i.q, align 16, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.v = extractelement <16 x i1> %i.r, i64 1
  br i1 %i.v, label %pred.store.if9, label %pred.store.continue10

pred.store.if9:                                   ; preds = %pred.store.continue
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = extractelement <16 x i8> %wide.load, i64 1
  %i.z = add nsw i8 %i.y, -32
  store i8 %i.z, ptr %i.x, align 1, !tbaa !69
  br label %pred.store.continue10

pred.store.continue10:                            ; preds = %pred.store.if9, %pred.store.continue
  %i.aa = extractelement <16 x i1> %i.r, i64 2
  br i1 %i.aa, label %pred.store.if11, label %pred.store.continue12

pred.store.if11:                                  ; preds = %pred.store.continue10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = extractelement <16 x i8> %wide.load, i64 2
  %i.ae = add nsw i8 %i.ad, -32
  store i8 %i.ae, ptr %i.ac, align 2, !tbaa !69
  br label %pred.store.continue12

pred.store.continue12:                            ; preds = %pred.store.if11, %pred.store.continue10
  %i.af = extractelement <16 x i1> %i.r, i64 3
  br i1 %i.af, label %pred.store.if13, label %pred.store.continue14

pred.store.if13:                                  ; preds = %pred.store.continue12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.ai = extractelement <16 x i8> %wide.load, i64 3
  %i.aj = add nsw i8 %i.ai, -32
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !69
  br label %pred.store.continue14

pred.store.continue14:                            ; preds = %pred.store.if13, %pred.store.continue12
  %i.ak = extractelement <16 x i1> %i.r, i64 4
  br i1 %i.ak, label %pred.store.if15, label %pred.store.continue16

pred.store.if15:                                  ; preds = %pred.store.continue14
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = extractelement <16 x i8> %wide.load, i64 4
  %i.ao = add nsw i8 %i.an, -32
  store i8 %i.ao, ptr %i.am, align 4, !tbaa !69
  br label %pred.store.continue16

pred.store.continue16:                            ; preds = %pred.store.if15, %pred.store.continue14
  %i.ap = extractelement <16 x i1> %i.r, i64 5
  br i1 %i.ap, label %pred.store.if17, label %pred.store.continue18

pred.store.if17:                                  ; preds = %pred.store.continue16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  %i.as = extractelement <16 x i8> %wide.load, i64 5
  %i.at = add nsw i8 %i.as, -32
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !69
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue16
  %i.au = extractelement <16 x i1> %i.r, i64 6
  br i1 %i.au, label %pred.store.if19, label %pred.store.continue20

pred.store.if19:                                  ; preds = %pred.store.continue18
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  %i.ax = extractelement <16 x i8> %wide.load, i64 6
  %i.ay = add nsw i8 %i.ax, -32
  store i8 %i.ay, ptr %i.aw, align 2, !tbaa !69
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %i.az = extractelement <16 x i1> %i.r, i64 7
  br i1 %i.az, label %pred.store.if21, label %pred.store.continue22

pred.store.if21:                                  ; preds = %pred.store.continue20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  %i.bc = extractelement <16 x i8> %wide.load, i64 7
  %i.bd = add nsw i8 %i.bc, -32
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !69
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue20
  %i.be = extractelement <16 x i1> %i.r, i64 8
  br i1 %i.be, label %pred.store.if23, label %pred.store.continue24

pred.store.if23:                                  ; preds = %pred.store.continue22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = extractelement <16 x i8> %wide.load, i64 8
  %i.bi = add nsw i8 %i.bh, -32
  store i8 %i.bi, ptr %i.bg, align 8, !tbaa !69
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue22
  %i.bj = extractelement <16 x i1> %i.r, i64 9
  br i1 %i.bj, label %pred.store.if25, label %pred.store.continue26

pred.store.if25:                                  ; preds = %pred.store.continue24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %i.bm = extractelement <16 x i8> %wide.load, i64 9
  %i.bn = add nsw i8 %i.bm, -32
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !69
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %i.bo = extractelement <16 x i1> %i.r, i64 10
  br i1 %i.bo, label %pred.store.if27, label %pred.store.continue28

pred.store.if27:                                  ; preds = %pred.store.continue26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.br = extractelement <16 x i8> %wide.load, i64 10
  %i.bs = add nsw i8 %i.br, -32
  store i8 %i.bs, ptr %i.bq, align 2, !tbaa !69
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue26
  %i.bt = extractelement <16 x i1> %i.r, i64 11
  br i1 %i.bt, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = extractelement <16 x i8> %wide.load, i64 11
  %i.bx = add nsw i8 %i.bw, -32
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !69
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue28
  %i.by = extractelement <16 x i1> %i.r, i64 12
  br i1 %i.by, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = extractelement <16 x i8> %wide.load, i64 12
  %i.cc = add nsw i8 %i.cb, -32
  store i8 %i.cc, ptr %i.ca, align 4, !tbaa !69
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.cd = extractelement <16 x i1> %i.r, i64 13
  br i1 %i.cd, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 13
  %i.cg = extractelement <16 x i8> %wide.load, i64 13
  %i.ch = add nsw i8 %i.cg, -32
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !69
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.ci = extractelement <16 x i1> %i.r, i64 14
  br i1 %i.ci, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cl = extractelement <16 x i8> %wide.load, i64 14
  %i.cm = add nsw i8 %i.cl, -32
  store i8 %i.cm, ptr %i.ck, align 2, !tbaa !69
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.cn = extractelement <16 x i1> %i.r, i64 15
  br i1 %i.cn, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 15
  %i.cq = extractelement <16 x i8> %wide.load, i64 15
  %i.cr = add nsw i8 %i.cq, -32
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !69
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !373

middle.block:                                     ; preds = %pred.store.continue38
  %cmp.n = icmp eq i64 %i.p, 0
  br i1 %cmp.n, label %.loopexit30.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.p, 4
  br i1 %min.epilog.iters.check, label %.lr.ph33.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ct = and i64 %i.k, 3                         ; 2 uses
  %n.vec39 = sub i64 %i.m, %i.ct                  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue49, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %pred.store.continue49 ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index40 ; 2 uses
  %wide.load41 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !69 ; 5 uses
  %i.cv = icmp sgt <4 x i8> %wide.load41, splat (i8 96) ; 4 uses
  %i.cw = extractelement <4 x i1> %i.cv, i64 0
  br i1 %i.cw, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %vec.epilog.vector.body
  %i.cx = extractelement <4 x i8> %wide.load41, i64 0
  %i.cy = add nsw i8 %i.cx, -32
  store i8 %i.cy, ptr %i.cu, align 1, !tbaa !69
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %vec.epilog.vector.body
  %i.cz = extractelement <4 x i1> %i.cv, i64 1
  br i1 %i.cz, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.da = getelementptr i8, ptr %i.a, i64 %index40
  %i.db = getelementptr i8, ptr %i.da, i64 1
  %i.dc = extractelement <4 x i8> %wide.load41, i64 1
  %i.dd = add nsw i8 %i.dc, -32
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !69
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.de = extractelement <4 x i1> %i.cv, i64 2
  br i1 %i.de, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.df = getelementptr i8, ptr %i.a, i64 %index40
  %i.dg = getelementptr i8, ptr %i.df, i64 2
  %i.dh = extractelement <4 x i8> %wide.load41, i64 2
  %i.di = add nsw i8 %i.dh, -32
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !69
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.dj = extractelement <4 x i1> %i.cv, i64 3
  br i1 %i.dj, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.dk = getelementptr i8, ptr %i.a, i64 %index40
  %i.dl = getelementptr i8, ptr %i.dk, i64 3
  %i.dm = extractelement <4 x i8> %wide.load41, i64 3
  %i.dn = add nsw i8 %i.dm, -32
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !69
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %index.next50 = add nuw i64 %index40, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next50, %n.vec39
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !374

vec.epilog.middle.block:                          ; preds = %pred.store.continue49
  %cmp.n51 = icmp eq i64 %i.ct, 0
  br i1 %cmp.n51, label %.loopexit30.i, label %.lr.ph33.i.preheader

.lr.ph33.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ]
  br label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.02231.i = phi i64 [ %i.dq, %.lr.ph.i ], [ %i.m, %bb.h ]
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.dq = add i64 %.02231.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dq, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !375

.lr.ph33.i:                                       ; preds = %.lr.ph33.i.preheader, %bb.j
  %.032.i = phi i64 [ %i.dv, %bb.j ], [ %.032.i.ph, %.lr.ph33.i.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.032.i ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !69  ; 2 uses
  %i.dt = icmp sgt i8 %i.ds, 96
  br i1 %i.dt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph33.i
  %i.du = add nsw i8 %i.ds, -32
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph33.i
  %i.dv = add nuw nsw i64 %.032.i, 1              ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.dv, %i.m
  br i1 %exitcond36.not.i, label %.loopexit30.i, label %.lr.ph33.i, !llvm.loop !376

.loopexit30.i:                                    ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN12_GLOBAL__N_123print_integer_to_streamIlEEvRSoT_N4toml2v311value_flagsEm.exit

_ZN12_GLOBAL__N_123print_integer_to_streamIlEEvRSoT_N4toml2v311value_flagsEm.exit: ; preds = %bb.c, %.loopexit30.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoxNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 27 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02434.i = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.c = add nuw i64 %.02434.i, 1                 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.c, %umax.i
  br i1 %exitcond37.not.i, label %_ZN12_GLOBAL__N_123print_integer_to_streamIxEEvRSoT_N4toml2v311value_flagsEm.exit, label %bb.c, !llvm.loop !377

bb.d:                                             ; preds = %bb.a
  %i.d = and i16 %2, 3                            ; 2 uses
  %i.e = icmp ne i16 %i.d, 0
  %i.f = icmp sgt i64 %1, 0
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  switch i16 %i.d, label %default.unreachable [
    i16 1, label %bb.h
    i16 2, label %bb.f
    i16 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.g = phi i1 [ false, %bb.d ], [ true, %bb.g ], [ false, %bb.f ], [ false, %bb.e ]
  %.023.i = phi i32 [ 10, %bb.d ], [ 16, %bb.g ], [ 8, %bb.f ], [ 2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.i = call { ptr, i32 } @_ZSt12__to_chars_iIxENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i64 noundef %1, i32 noundef %.023.i)
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l                       ; 9 uses
  %i.n = icmp ult i64 %i.m, %3
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.o = icmp ne i64 %i.m, 0
  %or.cond35.i = and i1 %i.g, %i.o
  br i1 %or.cond35.i, label %iter.check, label %.loopexit30.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph33.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.m, 16
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.k, 15                         ; 3 uses
  %n.vec = sub nuw i64 %i.m, %i.p                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue38, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue38 ] ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.q, align 16, !tbaa !69 ; 17 uses
  %i.r = icmp sgt <16 x i8> %wide.load, splat (i8 96) ; 16 uses
  %i.s = extractelement <16 x i1> %i.r, i64 0
  br i1 %i.s, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.t = extractelement <16 x i8> %wide.load, i64 0
  %i.u = add nsw i8 %i.t, -32
  store i8 %i.u, ptr %i.q, align 16, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.v = extractelement <16 x i1> %i.r, i64 1
  br i1 %i.v, label %pred.store.if9, label %pred.store.continue10

pred.store.if9:                                   ; preds = %pred.store.continue
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = extractelement <16 x i8> %wide.load, i64 1
  %i.z = add nsw i8 %i.y, -32
  store i8 %i.z, ptr %i.x, align 1, !tbaa !69
  br label %pred.store.continue10

pred.store.continue10:                            ; preds = %pred.store.if9, %pred.store.continue
  %i.aa = extractelement <16 x i1> %i.r, i64 2
  br i1 %i.aa, label %pred.store.if11, label %pred.store.continue12

pred.store.if11:                                  ; preds = %pred.store.continue10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = extractelement <16 x i8> %wide.load, i64 2
  %i.ae = add nsw i8 %i.ad, -32
  store i8 %i.ae, ptr %i.ac, align 2, !tbaa !69
  br label %pred.store.continue12

pred.store.continue12:                            ; preds = %pred.store.if11, %pred.store.continue10
  %i.af = extractelement <16 x i1> %i.r, i64 3
  br i1 %i.af, label %pred.store.if13, label %pred.store.continue14

pred.store.if13:                                  ; preds = %pred.store.continue12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.ai = extractelement <16 x i8> %wide.load, i64 3
  %i.aj = add nsw i8 %i.ai, -32
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !69
  br label %pred.store.continue14

pred.store.continue14:                            ; preds = %pred.store.if13, %pred.store.continue12
  %i.ak = extractelement <16 x i1> %i.r, i64 4
  br i1 %i.ak, label %pred.store.if15, label %pred.store.continue16

pred.store.if15:                                  ; preds = %pred.store.continue14
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = extractelement <16 x i8> %wide.load, i64 4
  %i.ao = add nsw i8 %i.an, -32
  store i8 %i.ao, ptr %i.am, align 4, !tbaa !69
  br label %pred.store.continue16

pred.store.continue16:                            ; preds = %pred.store.if15, %pred.store.continue14
  %i.ap = extractelement <16 x i1> %i.r, i64 5
  br i1 %i.ap, label %pred.store.if17, label %pred.store.continue18

pred.store.if17:                                  ; preds = %pred.store.continue16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  %i.as = extractelement <16 x i8> %wide.load, i64 5
  %i.at = add nsw i8 %i.as, -32
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !69
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue16
  %i.au = extractelement <16 x i1> %i.r, i64 6
  br i1 %i.au, label %pred.store.if19, label %pred.store.continue20

pred.store.if19:                                  ; preds = %pred.store.continue18
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  %i.ax = extractelement <16 x i8> %wide.load, i64 6
  %i.ay = add nsw i8 %i.ax, -32
  store i8 %i.ay, ptr %i.aw, align 2, !tbaa !69
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %i.az = extractelement <16 x i1> %i.r, i64 7
  br i1 %i.az, label %pred.store.if21, label %pred.store.continue22

pred.store.if21:                                  ; preds = %pred.store.continue20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  %i.bc = extractelement <16 x i8> %wide.load, i64 7
  %i.bd = add nsw i8 %i.bc, -32
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !69
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue20
  %i.be = extractelement <16 x i1> %i.r, i64 8
  br i1 %i.be, label %pred.store.if23, label %pred.store.continue24

pred.store.if23:                                  ; preds = %pred.store.continue22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = extractelement <16 x i8> %wide.load, i64 8
  %i.bi = add nsw i8 %i.bh, -32
  store i8 %i.bi, ptr %i.bg, align 8, !tbaa !69
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue22
  %i.bj = extractelement <16 x i1> %i.r, i64 9
  br i1 %i.bj, label %pred.store.if25, label %pred.store.continue26

pred.store.if25:                                  ; preds = %pred.store.continue24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %i.bm = extractelement <16 x i8> %wide.load, i64 9
  %i.bn = add nsw i8 %i.bm, -32
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !69
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %i.bo = extractelement <16 x i1> %i.r, i64 10
  br i1 %i.bo, label %pred.store.if27, label %pred.store.continue28

pred.store.if27:                                  ; preds = %pred.store.continue26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.br = extractelement <16 x i8> %wide.load, i64 10
  %i.bs = add nsw i8 %i.br, -32
  store i8 %i.bs, ptr %i.bq, align 2, !tbaa !69
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue26
  %i.bt = extractelement <16 x i1> %i.r, i64 11
  br i1 %i.bt, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = extractelement <16 x i8> %wide.load, i64 11
  %i.bx = add nsw i8 %i.bw, -32
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !69
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue28
  %i.by = extractelement <16 x i1> %i.r, i64 12
  br i1 %i.by, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = extractelement <16 x i8> %wide.load, i64 12
  %i.cc = add nsw i8 %i.cb, -32
  store i8 %i.cc, ptr %i.ca, align 4, !tbaa !69
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.cd = extractelement <16 x i1> %i.r, i64 13
  br i1 %i.cd, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 13
  %i.cg = extractelement <16 x i8> %wide.load, i64 13
  %i.ch = add nsw i8 %i.cg, -32
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !69
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.ci = extractelement <16 x i1> %i.r, i64 14
  br i1 %i.ci, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cl = extractelement <16 x i8> %wide.load, i64 14
  %i.cm = add nsw i8 %i.cl, -32
  store i8 %i.cm, ptr %i.ck, align 2, !tbaa !69
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.cn = extractelement <16 x i1> %i.r, i64 15
  br i1 %i.cn, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 15
  %i.cq = extractelement <16 x i8> %wide.load, i64 15
  %i.cr = add nsw i8 %i.cq, -32
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !69
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !378

middle.block:                                     ; preds = %pred.store.continue38
  %cmp.n = icmp eq i64 %i.p, 0
  br i1 %cmp.n, label %.loopexit30.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.p, 4
  br i1 %min.epilog.iters.check, label %.lr.ph33.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ct = and i64 %i.k, 3                         ; 2 uses
  %n.vec39 = sub i64 %i.m, %i.ct                  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue49, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %pred.store.continue49 ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index40 ; 2 uses
  %wide.load41 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !69 ; 5 uses
  %i.cv = icmp sgt <4 x i8> %wide.load41, splat (i8 96) ; 4 uses
  %i.cw = extractelement <4 x i1> %i.cv, i64 0
  br i1 %i.cw, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %vec.epilog.vector.body
  %i.cx = extractelement <4 x i8> %wide.load41, i64 0
  %i.cy = add nsw i8 %i.cx, -32
  store i8 %i.cy, ptr %i.cu, align 1, !tbaa !69
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %vec.epilog.vector.body
  %i.cz = extractelement <4 x i1> %i.cv, i64 1
  br i1 %i.cz, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.da = getelementptr i8, ptr %i.a, i64 %index40
  %i.db = getelementptr i8, ptr %i.da, i64 1
  %i.dc = extractelement <4 x i8> %wide.load41, i64 1
  %i.dd = add nsw i8 %i.dc, -32
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !69
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.de = extractelement <4 x i1> %i.cv, i64 2
  br i1 %i.de, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.df = getelementptr i8, ptr %i.a, i64 %index40
  %i.dg = getelementptr i8, ptr %i.df, i64 2
  %i.dh = extractelement <4 x i8> %wide.load41, i64 2
  %i.di = add nsw i8 %i.dh, -32
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !69
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.dj = extractelement <4 x i1> %i.cv, i64 3
  br i1 %i.dj, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.dk = getelementptr i8, ptr %i.a, i64 %index40
  %i.dl = getelementptr i8, ptr %i.dk, i64 3
  %i.dm = extractelement <4 x i8> %wide.load41, i64 3
  %i.dn = add nsw i8 %i.dm, -32
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !69
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %index.next50 = add nuw i64 %index40, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next50, %n.vec39
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !379

vec.epilog.middle.block:                          ; preds = %pred.store.continue49
  %cmp.n51 = icmp eq i64 %i.ct, 0
  br i1 %cmp.n51, label %.loopexit30.i, label %.lr.ph33.i.preheader

.lr.ph33.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ]
  br label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.02231.i = phi i64 [ %i.dq, %.lr.ph.i ], [ %i.m, %bb.h ]
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.dq = add i64 %.02231.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dq, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !380

.lr.ph33.i:                                       ; preds = %.lr.ph33.i.preheader, %bb.j
  %.032.i = phi i64 [ %i.dv, %bb.j ], [ %.032.i.ph, %.lr.ph33.i.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.032.i ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !69  ; 2 uses
  %i.dt = icmp sgt i8 %i.ds, 96
  br i1 %i.dt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph33.i
  %i.du = add nsw i8 %i.ds, -32
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph33.i
  %i.dv = add nuw nsw i64 %.032.i, 1              ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.dv, %i.m
  br i1 %exitcond36.not.i, label %.loopexit30.i, label %.lr.ph33.i, !llvm.loop !381

.loopexit30.i:                                    ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN12_GLOBAL__N_123print_integer_to_streamIxEEvRSoT_N4toml2v311value_flagsEm.exit

_ZN12_GLOBAL__N_123print_integer_to_streamIxEEvRSoT_N4toml2v311value_flagsEm.exit: ; preds = %bb.c, %.loopexit30.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSohNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 27 uses
  %.not.i = icmp eq i8 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02536.i = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.c = add nuw i64 %.02536.i, 1                 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.c, %umax.i
  br i1 %exitcond38.not.i, label %_ZN12_GLOBAL__N_123print_integer_to_streamIhEEvRSoT_N4toml2v311value_flagsEm.exit, label %bb.c, !llvm.loop !382

bb.d:                                             ; preds = %bb.a
  %i.d = and i16 %2, 3
  switch i16 %i.d, label %default.unreachable [
    i16 3, label %bb.g
    i16 1, label %bb.e
    i16 2, label %bb.f
    i16 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  br label %bb.h

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.e = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.g ]
  %.024.i = phi i32 [ 10, %bb.d ], [ 2, %bb.e ], [ 8, %bb.f ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = call { ptr, i32 } @_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i8 noundef zeroext %1, i32 noundef %.024.i)
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j                       ; 12 uses
  %i.l = icmp ult i64 %i.k, %3
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.m = icmp ne i64 %i.k, 0
  %or.cond.i = and i1 %i.e, %i.m
  br i1 %or.cond.i, label %iter.check, label %.loopexit32.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph35.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.k, 12
  %n.vec = and i64 %i.k, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue37, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue37 ] ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !tbaa !69 ; 17 uses
  %i.p = icmp sgt <16 x i8> %wide.load, splat (i8 96) ; 16 uses
  %i.q = extractelement <16 x i1> %i.p, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.r = extractelement <16 x i8> %wide.load, i64 0
  %i.s = add nsw i8 %i.r, -32
  store i8 %i.s, ptr %i.o, align 1, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.t = extractelement <16 x i1> %i.p, i64 1
  br i1 %i.t, label %pred.store.if8, label %pred.store.continue9

pred.store.if8:                                   ; preds = %pred.store.continue
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = extractelement <16 x i8> %wide.load, i64 1
  %i.x = add nsw i8 %i.w, -32
  store i8 %i.x, ptr %i.v, align 1, !tbaa !69
  br label %pred.store.continue9

pred.store.continue9:                             ; preds = %pred.store.if8, %pred.store.continue
  %i.y = extractelement <16 x i1> %i.p, i64 2
  br i1 %i.y, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue9
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = extractelement <16 x i8> %wide.load, i64 2
  %i.ac = add nsw i8 %i.ab, -32
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !69
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue9
  %i.ad = extractelement <16 x i1> %i.p, i64 3
  br i1 %i.ad, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = extractelement <16 x i8> %wide.load, i64 3
  %i.ah = add nsw i8 %i.ag, -32
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !69
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.ai = extractelement <16 x i1> %i.p, i64 4
  br i1 %i.ai, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = extractelement <16 x i8> %wide.load, i64 4
  %i.am = add nsw i8 %i.al, -32
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !69
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.an = extractelement <16 x i1> %i.p, i64 5
  br i1 %i.an, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.aq = extractelement <16 x i8> %wide.load, i64 5
  %i.ar = add nsw i8 %i.aq, -32
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !69
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.as = extractelement <16 x i1> %i.p, i64 6
  br i1 %i.as, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.av = extractelement <16 x i8> %wide.load, i64 6
  %i.aw = add nsw i8 %i.av, -32
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !69
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ax = extractelement <16 x i1> %i.p, i64 7
  br i1 %i.ax, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  %i.ba = extractelement <16 x i8> %wide.load, i64 7
  %i.bb = add nsw i8 %i.ba, -32
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !69
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.bc = extractelement <16 x i1> %i.p, i64 8
  br i1 %i.bc, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = extractelement <16 x i8> %wide.load, i64 8
  %i.bg = add nsw i8 %i.bf, -32
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !69
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.bh = extractelement <16 x i1> %i.p, i64 9
  br i1 %i.bh, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 9
  %i.bk = extractelement <16 x i8> %wide.load, i64 9
  %i.bl = add nsw i8 %i.bk, -32
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !69
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.bm = extractelement <16 x i1> %i.p, i64 10
  br i1 %i.bm, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.bp = extractelement <16 x i8> %wide.load, i64 10
  %i.bq = add nsw i8 %i.bp, -32
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !69
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.br = extractelement <16 x i1> %i.p, i64 11
  br i1 %i.br, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = extractelement <16 x i8> %wide.load, i64 11
  %i.bv = add nsw i8 %i.bu, -32
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !69
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.bw = extractelement <16 x i1> %i.p, i64 12
  br i1 %i.bw, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bz = extractelement <16 x i8> %wide.load, i64 12
  %i.ca = add nsw i8 %i.bz, -32
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !69
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.cb = extractelement <16 x i1> %i.p, i64 13
  br i1 %i.cb, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 13
  %i.ce = extractelement <16 x i8> %wide.load, i64 13
  %i.cf = add nsw i8 %i.ce, -32
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !69
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %i.cg = extractelement <16 x i1> %i.p, i64 14
  br i1 %i.cg, label %pred.store.if34, label %pred.store.continue35

pred.store.if34:                                  ; preds = %pred.store.continue33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 14
  %i.cj = extractelement <16 x i8> %wide.load, i64 14
  %i.ck = add nsw i8 %i.cj, -32
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !69
  br label %pred.store.continue35

pred.store.continue35:                            ; preds = %pred.store.if34, %pred.store.continue33
  %i.cl = extractelement <16 x i1> %i.p, i64 15
  br i1 %i.cl, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 15
  %i.co = extractelement <16 x i8> %wide.load, i64 15
  %i.cp = add nsw i8 %i.co, -32
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !69
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !383

middle.block:                                     ; preds = %pred.store.continue37
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit32.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph35.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.k, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue48, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %pred.store.continue48 ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %index39 ; 2 uses
  %wide.load40 = load <4 x i8>, ptr %i.cr, align 1, !tbaa !69 ; 5 uses
  %i.cs = icmp sgt <4 x i8> %wide.load40, splat (i8 96) ; 4 uses
  %i.ct = extractelement <4 x i1> %i.cs, i64 0
  br i1 %i.ct, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %vec.epilog.vector.body
  %i.cu = extractelement <4 x i8> %wide.load40, i64 0
  %i.cv = add nsw i8 %i.cu, -32
  store i8 %i.cv, ptr %i.cr, align 1, !tbaa !69
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %vec.epilog.vector.body
  %i.cw = extractelement <4 x i1> %i.cs, i64 1
  br i1 %i.cw, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %index39
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.cz = extractelement <4 x i8> %wide.load40, i64 1
  %i.da = add nsw i8 %i.cz, -32
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !69
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.db = extractelement <4 x i1> %i.cs, i64 2
  br i1 %i.db, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %index39
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.de = extractelement <4 x i8> %wide.load40, i64 2
  %i.df = add nsw i8 %i.de, -32
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !69
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.dg = extractelement <4 x i1> %i.cs, i64 3
  br i1 %i.dg, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %index39
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 3
  %i.dj = extractelement <4 x i8> %wide.load40, i64 3
  %i.dk = add nsw i8 %i.dj, -32
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !69
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %index.next49 = add nuw i64 %index39, 4         ; 2 uses
  %i.dl = icmp eq i64 %index.next49, %n.vec38
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !384

vec.epilog.middle.block:                          ; preds = %pred.store.continue48
  %cmp.n50 = icmp eq i64 %i.k, %n.vec38
  br i1 %cmp.n50, label %.loopexit32.i, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.034.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ]
  br label %.lr.ph35.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.02333.i = phi i64 [ %i.dn, %.lr.ph.i ], [ %i.k, %bb.h ]
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.dn = add i64 %.02333.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.preheader, %bb.j
  %.034.i = phi i64 [ %i.ds, %bb.j ], [ %.034.i.ph, %.lr.ph35.i.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %.034.i ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !69  ; 2 uses
  %i.dq = icmp sgt i8 %i.dp, 96
  br i1 %i.dq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph35.i
  %i.dr = add nsw i8 %i.dp, -32
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph35.i
  %i.ds = add nuw nsw i64 %.034.i, 1              ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.ds, %i.k
  br i1 %exitcond37.not.i, label %.loopexit32.i, label %.lr.ph35.i, !llvm.loop !385

.loopexit32.i:                                    ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN12_GLOBAL__N_123print_integer_to_streamIhEEvRSoT_N4toml2v311value_flagsEm.exit

_ZN12_GLOBAL__N_123print_integer_to_streamIhEEvRSoT_N4toml2v311value_flagsEm.exit: ; preds = %bb.c, %.loopexit32.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSotNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 27 uses
  %.not.i = icmp eq i16 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02536.i = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.c = add nuw i64 %.02536.i, 1                 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.c, %umax.i
  br i1 %exitcond38.not.i, label %_ZN12_GLOBAL__N_123print_integer_to_streamItEEvRSoT_N4toml2v311value_flagsEm.exit, label %bb.c, !llvm.loop !386

bb.d:                                             ; preds = %bb.a
  %i.d = and i16 %2, 3
  switch i16 %i.d, label %default.unreachable [
    i16 3, label %bb.g
    i16 1, label %bb.e
    i16 2, label %bb.f
    i16 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  br label %bb.h

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.e = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.g ]
  %.024.i = phi i32 [ 10, %bb.d ], [ 2, %bb.e ], [ 8, %bb.f ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = call { ptr, i32 } @_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i16 noundef zeroext %1, i32 noundef %.024.i)
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j                       ; 9 uses
  %i.l = icmp ult i64 %i.k, %3
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.m = icmp ne i64 %i.k, 0
  %or.cond.i = and i1 %i.e, %i.m
  br i1 %or.cond.i, label %iter.check, label %.loopexit32.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph35.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.i, 15                         ; 3 uses
  %n.vec = sub nuw i64 %i.k, %i.n                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue37, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue37 ] ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.o, align 16, !tbaa !69 ; 17 uses
  %i.p = icmp sgt <16 x i8> %wide.load, splat (i8 96) ; 16 uses
  %i.q = extractelement <16 x i1> %i.p, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.r = extractelement <16 x i8> %wide.load, i64 0
  %i.s = add nsw i8 %i.r, -32
  store i8 %i.s, ptr %i.o, align 16, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.t = extractelement <16 x i1> %i.p, i64 1
  br i1 %i.t, label %pred.store.if8, label %pred.store.continue9

pred.store.if8:                                   ; preds = %pred.store.continue
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = extractelement <16 x i8> %wide.load, i64 1
  %i.x = add nsw i8 %i.w, -32
  store i8 %i.x, ptr %i.v, align 1, !tbaa !69
  br label %pred.store.continue9

pred.store.continue9:                             ; preds = %pred.store.if8, %pred.store.continue
  %i.y = extractelement <16 x i1> %i.p, i64 2
  br i1 %i.y, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue9
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = extractelement <16 x i8> %wide.load, i64 2
  %i.ac = add nsw i8 %i.ab, -32
  store i8 %i.ac, ptr %i.aa, align 2, !tbaa !69
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue9
  %i.ad = extractelement <16 x i1> %i.p, i64 3
  br i1 %i.ad, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = extractelement <16 x i8> %wide.load, i64 3
  %i.ah = add nsw i8 %i.ag, -32
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !69
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.ai = extractelement <16 x i1> %i.p, i64 4
  br i1 %i.ai, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = extractelement <16 x i8> %wide.load, i64 4
  %i.am = add nsw i8 %i.al, -32
  store i8 %i.am, ptr %i.ak, align 4, !tbaa !69
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.an = extractelement <16 x i1> %i.p, i64 5
  br i1 %i.an, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.aq = extractelement <16 x i8> %wide.load, i64 5
  %i.ar = add nsw i8 %i.aq, -32
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !69
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.as = extractelement <16 x i1> %i.p, i64 6
  br i1 %i.as, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.av = extractelement <16 x i8> %wide.load, i64 6
  %i.aw = add nsw i8 %i.av, -32
  store i8 %i.aw, ptr %i.au, align 2, !tbaa !69
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ax = extractelement <16 x i1> %i.p, i64 7
  br i1 %i.ax, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  %i.ba = extractelement <16 x i8> %wide.load, i64 7
  %i.bb = add nsw i8 %i.ba, -32
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !69
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.bc = extractelement <16 x i1> %i.p, i64 8
  br i1 %i.bc, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = extractelement <16 x i8> %wide.load, i64 8
  %i.bg = add nsw i8 %i.bf, -32
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !69
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.bh = extractelement <16 x i1> %i.p, i64 9
  br i1 %i.bh, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 9
  %i.bk = extractelement <16 x i8> %wide.load, i64 9
  %i.bl = add nsw i8 %i.bk, -32
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !69
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.bm = extractelement <16 x i1> %i.p, i64 10
  br i1 %i.bm, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.bp = extractelement <16 x i8> %wide.load, i64 10
  %i.bq = add nsw i8 %i.bp, -32
  store i8 %i.bq, ptr %i.bo, align 2, !tbaa !69
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.br = extractelement <16 x i1> %i.p, i64 11
  br i1 %i.br, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = extractelement <16 x i8> %wide.load, i64 11
  %i.bv = add nsw i8 %i.bu, -32
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !69
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.bw = extractelement <16 x i1> %i.p, i64 12
  br i1 %i.bw, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bz = extractelement <16 x i8> %wide.load, i64 12
  %i.ca = add nsw i8 %i.bz, -32
  store i8 %i.ca, ptr %i.by, align 4, !tbaa !69
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.cb = extractelement <16 x i1> %i.p, i64 13
  br i1 %i.cb, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 13
  %i.ce = extractelement <16 x i8> %wide.load, i64 13
  %i.cf = add nsw i8 %i.ce, -32
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !69
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %i.cg = extractelement <16 x i1> %i.p, i64 14
  br i1 %i.cg, label %pred.store.if34, label %pred.store.continue35

pred.store.if34:                                  ; preds = %pred.store.continue33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 14
  %i.cj = extractelement <16 x i8> %wide.load, i64 14
  %i.ck = add nsw i8 %i.cj, -32
  store i8 %i.ck, ptr %i.ci, align 2, !tbaa !69
  br label %pred.store.continue35

pred.store.continue35:                            ; preds = %pred.store.if34, %pred.store.continue33
  %i.cl = extractelement <16 x i1> %i.p, i64 15
  br i1 %i.cl, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 15
  %i.co = extractelement <16 x i8> %wide.load, i64 15
  %i.cp = add nsw i8 %i.co, -32
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !69
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %pred.store.continue37
  %cmp.n = icmp eq i64 %i.n, 0
  br i1 %cmp.n, label %.loopexit32.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.n, 4
  br i1 %min.epilog.iters.check, label %.lr.ph35.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cr = and i64 %i.i, 3                         ; 2 uses
  %n.vec38 = sub i64 %i.k, %i.cr                  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue48, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %pred.store.continue48 ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %index39 ; 2 uses
  %wide.load40 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !69 ; 5 uses
  %i.ct = icmp sgt <4 x i8> %wide.load40, splat (i8 96) ; 4 uses
  %i.cu = extractelement <4 x i1> %i.ct, i64 0
  br i1 %i.cu, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %vec.epilog.vector.body
  %i.cv = extractelement <4 x i8> %wide.load40, i64 0
  %i.cw = add nsw i8 %i.cv, -32
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !69
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %vec.epilog.vector.body
  %i.cx = extractelement <4 x i1> %i.ct, i64 1
  br i1 %i.cx, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.cy = getelementptr i8, ptr %i.a, i64 %index39
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %i.da = extractelement <4 x i8> %wide.load40, i64 1
  %i.db = add nsw i8 %i.da, -32
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !69
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.dc = extractelement <4 x i1> %i.ct, i64 2
  br i1 %i.dc, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.dd = getelementptr i8, ptr %i.a, i64 %index39
  %i.de = getelementptr i8, ptr %i.dd, i64 2
  %i.df = extractelement <4 x i8> %wide.load40, i64 2
  %i.dg = add nsw i8 %i.df, -32
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !69
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.dh = extractelement <4 x i1> %i.ct, i64 3
  br i1 %i.dh, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.di = getelementptr i8, ptr %i.a, i64 %index39
  %i.dj = getelementptr i8, ptr %i.di, i64 3
  %i.dk = extractelement <4 x i8> %wide.load40, i64 3
  %i.dl = add nsw i8 %i.dk, -32
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !69
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %index.next49 = add nuw i64 %index39, 4         ; 2 uses
  %i.dm = icmp eq i64 %index.next49, %n.vec38
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !388

vec.epilog.middle.block:                          ; preds = %pred.store.continue48
  %cmp.n50 = icmp eq i64 %i.cr, 0
  br i1 %cmp.n50, label %.loopexit32.i, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.034.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ]
  br label %.lr.ph35.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.02333.i = phi i64 [ %i.do, %.lr.ph.i ], [ %i.k, %bb.h ]
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.do = add i64 %.02333.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.do, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.preheader, %bb.j
  %.034.i = phi i64 [ %i.dt, %bb.j ], [ %.034.i.ph, %.lr.ph35.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.034.i ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !69  ; 2 uses
  %i.dr = icmp sgt i8 %i.dq, 96
  br i1 %i.dr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph35.i
  %i.ds = add nsw i8 %i.dq, -32
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph35.i
  %i.dt = add nuw nsw i64 %.034.i, 1              ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.dt, %i.k
  br i1 %exitcond37.not.i, label %.loopexit32.i, label %.lr.ph35.i, !llvm.loop !389

.loopexit32.i:                                    ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN12_GLOBAL__N_123print_integer_to_streamItEEvRSoT_N4toml2v311value_flagsEm.exit

_ZN12_GLOBAL__N_123print_integer_to_streamItEEvRSoT_N4toml2v311value_flagsEm.exit: ; preds = %bb.c, %.loopexit32.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSojNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 27 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02435.i = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.c = add nuw i64 %.02435.i, 1                 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.c, %umax.i
  br i1 %exitcond37.not.i, label %_ZN12_GLOBAL__N_123print_integer_to_streamIjEEvRSoT_N4toml2v311value_flagsEm.exit, label %bb.c, !llvm.loop !390

bb.d:                                             ; preds = %bb.a
  %i.d = and i16 %2, 3
  switch i16 %i.d, label %default.unreachable [
    i16 3, label %bb.g
    i16 1, label %bb.e
    i16 2, label %bb.f
    i16 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  br label %bb.h

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.e = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.g ]
  %.023.i = phi i32 [ 10, %bb.d ], [ 2, %bb.e ], [ 8, %bb.f ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = call { ptr, i32 } @_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i32 noundef %1, i32 noundef %.023.i)
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j                       ; 9 uses
  %i.l = icmp ult i64 %i.k, %3
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.m = icmp ne i64 %i.k, 0
  %or.cond.i = and i1 %i.e, %i.m
  br i1 %or.cond.i, label %iter.check, label %.loopexit31.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph34.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.i, 15                         ; 3 uses
  %n.vec = sub nuw i64 %i.k, %i.n                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue37, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue37 ] ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.o, align 16, !tbaa !69 ; 17 uses
  %i.p = icmp sgt <16 x i8> %wide.load, splat (i8 96) ; 16 uses
  %i.q = extractelement <16 x i1> %i.p, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.r = extractelement <16 x i8> %wide.load, i64 0
  %i.s = add nsw i8 %i.r, -32
  store i8 %i.s, ptr %i.o, align 16, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.t = extractelement <16 x i1> %i.p, i64 1
  br i1 %i.t, label %pred.store.if8, label %pred.store.continue9

pred.store.if8:                                   ; preds = %pred.store.continue
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = extractelement <16 x i8> %wide.load, i64 1
  %i.x = add nsw i8 %i.w, -32
  store i8 %i.x, ptr %i.v, align 1, !tbaa !69
  br label %pred.store.continue9

pred.store.continue9:                             ; preds = %pred.store.if8, %pred.store.continue
  %i.y = extractelement <16 x i1> %i.p, i64 2
  br i1 %i.y, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue9
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = extractelement <16 x i8> %wide.load, i64 2
  %i.ac = add nsw i8 %i.ab, -32
  store i8 %i.ac, ptr %i.aa, align 2, !tbaa !69
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue9
  %i.ad = extractelement <16 x i1> %i.p, i64 3
  br i1 %i.ad, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = extractelement <16 x i8> %wide.load, i64 3
  %i.ah = add nsw i8 %i.ag, -32
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !69
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.ai = extractelement <16 x i1> %i.p, i64 4
  br i1 %i.ai, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = extractelement <16 x i8> %wide.load, i64 4
  %i.am = add nsw i8 %i.al, -32
  store i8 %i.am, ptr %i.ak, align 4, !tbaa !69
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.an = extractelement <16 x i1> %i.p, i64 5
  br i1 %i.an, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.aq = extractelement <16 x i8> %wide.load, i64 5
  %i.ar = add nsw i8 %i.aq, -32
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !69
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.as = extractelement <16 x i1> %i.p, i64 6
  br i1 %i.as, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.av = extractelement <16 x i8> %wide.load, i64 6
  %i.aw = add nsw i8 %i.av, -32
  store i8 %i.aw, ptr %i.au, align 2, !tbaa !69
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ax = extractelement <16 x i1> %i.p, i64 7
  br i1 %i.ax, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  %i.ba = extractelement <16 x i8> %wide.load, i64 7
  %i.bb = add nsw i8 %i.ba, -32
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !69
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.bc = extractelement <16 x i1> %i.p, i64 8
  br i1 %i.bc, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = extractelement <16 x i8> %wide.load, i64 8
  %i.bg = add nsw i8 %i.bf, -32
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !69
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.bh = extractelement <16 x i1> %i.p, i64 9
  br i1 %i.bh, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 9
  %i.bk = extractelement <16 x i8> %wide.load, i64 9
  %i.bl = add nsw i8 %i.bk, -32
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !69
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.bm = extractelement <16 x i1> %i.p, i64 10
  br i1 %i.bm, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.bp = extractelement <16 x i8> %wide.load, i64 10
  %i.bq = add nsw i8 %i.bp, -32
  store i8 %i.bq, ptr %i.bo, align 2, !tbaa !69
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.br = extractelement <16 x i1> %i.p, i64 11
  br i1 %i.br, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = extractelement <16 x i8> %wide.load, i64 11
  %i.bv = add nsw i8 %i.bu, -32
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !69
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.bw = extractelement <16 x i1> %i.p, i64 12
  br i1 %i.bw, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bz = extractelement <16 x i8> %wide.load, i64 12
  %i.ca = add nsw i8 %i.bz, -32
  store i8 %i.ca, ptr %i.by, align 4, !tbaa !69
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.cb = extractelement <16 x i1> %i.p, i64 13
  br i1 %i.cb, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 13
  %i.ce = extractelement <16 x i8> %wide.load, i64 13
  %i.cf = add nsw i8 %i.ce, -32
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !69
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %i.cg = extractelement <16 x i1> %i.p, i64 14
  br i1 %i.cg, label %pred.store.if34, label %pred.store.continue35

pred.store.if34:                                  ; preds = %pred.store.continue33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 14
  %i.cj = extractelement <16 x i8> %wide.load, i64 14
  %i.ck = add nsw i8 %i.cj, -32
  store i8 %i.ck, ptr %i.ci, align 2, !tbaa !69
  br label %pred.store.continue35

pred.store.continue35:                            ; preds = %pred.store.if34, %pred.store.continue33
  %i.cl = extractelement <16 x i1> %i.p, i64 15
  br i1 %i.cl, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 15
  %i.co = extractelement <16 x i8> %wide.load, i64 15
  %i.cp = add nsw i8 %i.co, -32
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !69
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !391

middle.block:                                     ; preds = %pred.store.continue37
  %cmp.n = icmp eq i64 %i.n, 0
  br i1 %cmp.n, label %.loopexit31.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.n, 4
  br i1 %min.epilog.iters.check, label %.lr.ph34.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cr = and i64 %i.i, 3                         ; 2 uses
  %n.vec38 = sub i64 %i.k, %i.cr                  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue48, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %pred.store.continue48 ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %index39 ; 2 uses
  %wide.load40 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !69 ; 5 uses
  %i.ct = icmp sgt <4 x i8> %wide.load40, splat (i8 96) ; 4 uses
  %i.cu = extractelement <4 x i1> %i.ct, i64 0
  br i1 %i.cu, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %vec.epilog.vector.body
  %i.cv = extractelement <4 x i8> %wide.load40, i64 0
  %i.cw = add nsw i8 %i.cv, -32
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !69
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %vec.epilog.vector.body
  %i.cx = extractelement <4 x i1> %i.ct, i64 1
  br i1 %i.cx, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.cy = getelementptr i8, ptr %i.a, i64 %index39
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %i.da = extractelement <4 x i8> %wide.load40, i64 1
  %i.db = add nsw i8 %i.da, -32
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !69
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.dc = extractelement <4 x i1> %i.ct, i64 2
  br i1 %i.dc, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.dd = getelementptr i8, ptr %i.a, i64 %index39
  %i.de = getelementptr i8, ptr %i.dd, i64 2
  %i.df = extractelement <4 x i8> %wide.load40, i64 2
  %i.dg = add nsw i8 %i.df, -32
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !69
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.dh = extractelement <4 x i1> %i.ct, i64 3
  br i1 %i.dh, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.di = getelementptr i8, ptr %i.a, i64 %index39
  %i.dj = getelementptr i8, ptr %i.di, i64 3
  %i.dk = extractelement <4 x i8> %wide.load40, i64 3
  %i.dl = add nsw i8 %i.dk, -32
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !69
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %index.next49 = add nuw i64 %index39, 4         ; 2 uses
  %i.dm = icmp eq i64 %index.next49, %n.vec38
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !392

vec.epilog.middle.block:                          ; preds = %pred.store.continue48
  %cmp.n50 = icmp eq i64 %i.cr, 0
  br i1 %cmp.n50, label %.loopexit31.i, label %.lr.ph34.i.preheader

.lr.ph34.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.033.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ]
  br label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.02232.i = phi i64 [ %i.do, %.lr.ph.i ], [ %i.k, %bb.h ]
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.do = add i64 %.02232.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.do, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.preheader, %bb.j
  %.033.i = phi i64 [ %i.dt, %bb.j ], [ %.033.i.ph, %.lr.ph34.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.033.i ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !69  ; 2 uses
  %i.dr = icmp sgt i8 %i.dq, 96
  br i1 %i.dr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph34.i
  %i.ds = add nsw i8 %i.dq, -32
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph34.i
  %i.dt = add nuw nsw i64 %.033.i, 1              ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.dt, %i.k
  br i1 %exitcond36.not.i, label %.loopexit31.i, label %.lr.ph34.i, !llvm.loop !393

.loopexit31.i:                                    ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN12_GLOBAL__N_123print_integer_to_streamIjEEvRSoT_N4toml2v311value_flagsEm.exit

_ZN12_GLOBAL__N_123print_integer_to_streamIjEEvRSoT_N4toml2v311value_flagsEm.exit: ; preds = %bb.c, %.loopexit31.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSomNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 27 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02435.i = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.c = add nuw i64 %.02435.i, 1                 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.c, %umax.i
  br i1 %exitcond37.not.i, label %_ZN12_GLOBAL__N_123print_integer_to_streamImEEvRSoT_N4toml2v311value_flagsEm.exit, label %bb.c, !llvm.loop !394

bb.d:                                             ; preds = %bb.a
  %i.d = and i16 %2, 3
  switch i16 %i.d, label %default.unreachable [
    i16 3, label %bb.g
    i16 1, label %bb.e
    i16 2, label %bb.f
    i16 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  br label %bb.h

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.e = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.g ]
  %.023.i = phi i32 [ 10, %bb.d ], [ 2, %bb.e ], [ 8, %bb.f ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = call { ptr, i32 } @_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i64 noundef %1, i32 noundef %.023.i)
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j                       ; 9 uses
  %i.l = icmp ult i64 %i.k, %3
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.m = icmp ne i64 %i.k, 0
  %or.cond.i = and i1 %i.e, %i.m
  br i1 %or.cond.i, label %iter.check, label %.loopexit31.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph34.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.i, 15                         ; 3 uses
  %n.vec = sub nuw i64 %i.k, %i.n                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue37, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue37 ] ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.o, align 16, !tbaa !69 ; 17 uses
  %i.p = icmp sgt <16 x i8> %wide.load, splat (i8 96) ; 16 uses
  %i.q = extractelement <16 x i1> %i.p, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.r = extractelement <16 x i8> %wide.load, i64 0
  %i.s = add nsw i8 %i.r, -32
  store i8 %i.s, ptr %i.o, align 16, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.t = extractelement <16 x i1> %i.p, i64 1
  br i1 %i.t, label %pred.store.if8, label %pred.store.continue9

pred.store.if8:                                   ; preds = %pred.store.continue
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = extractelement <16 x i8> %wide.load, i64 1
  %i.x = add nsw i8 %i.w, -32
  store i8 %i.x, ptr %i.v, align 1, !tbaa !69
  br label %pred.store.continue9

pred.store.continue9:                             ; preds = %pred.store.if8, %pred.store.continue
  %i.y = extractelement <16 x i1> %i.p, i64 2
  br i1 %i.y, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue9
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = extractelement <16 x i8> %wide.load, i64 2
  %i.ac = add nsw i8 %i.ab, -32
  store i8 %i.ac, ptr %i.aa, align 2, !tbaa !69
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue9
  %i.ad = extractelement <16 x i1> %i.p, i64 3
  br i1 %i.ad, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = extractelement <16 x i8> %wide.load, i64 3
  %i.ah = add nsw i8 %i.ag, -32
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !69
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.ai = extractelement <16 x i1> %i.p, i64 4
  br i1 %i.ai, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = extractelement <16 x i8> %wide.load, i64 4
  %i.am = add nsw i8 %i.al, -32
  store i8 %i.am, ptr %i.ak, align 4, !tbaa !69
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.an = extractelement <16 x i1> %i.p, i64 5
  br i1 %i.an, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.aq = extractelement <16 x i8> %wide.load, i64 5
  %i.ar = add nsw i8 %i.aq, -32
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !69
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.as = extractelement <16 x i1> %i.p, i64 6
  br i1 %i.as, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.av = extractelement <16 x i8> %wide.load, i64 6
  %i.aw = add nsw i8 %i.av, -32
  store i8 %i.aw, ptr %i.au, align 2, !tbaa !69
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ax = extractelement <16 x i1> %i.p, i64 7
  br i1 %i.ax, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  %i.ba = extractelement <16 x i8> %wide.load, i64 7
  %i.bb = add nsw i8 %i.ba, -32
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !69
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.bc = extractelement <16 x i1> %i.p, i64 8
  br i1 %i.bc, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = extractelement <16 x i8> %wide.load, i64 8
  %i.bg = add nsw i8 %i.bf, -32
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !69
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.bh = extractelement <16 x i1> %i.p, i64 9
  br i1 %i.bh, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 9
  %i.bk = extractelement <16 x i8> %wide.load, i64 9
  %i.bl = add nsw i8 %i.bk, -32
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !69
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.bm = extractelement <16 x i1> %i.p, i64 10
  br i1 %i.bm, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.bp = extractelement <16 x i8> %wide.load, i64 10
  %i.bq = add nsw i8 %i.bp, -32
  store i8 %i.bq, ptr %i.bo, align 2, !tbaa !69
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.br = extractelement <16 x i1> %i.p, i64 11
  br i1 %i.br, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = extractelement <16 x i8> %wide.load, i64 11
  %i.bv = add nsw i8 %i.bu, -32
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !69
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.bw = extractelement <16 x i1> %i.p, i64 12
  br i1 %i.bw, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bz = extractelement <16 x i8> %wide.load, i64 12
  %i.ca = add nsw i8 %i.bz, -32
  store i8 %i.ca, ptr %i.by, align 4, !tbaa !69
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.cb = extractelement <16 x i1> %i.p, i64 13
  br i1 %i.cb, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 13
  %i.ce = extractelement <16 x i8> %wide.load, i64 13
  %i.cf = add nsw i8 %i.ce, -32
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !69
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %i.cg = extractelement <16 x i1> %i.p, i64 14
  br i1 %i.cg, label %pred.store.if34, label %pred.store.continue35

pred.store.if34:                                  ; preds = %pred.store.continue33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 14
  %i.cj = extractelement <16 x i8> %wide.load, i64 14
  %i.ck = add nsw i8 %i.cj, -32
  store i8 %i.ck, ptr %i.ci, align 2, !tbaa !69
  br label %pred.store.continue35

pred.store.continue35:                            ; preds = %pred.store.if34, %pred.store.continue33
  %i.cl = extractelement <16 x i1> %i.p, i64 15
  br i1 %i.cl, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 15
  %i.co = extractelement <16 x i8> %wide.load, i64 15
  %i.cp = add nsw i8 %i.co, -32
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !69
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !395

middle.block:                                     ; preds = %pred.store.continue37
  %cmp.n = icmp eq i64 %i.n, 0
  br i1 %cmp.n, label %.loopexit31.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.n, 4
  br i1 %min.epilog.iters.check, label %.lr.ph34.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cr = and i64 %i.i, 3                         ; 2 uses
  %n.vec38 = sub i64 %i.k, %i.cr                  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue48, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %pred.store.continue48 ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %index39 ; 2 uses
  %wide.load40 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !69 ; 5 uses
  %i.ct = icmp sgt <4 x i8> %wide.load40, splat (i8 96) ; 4 uses
  %i.cu = extractelement <4 x i1> %i.ct, i64 0
  br i1 %i.cu, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %vec.epilog.vector.body
  %i.cv = extractelement <4 x i8> %wide.load40, i64 0
  %i.cw = add nsw i8 %i.cv, -32
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !69
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %vec.epilog.vector.body
  %i.cx = extractelement <4 x i1> %i.ct, i64 1
  br i1 %i.cx, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.cy = getelementptr i8, ptr %i.a, i64 %index39
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %i.da = extractelement <4 x i8> %wide.load40, i64 1
  %i.db = add nsw i8 %i.da, -32
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !69
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.dc = extractelement <4 x i1> %i.ct, i64 2
  br i1 %i.dc, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.dd = getelementptr i8, ptr %i.a, i64 %index39
  %i.de = getelementptr i8, ptr %i.dd, i64 2
  %i.df = extractelement <4 x i8> %wide.load40, i64 2
  %i.dg = add nsw i8 %i.df, -32
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !69
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.dh = extractelement <4 x i1> %i.ct, i64 3
  br i1 %i.dh, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.di = getelementptr i8, ptr %i.a, i64 %index39
  %i.dj = getelementptr i8, ptr %i.di, i64 3
  %i.dk = extractelement <4 x i8> %wide.load40, i64 3
  %i.dl = add nsw i8 %i.dk, -32
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !69
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %index.next49 = add nuw i64 %index39, 4         ; 2 uses
  %i.dm = icmp eq i64 %index.next49, %n.vec38
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !396

vec.epilog.middle.block:                          ; preds = %pred.store.continue48
  %cmp.n50 = icmp eq i64 %i.cr, 0
  br i1 %cmp.n50, label %.loopexit31.i, label %.lr.ph34.i.preheader

.lr.ph34.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.033.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ]
  br label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.02232.i = phi i64 [ %i.do, %.lr.ph.i ], [ %i.k, %bb.h ]
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.do = add i64 %.02232.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.do, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !397

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.preheader, %bb.j
  %.033.i = phi i64 [ %i.dt, %bb.j ], [ %.033.i.ph, %.lr.ph34.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.033.i ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !69  ; 2 uses
  %i.dr = icmp sgt i8 %i.dq, 96
  br i1 %i.dr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph34.i
  %i.ds = add nsw i8 %i.dq, -32
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph34.i
  %i.dt = add nuw nsw i64 %.033.i, 1              ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.dt, %i.k
  br i1 %exitcond36.not.i, label %.loopexit31.i, label %.lr.ph34.i, !llvm.loop !398

.loopexit31.i:                                    ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN12_GLOBAL__N_123print_integer_to_streamImEEvRSoT_N4toml2v311value_flagsEm.exit

_ZN12_GLOBAL__N_123print_integer_to_streamImEEvRSoT_N4toml2v311value_flagsEm.exit: ; preds = %bb.c, %.loopexit31.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoyNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 27 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.02435.i = phi i64 [ 0, %bb.b ], [ %i.c, %bb.c ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  %i.c = add nuw i64 %.02435.i, 1                 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.c, %umax.i
  br i1 %exitcond37.not.i, label %_ZN12_GLOBAL__N_123print_integer_to_streamIyEEvRSoT_N4toml2v311value_flagsEm.exit, label %bb.c, !llvm.loop !399

bb.d:                                             ; preds = %bb.a
  %i.d = and i16 %2, 3
  switch i16 %i.d, label %default.unreachable [
    i16 3, label %bb.g
    i16 1, label %bb.e
    i16 2, label %bb.f
    i16 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  br label %bb.h

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.e = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.g ]
  %.023.i = phi i32 [ 10, %bb.d ], [ 2, %bb.e ], [ 8, %bb.f ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = call { ptr, i32 } @_ZSt12__to_chars_iIyENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i64 noundef %1, i32 noundef %.023.i)
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j                       ; 9 uses
  %i.l = icmp ult i64 %i.k, %3
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.m = icmp ne i64 %i.k, 0
  %or.cond.i = and i1 %i.e, %i.m
  br i1 %or.cond.i, label %iter.check, label %.loopexit31.i

iter.check:                                       ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph34.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.i, 15                         ; 3 uses
  %n.vec = sub nuw i64 %i.k, %i.n                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue37, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue37 ] ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.o, align 16, !tbaa !69 ; 17 uses
  %i.p = icmp sgt <16 x i8> %wide.load, splat (i8 96) ; 16 uses
  %i.q = extractelement <16 x i1> %i.p, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.r = extractelement <16 x i8> %wide.load, i64 0
  %i.s = add nsw i8 %i.r, -32
  store i8 %i.s, ptr %i.o, align 16, !tbaa !69
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.t = extractelement <16 x i1> %i.p, i64 1
  br i1 %i.t, label %pred.store.if8, label %pred.store.continue9

pred.store.if8:                                   ; preds = %pred.store.continue
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = extractelement <16 x i8> %wide.load, i64 1
  %i.x = add nsw i8 %i.w, -32
  store i8 %i.x, ptr %i.v, align 1, !tbaa !69
  br label %pred.store.continue9

pred.store.continue9:                             ; preds = %pred.store.if8, %pred.store.continue
  %i.y = extractelement <16 x i1> %i.p, i64 2
  br i1 %i.y, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue9
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = extractelement <16 x i8> %wide.load, i64 2
  %i.ac = add nsw i8 %i.ab, -32
  store i8 %i.ac, ptr %i.aa, align 2, !tbaa !69
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue9
  %i.ad = extractelement <16 x i1> %i.p, i64 3
  br i1 %i.ad, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = extractelement <16 x i8> %wide.load, i64 3
  %i.ah = add nsw i8 %i.ag, -32
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !69
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.ai = extractelement <16 x i1> %i.p, i64 4
  br i1 %i.ai, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = extractelement <16 x i8> %wide.load, i64 4
  %i.am = add nsw i8 %i.al, -32
  store i8 %i.am, ptr %i.ak, align 4, !tbaa !69
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.an = extractelement <16 x i1> %i.p, i64 5
  br i1 %i.an, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.aq = extractelement <16 x i8> %wide.load, i64 5
  %i.ar = add nsw i8 %i.aq, -32
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !69
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.as = extractelement <16 x i1> %i.p, i64 6
  br i1 %i.as, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.av = extractelement <16 x i8> %wide.load, i64 6
  %i.aw = add nsw i8 %i.av, -32
  store i8 %i.aw, ptr %i.au, align 2, !tbaa !69
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ax = extractelement <16 x i1> %i.p, i64 7
  br i1 %i.ax, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  %i.ba = extractelement <16 x i8> %wide.load, i64 7
  %i.bb = add nsw i8 %i.ba, -32
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !69
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.bc = extractelement <16 x i1> %i.p, i64 8
  br i1 %i.bc, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = extractelement <16 x i8> %wide.load, i64 8
  %i.bg = add nsw i8 %i.bf, -32
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !69
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.bh = extractelement <16 x i1> %i.p, i64 9
  br i1 %i.bh, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 9
  %i.bk = extractelement <16 x i8> %wide.load, i64 9
  %i.bl = add nsw i8 %i.bk, -32
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !69
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.bm = extractelement <16 x i1> %i.p, i64 10
  br i1 %i.bm, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.bp = extractelement <16 x i8> %wide.load, i64 10
  %i.bq = add nsw i8 %i.bp, -32
  store i8 %i.bq, ptr %i.bo, align 2, !tbaa !69
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.br = extractelement <16 x i1> %i.p, i64 11
  br i1 %i.br, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = extractelement <16 x i8> %wide.load, i64 11
  %i.bv = add nsw i8 %i.bu, -32
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !69
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.bw = extractelement <16 x i1> %i.p, i64 12
  br i1 %i.bw, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bz = extractelement <16 x i8> %wide.load, i64 12
  %i.ca = add nsw i8 %i.bz, -32
  store i8 %i.ca, ptr %i.by, align 4, !tbaa !69
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.cb = extractelement <16 x i1> %i.p, i64 13
  br i1 %i.cb, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 13
  %i.ce = extractelement <16 x i8> %wide.load, i64 13
  %i.cf = add nsw i8 %i.ce, -32
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !69
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %i.cg = extractelement <16 x i1> %i.p, i64 14
  br i1 %i.cg, label %pred.store.if34, label %pred.store.continue35

pred.store.if34:                                  ; preds = %pred.store.continue33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 14
  %i.cj = extractelement <16 x i8> %wide.load, i64 14
  %i.ck = add nsw i8 %i.cj, -32
  store i8 %i.ck, ptr %i.ci, align 2, !tbaa !69
  br label %pred.store.continue35

pred.store.continue35:                            ; preds = %pred.store.if34, %pred.store.continue33
  %i.cl = extractelement <16 x i1> %i.p, i64 15
  br i1 %i.cl, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 15
  %i.co = extractelement <16 x i8> %wide.load, i64 15
  %i.cp = add nsw i8 %i.co, -32
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !69
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !400

middle.block:                                     ; preds = %pred.store.continue37
  %cmp.n = icmp eq i64 %i.n, 0
end_hunk_0
