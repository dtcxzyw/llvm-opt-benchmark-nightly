Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/filter_policy?download=true
inline.NumInlined: 3027
inline.NumDeleted: 1523
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0
@_ZTVN7rocksdb18RibbonFilterPolicyE = unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb21BloomLikeFilterPolicyD2Ev, ptr @_ZN7rocksdb18RibbonFilterPolicyD0Ev, ptr @_ZNK7rocksdb12Customizable9GetOptionERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS9_, ptr @_ZNK7rocksdb12Customizable13AreEquivalentERKNS_13ConfigOptionsEPKNS_12ConfigurableEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Configurable19GetPrintableOptionsB5cxx11Ev, ptr @_ZN7rocksdb12Configurable14PrepareOptionsERKNS_13ConfigOptionsE, ptr @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE, ptr @_ZNK7rocksdb12Customizable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable18ParseStringOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable16ConfigureOptionsERKNS_13ConfigOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEPSJ_, ptr @_ZN7rocksdb12Configurable11ParseOptionERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_Pv, ptr @_ZNK7rocksdb12Configurable15OptionsAreEqualERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSG_PSC_, ptr @_ZNK7rocksdb12Customizable16SerializeOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb18RibbonFilterPolicy4NameEv, ptr @_ZNK7rocksdb18RibbonFilterPolicy5GetIdB5cxx11Ev, ptr @_ZNK7rocksdb21BloomLikeFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable5InnerEv, ptr @_ZNK7rocksdb18RibbonFilterPolicy8NickNameEv, ptr @_ZNK7rocksdb19BuiltinFilterPolicy17CompatibilityNameEv, ptr @_ZNK7rocksdb18RibbonFilterPolicy21GetBuilderWithContextERKNS_21FilterBuildingContextE, ptr @_ZNK7rocksdb19BuiltinFilterPolicy19GetFilterBitsReaderERKNS_5SliceE] }, align 8
@_ZZN7rocksdb18RibbonFilterPolicyC1EdiE9type_infoB5cxx11 = internal global %"class.std::unordered_map" zeroinitializer, align 8
@_ZGVZN7rocksdb18RibbonFilterPolicyC1EdiE9type_infoB5cxx11 = internal global i64 0, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"bloom_before_level\00", align 1
@__dso_handle = external hidden global i8
@.str.14 = private unnamed_addr constant [13 x i8] c"ribbonfilter\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"rocksdb.RibbonFilter\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"RibbonFilterPolicy\00", align 1
@_ZN7rocksdb14kNullptrStringB5cxx11E = external local_unnamed_addr global %"class.std::__cxx11::basic_string", align 8
@.str.17 = private unnamed_addr constant [21 x i8] c"Cannot reset object \00", align 1
@_ZZN7rocksdb12FilterPolicy16CreateFromStringERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10shared_ptrIKS0_EE6loaded = internal global %"struct.std::once_flag" zeroinitializer, align 4
@_ZZN7rocksdb21BloomLikeFilterPolicy16GetAllFixedImplsB5cxx11EvE5implsB5cxx11 = internal unnamed_addr global ptr null, align 8
@_ZGVZN7rocksdb21BloomLikeFilterPolicy16GetAllFixedImplsB5cxx11EvE5implsB5cxx11 = internal global i64 0, align 8
@_ZTVN7rocksdb4test23LegacyBloomFilterPolicyE = unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb21BloomLikeFilterPolicyD2Ev, ptr @_ZN7rocksdb4test23LegacyBloomFilterPolicyD0Ev, ptr @_ZNK7rocksdb12Customizable9GetOptionERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS9_, ptr @_ZNK7rocksdb12Customizable13AreEquivalentERKNS_13ConfigOptionsEPKNS_12ConfigurableEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Configurable19GetPrintableOptionsB5cxx11Ev, ptr @_ZN7rocksdb12Configurable14PrepareOptionsERKNS_13ConfigOptionsE, ptr @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE, ptr @_ZNK7rocksdb12Customizable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable18ParseStringOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable16ConfigureOptionsERKNS_13ConfigOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEPSJ_, ptr @_ZN7rocksdb12Configurable11ParseOptionERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_Pv, ptr @_ZNK7rocksdb12Configurable15OptionsAreEqualERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSG_PSC_, ptr @_ZNK7rocksdb12Customizable16SerializeOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb4test23LegacyBloomFilterPolicy4NameEv, ptr @_ZNK7rocksdb21BloomLikeFilterPolicy5GetIdB5cxx11Ev, ptr @_ZNK7rocksdb21BloomLikeFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable5InnerEv, ptr @_ZNK7rocksdb12Customizable8NickNameEv, ptr @_ZNK7rocksdb19BuiltinFilterPolicy17CompatibilityNameEv, ptr @_ZNK7rocksdb4test23LegacyBloomFilterPolicy21GetBuilderWithContextERKNS_21FilterBuildingContextE, ptr @_ZNK7rocksdb19BuiltinFilterPolicy19GetFilterBitsReaderERKNS_5SliceE] }, align 8
@_ZTVN7rocksdb4test26FastLocalBloomFilterPolicyE = unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb21BloomLikeFilterPolicyD2Ev, ptr @_ZN7rocksdb4test26FastLocalBloomFilterPolicyD0Ev, ptr @_ZNK7rocksdb12Customizable9GetOptionERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS9_, ptr @_ZNK7rocksdb12Customizable13AreEquivalentERKNS_13ConfigOptionsEPKNS_12ConfigurableEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Configurable19GetPrintableOptionsB5cxx11Ev, ptr @_ZN7rocksdb12Configurable14PrepareOptionsERKNS_13ConfigOptionsE, ptr @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE, ptr @_ZNK7rocksdb12Customizable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable18ParseStringOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable16ConfigureOptionsERKNS_13ConfigOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEPSJ_, ptr @_ZN7rocksdb12Configurable11ParseOptionERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_Pv, ptr @_ZNK7rocksdb12Configurable15OptionsAreEqualERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSG_PSC_, ptr @_ZNK7rocksdb12Customizable16SerializeOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb4test26FastLocalBloomFilterPolicy4NameEv, ptr @_ZNK7rocksdb21BloomLikeFilterPolicy5GetIdB5cxx11Ev, ptr @_ZNK7rocksdb21BloomLikeFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable5InnerEv, ptr @_ZNK7rocksdb12Customizable8NickNameEv, ptr @_ZNK7rocksdb19BuiltinFilterPolicy17CompatibilityNameEv, ptr @_ZNK7rocksdb4test26FastLocalBloomFilterPolicy21GetBuilderWithContextERKNS_21FilterBuildingContextE, ptr @_ZNK7rocksdb19BuiltinFilterPolicy19GetFilterBitsReaderERKNS_5SliceE] }, align 8
@_ZTVN7rocksdb4test29Standard128RibbonFilterPolicyE = unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb21BloomLikeFilterPolicyD2Ev, ptr @_ZN7rocksdb4test29Standard128RibbonFilterPolicyD0Ev, ptr @_ZNK7rocksdb12Customizable9GetOptionERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS9_, ptr @_ZNK7rocksdb12Customizable13AreEquivalentERKNS_13ConfigOptionsEPKNS_12ConfigurableEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Configurable19GetPrintableOptionsB5cxx11Ev, ptr @_ZN7rocksdb12Configurable14PrepareOptionsERKNS_13ConfigOptionsE, ptr @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE, ptr @_ZNK7rocksdb12Customizable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable18ParseStringOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable16ConfigureOptionsERKNS_13ConfigOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEPSJ_, ptr @_ZN7rocksdb12Configurable11ParseOptionERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_Pv, ptr @_ZNK7rocksdb12Configurable15OptionsAreEqualERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSG_PSC_, ptr @_ZNK7rocksdb12Customizable16SerializeOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb4test29Standard128RibbonFilterPolicy4NameEv, ptr @_ZNK7rocksdb21BloomLikeFilterPolicy5GetIdB5cxx11Ev, ptr @_ZNK7rocksdb21BloomLikeFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable5InnerEv, ptr @_ZNK7rocksdb12Customizable8NickNameEv, ptr @_ZNK7rocksdb19BuiltinFilterPolicy17CompatibilityNameEv, ptr @_ZNK7rocksdb4test29Standard128RibbonFilterPolicy21GetBuilderWithContextERKNS_21FilterBuildingContextE, ptr @_ZNK7rocksdb19BuiltinFilterPolicy19GetFilterBitsReaderERKNS_5SliceE] }, align 8
@_ZTVN7rocksdb19BuiltinFilterPolicyE = unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb12FilterPolicyD2Ev, ptr @_ZN7rocksdb19BuiltinFilterPolicyD0Ev, ptr @_ZNK7rocksdb12Customizable9GetOptionERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS9_, ptr @_ZNK7rocksdb12Customizable13AreEquivalentERKNS_13ConfigOptionsEPKNS_12ConfigurableEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Configurable19GetPrintableOptionsB5cxx11Ev, ptr @_ZN7rocksdb12Configurable14PrepareOptionsERKNS_13ConfigOptionsE, ptr @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE, ptr @_ZNK7rocksdb12Customizable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable18ParseStringOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable16ConfigureOptionsERKNS_13ConfigOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEPSJ_, ptr @_ZN7rocksdb12Configurable11ParseOptionERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_Pv, ptr @_ZNK7rocksdb12Configurable15OptionsAreEqualERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSG_PSC_, ptr @_ZNK7rocksdb12Customizable16SerializeOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @__cxa_pure_virtual, ptr @_ZNK7rocksdb12Customizable5GetIdB5cxx11Ev, ptr @_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable5InnerEv, ptr @_ZNK7rocksdb12Customizable8NickNameEv, ptr @_ZNK7rocksdb19BuiltinFilterPolicy17CompatibilityNameEv, ptr @__cxa_pure_virtual, ptr @_ZNK7rocksdb19BuiltinFilterPolicy19GetFilterBitsReaderERKNS_5SliceE] }, align 8
@_ZTVN7rocksdb12FilterPolicyE = unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb12FilterPolicyD1Ev, ptr @_ZN7rocksdb12FilterPolicyD0Ev, ptr @_ZNK7rocksdb12Customizable9GetOptionERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS9_, ptr @_ZNK7rocksdb12Customizable13AreEquivalentERKNS_13ConfigOptionsEPKNS_12ConfigurableEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Configurable19GetPrintableOptionsB5cxx11Ev, ptr @_ZN7rocksdb12Configurable14PrepareOptionsERKNS_13ConfigOptionsE, ptr @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE, ptr @_ZNK7rocksdb12Customizable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable18ParseStringOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable16ConfigureOptionsERKNS_13ConfigOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEPSJ_, ptr @_ZN7rocksdb12Configurable11ParseOptionERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_Pv, ptr @_ZNK7rocksdb12Configurable15OptionsAreEqualERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSG_PSC_, ptr @_ZNK7rocksdb12Customizable16SerializeOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @__cxa_pure_virtual, ptr @_ZNK7rocksdb12Customizable5GetIdB5cxx11Ev, ptr @_ZNK7rocksdb12Customizable12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable5InnerEv, ptr @_ZNK7rocksdb12Customizable8NickNameEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@.str.18 = private unnamed_addr constant [27 x i8] c"rocksdb.BuiltinBloomFilter\00", align 1
@_ZTVN7rocksdb12ConfigurableE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.20 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilderE = internal unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilderD2Ev, ptr @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilderD0Ev, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder6AddKeyERKNS_5SliceE, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder12AddKeyAndAltERKNS_5SliceES4_, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder20EstimateEntriesAddedEv, ptr @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EE, ptr @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EEPNS_6StatusE, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder15MaybePostVerifyERKNS_5SliceE, ptr @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder21ApproximateNumEntriesEm, ptr @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder14CalculateSpaceEm, ptr @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder15EstimatedFpRateEmm, ptr @_ZN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilder20RoundDownUsableSpaceEm] }, align 8
@_ZTVN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilderE = internal unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilderD2Ev, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilderD0Ev, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder6AddKeyERKNS_5SliceE, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder12AddKeyAndAltERKNS_5SliceES4_, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder20EstimateEntriesAddedEv, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb17FilterBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS3_EEPNS_6StatusE, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder15MaybePostVerifyERKNS_5SliceE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@.str.24 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"Filter's hash entries checksum mismatched\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Corrupted filter content\00", align 1
@_ZTVN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilderE = internal unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilderD2Ev, ptr @_ZN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilderD0Ev, ptr @_ZN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilder6AddKeyERKNS_5SliceE, ptr @_ZN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilder12AddKeyAndAltERKNS_5SliceES4_, ptr @_ZN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilder20EstimateEntriesAddedEv, ptr @_ZN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EE, ptr @_ZN7rocksdb17FilterBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS3_EEPNS_6StatusE, ptr @_ZN7rocksdb17FilterBitsBuilder15MaybePostVerifyERKNS_5SliceE, ptr @_ZN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilder21ApproximateNumEntriesEm, ptr @_ZN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilder14CalculateSpaceEm, ptr @_ZN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilder15EstimatedFpRateEmm] }, align 8
@.str.29 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.30 = private unnamed_addr constant [229 x i8] c"[%s:1212] Using legacy SST/BBT Bloom filter with excessive key count (%.1fM @ %dbpk), causing estimated %.1fx higher filter FP rate. Consider using new Bloom with format_version>=5, smaller SST file size, or partitioned filters.\00", align 1
@_ZTVN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilderE = internal unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilderD2Ev, ptr @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilderD0Ev, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder6AddKeyERKNS_5SliceE, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder12AddKeyAndAltERKNS_5SliceES4_, ptr @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder20EstimateEntriesAddedEv, ptr @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EE, ptr @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder6FinishEPSt10unique_ptrIA_KcSt14default_deleteIS4_EEPNS_6StatusE, ptr @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder15MaybePostVerifyERKNS_5SliceE, ptr @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder21ApproximateNumEntriesEm, ptr @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder14CalculateSpaceEm, ptr @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder15EstimatedFpRateEmm, ptr @_ZN7rocksdb12_GLOBAL__N_128Standard128RibbonBitsBuilder20RoundDownUsableSpaceEm] }, align 8
@.str.31 = private unnamed_addr constant [47 x i8] c"[%s:690] Too many keys for Ribbon filter: %llu\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"[%s:738] Cache charging for Ribbon filter banding failed due to cache full\00", align 1
@.str.33 = private unnamed_addr constant [64 x i8] c"[%s:759] Too many re-seeds (256) for Ribbon filter, %llu / %llu\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"[%s:769] Verify hash entries checksum error: %s\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZTVN7rocksdb12_GLOBAL__N_117AlwaysFalseFilterE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb16FilterBitsReaderD2Ev, ptr @_ZN7rocksdb12_GLOBAL__N_117AlwaysFalseFilterD0Ev, ptr @_ZN7rocksdb12_GLOBAL__N_117AlwaysFalseFilter8MayMatchERKNS_5SliceE, ptr @_ZN7rocksdb16FilterBitsReader8MayMatchEiPPNS_5SliceEPb, ptr @_ZN7rocksdb12_GLOBAL__N_117AlwaysFalseFilter12HashMayMatchEm] }, align 8
@_ZTVN7rocksdb12_GLOBAL__N_116AlwaysTrueFilterE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb16FilterBitsReaderD2Ev, ptr @_ZN7rocksdb12_GLOBAL__N_116AlwaysTrueFilterD0Ev, ptr @_ZN7rocksdb12_GLOBAL__N_116AlwaysTrueFilter8MayMatchERKNS_5SliceE, ptr @_ZN7rocksdb16FilterBitsReader8MayMatchEiPPNS_5SliceEPb, ptr @_ZN7rocksdb12_GLOBAL__N_116AlwaysTrueFilter12HashMayMatchEm] }, align 8
@_ZTVN7rocksdb12_GLOBAL__N_121LegacyBloomBitsReaderE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb16FilterBitsReaderD2Ev, ptr @_ZN7rocksdb12_GLOBAL__N_121LegacyBloomBitsReaderD0Ev, ptr @_ZN7rocksdb12_GLOBAL__N_121LegacyBloomBitsReader8MayMatchERKNS_5SliceE, ptr @_ZN7rocksdb12_GLOBAL__N_121LegacyBloomBitsReader8MayMatchEiPPNS_5SliceEPb, ptr @_ZN7rocksdb12_GLOBAL__N_121LegacyBloomBitsReader12HashMayMatchEm] }, align 8
@_ZTVN7rocksdb12_GLOBAL__N_127Standard128RibbonBitsReaderE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb16FilterBitsReaderD2Ev, ptr @_ZN7rocksdb12_GLOBAL__N_127Standard128RibbonBitsReaderD0Ev, ptr @_ZN7rocksdb12_GLOBAL__N_127Standard128RibbonBitsReader8MayMatchERKNS_5SliceE, ptr @_ZN7rocksdb12_GLOBAL__N_127Standard128RibbonBitsReader8MayMatchEiPPNS_5SliceEPb, ptr @_ZN7rocksdb12_GLOBAL__N_127Standard128RibbonBitsReader12HashMayMatchEm] }, align 8
@_ZTVN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReaderE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb16FilterBitsReaderD2Ev, ptr @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReaderD0Ev, ptr @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReader8MayMatchERKNS_5SliceE, ptr @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReader8MayMatchEiPPNS_5SliceEPb, ptr @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReader12HashMayMatchEm] }, align 8
@.str.35 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb27CacheReservationManagerImplILNS0_14CacheEntryRoleE8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb27CacheReservationManagerImplILNS0_14CacheEntryRoleE8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb27CacheReservationManagerImplILNS0_14CacheEntryRoleE8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb27CacheReservationManagerImplILNS0_14CacheEntryRoleE8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb27CacheReservationManagerImplILNS0_14CacheEntryRoleE8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb4test23LegacyBloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test23LegacyBloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test23LegacyBloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test23LegacyBloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test23LegacyBloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb4test26FastLocalBloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test26FastLocalBloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test26FastLocalBloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test26FastLocalBloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test26FastLocalBloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb4test29Standard128RibbonFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test29Standard128RibbonFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test29Standard128RibbonFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test29Standard128RibbonFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb4test29Standard128RibbonFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb17BloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb17BloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb17BloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb17BloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb17BloomFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb18RibbonFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18RibbonFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18RibbonFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18RibbonFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18RibbonFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb27ReadOnlyBuiltinFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb27ReadOnlyBuiltinFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb27ReadOnlyBuiltinFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb27ReadOnlyBuiltinFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb27ReadOnlyBuiltinFilterPolicyESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN7rocksdb27ReadOnlyBuiltinFilterPolicyE = linkonce_odr unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb12FilterPolicyD2Ev, ptr @_ZN7rocksdb27ReadOnlyBuiltinFilterPolicyD0Ev, ptr @_ZNK7rocksdb12Customizable9GetOptionERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS9_, ptr @_ZNK7rocksdb12Customizable13AreEquivalentERKNS_13ConfigOptionsEPKNS_12ConfigurableEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Configurable19GetPrintableOptionsB5cxx11Ev, ptr @_ZN7rocksdb12Configurable14PrepareOptionsERKNS_13ConfigOptionsE, ptr @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE, ptr @_ZNK7rocksdb12Customizable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable18ParseStringOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable16ConfigureOptionsERKNS_13ConfigOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEPSJ_, ptr @_ZN7rocksdb12Configurable11ParseOptionERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_Pv, ptr @_ZNK7rocksdb12Configurable15OptionsAreEqualERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSG_PSC_, ptr @_ZNK7rocksdb12Customizable16SerializeOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb27ReadOnlyBuiltinFilterPolicy4NameEv, ptr @_ZNK7rocksdb12Customizable5GetIdB5cxx11Ev, ptr @_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable5InnerEv, ptr @_ZNK7rocksdb12Customizable8NickNameEv, ptr @_ZNK7rocksdb19BuiltinFilterPolicy17CompatibilityNameEv, ptr @_ZNK7rocksdb27ReadOnlyBuiltinFilterPolicy21GetBuilderWithContextERKNS_21FilterBuildingContextE, ptr @_ZNK7rocksdb19BuiltinFilterPolicy19GetFilterBitsReaderERKNS_5SliceE] }, comdat, align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [6 x i8] c":true\00", align 1
@_ZTVN7rocksdb13ObjectLibrary12PatternEntryE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN7rocksdb13ObjectLibrary12FactoryEntryIKNS_12FilterPolicyEEE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb13ObjectLibrary12FactoryEntryIKNS_12FilterPolicyEED2Ev, ptr @_ZN7rocksdb13ObjectLibrary12FactoryEntryIKNS_12FilterPolicyEED0Ev, ptr @_ZNK7rocksdb13ObjectLibrary12FactoryEntryIKNS_12FilterPolicyEE7MatchesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb13ObjectLibrary12FactoryEntryIKNS_12FilterPolicyEE4NameEv] }, comdat, align 8
@.str.38 = private unnamed_addr constant [13 x i8] c"FilterPolicy\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Cannot make a shared \00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c" from unguarded one \00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"Could not load \00", align 1
@_ZTVSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN7rocksdb21BloomLikeFilterPolicyD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7rocksdb21BloomLikeFilterPolicyD2Ev
@_ZN7rocksdb17BloomFilterPolicyC1Ed = unnamed_addr alias void (ptr, double), ptr @_ZN7rocksdb17BloomFilterPolicyC2Ed
@_ZN7rocksdb18RibbonFilterPolicyC1Edi = unnamed_addr alias void (ptr, double, i32), ptr @_ZN7rocksdb18RibbonFilterPolicyC2Edi
@_ZN7rocksdb21FilterBuildingContextC1ERKNS_22BlockBasedTableOptionsE = unnamed_addr alias void (ptr, ptr), ptr @_ZN7rocksdb21FilterBuildingContextC2ERKNS_22BlockBasedTableOptionsE
@_ZN7rocksdb12FilterPolicyD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7rocksdb12FilterPolicyD2Ev

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7rocksdb19BuiltinFilterPolicy10kClassNameEv() local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.b, 30
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.e = load i128, ptr %i.d, align 1
  %i.f = xor i128 %i.e, 144062516468514463651054477162156617586
  %i.g = getelementptr i8, ptr %i.d, i64 14
  %i.h = load i128, ptr %i.g, align 1
  %i.i = xor i128 %i.h, 152058774850929074480057918802141015137
  %i.j = or i128 %i.f, %i.i
  %i.k = icmp ne i128 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = tail call noundef zeroext i1 @_ZNK7rocksdb12Customizable12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4
  %.0 = phi i1 [ %i.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb12Customizable12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #37
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !tbaa !15
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr nonnull %i.g, i64 %i.h)
  %i.m = icmp eq i32 %bcmp.i, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10
  %i.r = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #37
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9: ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8, !tbaa !15
  %bcmp.i8 = tail call i32 @bcmp(ptr %i.v, ptr nonnull %i.q, i64 %i.r)
  %i.w = icmp eq i32 %bcmp.i8, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.e, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a
  %.1 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %bb.a ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK7rocksdb19BuiltinFilterPolicy17CompatibilityNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret ptr @.str.18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @_ZN7rocksdb21BloomLikeFilterPolicyC2Ed(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 49), (56, 64)) %0, double noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN7rocksdb21BloomLikeFilterPolicyE, i64 16), ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.c, align 8, !tbaa !21
  %i.d = fcmp olt double %1, 5.000000e-01
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp olt double %1, 1.000000e+00
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp olt double %1, 1.000000e+02
  br i1 %i.f, label %bb.d, label %2

2:                                                ; preds = %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %2, %bb.c
  %.0 = phi double [ 1.000000e+02, %2 ], [ 0.000000e+00, %bb.a ], [ %1, %bb.c ], [ 1.000000e+00, %bb.b ] ; 3 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %.0, double 1.000000e+03, double 5.000010e-01)
  %i.h = fptosi double %i.g to i32                ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.h, ptr %i.i, align 8, !tbaa !23
  %i.j = icmp slt i32 %i.h, 2081
  br i1 %i.j, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ult i32 %i.h, 3581
  br i1 %i.k, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i32 %i.h, 5101
  br i1 %i.l, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp samesign ult i32 %i.h, 6641
  br i1 %i.m, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i32 %i.h, 8301
  br i1 %i.n, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i32 %i.h, 10071
  br i1 %i.o, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = icmp samesign ult i32 %i.h, 11721
  br i1 %i.p, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = icmp samesign ult i32 %i.h, 14002
  br i1 %i.q, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = icmp samesign ult i32 %i.h, 16051
  br i1 %i.r, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = icmp samesign ult i32 %i.h, 18301
  br i1 %i.s, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = icmp samesign ult i32 %i.h, 22002
  br i1 %i.t, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = icmp samesign ult i32 %i.h, 25502
  br i1 %i.u, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = icmp samesign ugt i32 %i.h, 50000
  br i1 %i.v, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = trunc nuw i32 %i.h to i16
  %.lhs.trunc.i = add i16 %i.w, -1
  %i.x = udiv i16 %.lhs.trunc.i, 2000
  %.zext.i = zext nneg i16 %i.x to i32
  %i.y = add nsw i32 %.zext.i, -1
  br label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit

_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi i32 [ %i.y, %bb.q ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ], [ 11, %bb.n ], [ 12, %bb.o ], [ 24, %bb.p ] ; 2 uses
  %i.z = fcmp ugt double %.0, 0.000000e+00
  br i1 %i.z, label %bb.r, label %_ZN7rocksdb9BloomMath16CacheLocalFpRateEdii.exit

bb.r:                                             ; preds = %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit
  %i.aa = fdiv double 5.120000e+02, %.0           ; 3 uses
  %i.ab = tail call double @sqrt(double noundef %i.aa) #37 ; 2 uses
  %i.ac = sub nsw i32 0, %.0.i
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = uitofp nneg i32 %.0.i to double         ; 2 uses
  %i.af = fsub double %i.aa, %i.ab
  %i.ag = fadd double %i.aa, %i.ab
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.af, i64 1
  %i.aj = fdiv <2 x double> splat (double 5.120000e+02), %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x double> %i.al, %i.aj          ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = tail call double @exp(double noundef %i.an) #37
  %i.ap = fsub double 1.000000e+00, %i.ao
  %i.aq = tail call noundef double @pow(double noundef %i.ap, double noundef %i.ae) #37
  %i.ar = extractelement <2 x double> %i.am, i64 1
  %i.as = tail call double @exp(double noundef %i.ar) #37
  %i.at = fsub double 1.000000e+00, %i.as
  %i.au = tail call noundef double @pow(double noundef %i.at, double noundef %i.ae) #37
  %i.av = fadd double %i.aq, %i.au
  %i.aw = fmul double %i.av, 5.000000e-01
  br label %_ZN7rocksdb9BloomMath16CacheLocalFpRateEdii.exit

_ZN7rocksdb9BloomMath16CacheLocalFpRateEdii.exit: ; preds = %bb.r, %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit
  %.0.i8 = phi double [ %i.aw, %bb.r ], [ 1.000000e+00, %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit ]
  %i.ax = fdiv double 1.000000e+00, %.0.i8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.ax, ptr %i.ay, align 8, !tbaa !37
  %i.az = add nsw i32 %i.h, 500
  %i.ba = sdiv i32 %i.az, 1000
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !38
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN7rocksdb21BloomLikeFilterPolicyD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.trap() #38
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7rocksdb21BloomLikeFilterPolicy10kClassNameEv() local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7rocksdb21BloomLikeFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i [
    i64 32, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 30, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = load i256, ptr %i.c, align 1
  %i.e = icmp ne i256 %i.d, 51742919817372202779441201925464086905776695785138413979897255212718345121650
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = load i128, ptr %i.h, align 1
  %i.j = xor i128 %i.i, 144062516468514463651054477162156617586
  %i.k = getelementptr i8, ptr %i.h, i64 14
  %i.l = load i128, ptr %i.k, align 1
  %i.m = xor i128 %i.l, 152058774850929074480057918802141015137
  %i.n = or i128 %i.j, %i.m
  %i.o = icmp ne i128 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.r = tail call noundef zeroext i1 @_ZNK7rocksdb12Customizable12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.0 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7rocksdb27ReadOnlyBuiltinFilterPolicy10kClassNameEv() local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr @.str.18
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb21BloomLikeFilterPolicy5GetIdB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZNK7rocksdb21BloomLikeFilterPolicy19GetBitsPerKeySuffixB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #37, !noalias !39
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.d, i64 noundef %i.e)
          to label %.noexc unwind label %bb.d     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !42, !alias.scope !39
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9    ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
end_hunk_0
begin_hunk_1_@_ZNSt5dequeISt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EESaIS6_EE17_M_reallocate_mapEmb:bb.a
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !343

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !413
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !413
  br label %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !343

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !413
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !413
  br label %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseISt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EESaIS6_EE15_M_allocate_mapEm.exit, !prof !135

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #41
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZNSt11_Deque_baseISt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EESaIS6_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #40 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !418 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !419
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !343

bb.o:                                             ; preds = %_ZNSt11_Deque_baseISt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EESaIS6_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseISt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EESaIS6_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !413
  store ptr %i.be, ptr %i.av, align 8, !tbaa !413
  br label %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit24

_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !417
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !421
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #39
  store ptr %i.aq, ptr %0, align 8, !tbaa !417
  store i64 %i.am, ptr %i.k, align 8, !tbaa !421
  br label %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit

_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EES8_ET0_T_SA_S9_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !408
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !413  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !412
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !407
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !408
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !413 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !412
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !407
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder21AllocateMaybeRoundingEmmPSt10unique_ptrIA_cSt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef double %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %2, i64 noundef %1) ; 4 uses
  %i.h = icmp slt i64 %i.c, 0
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = sub nsw i64 0, %i.c
  %i.j = uitofp nneg i64 %i.i to double
  %i.k = fmul nnan double %i.j, f0x3DF0000000000000
  %i.l = fadd double %i.k, %i.g                   ; 4 uses
  %i.m = add i64 %1, -5                           ; 4 uses
  %i.n = mul i64 %i.m, 3
  %i.o = lshr i64 %i.n, 2
  %i.p = mul i64 %i.m, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = mul i64 %i.m, 15
  %i.s = lshr i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.o, 5
  %i.u = load ptr, ptr %0, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef %i.t) ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef double %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %2, i64 noundef %i.x) ; 2 uses
  %i.ac = fcmp ugt double %i.ab, %i.l
  br i1 %i.ac, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ad = mul i64 %i.m, 13
  %i.ae = lshr i64 %i.ad, 4
  %i.af = add nuw nsw i64 %i.ae, 5
  %i.ag = load ptr, ptr %0, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef %i.af) ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef double %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %2, i64 noundef %i.aj) ; 2 uses
  %i.ao = fcmp ugt double %i.an, %i.l
  br i1 %i.ao, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ap = add nuw nsw i64 %i.q, 5
  %i.aq = load ptr, ptr %0, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef %i.ap) ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef double %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %2, i64 noundef %i.at) ; 2 uses
  %i.ay = fcmp ugt double %i.ax, %i.l
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = add nuw nsw i64 %i.s, 5
  %i.ba = load ptr, ptr %0, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef %i.az) ; 2 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef double %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %2, i64 noundef %i.bd) ; 2 uses
  %i.bi = fcmp ugt double %i.bh, %i.l
  br i1 %i.bi, label %4, label %bb.g

4:                                                ; preds = %bb.f
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %4, %bb.b
  %.353 = phi double [ %i.g, %bb.b ], [ %i.ab, %bb.c ], [ %i.g, %4 ], [ %i.an, %bb.d ], [ %i.bh, %bb.f ], [ %i.ax, %bb.e ]
  %.3 = phi i64 [ %1, %bb.b ], [ %i.x, %bb.c ], [ %1, %4 ], [ %i.aj, %bb.d ], [ %i.bd, %bb.f ], [ %i.at, %bb.e ] ; 2 uses
  %i.bj = add i64 %.3, 5                          ; 3 uses
  %i.bk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #40 ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !304   ; 2 uses
  store ptr %i.bk, ptr %3, align 8, !tbaa !304
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.bl) #39
  %.pre = load ptr, ptr %3, align 8, !tbaa !304
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.bm = phi ptr [ %i.bk, %bb.g ], [ %.pre, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i ]
  %i.bn = tail call i64 @malloc_usable_size(ptr noundef %i.bm) #37 ; 4 uses
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = sub nuw i64 %i.bn, %i.bo
  %i.bq = icmp ule i64 %i.bp, %i.bj
  %i.br = icmp ugt i64 %i.bn, %i.bj
  %or.cond = and i1 %i.br, %i.bq
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %i.bs = add i64 %i.bn, -5
  %i.bt = load ptr, ptr %0, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i64 %i.bv(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef %i.bs) ; 2 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef double %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %2, i64 noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %.454 = phi double [ %.353, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit ], [ %i.ca, %bb.h ]
  %.4 = phi i64 [ %.3, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit ], [ %i.bw, %bb.h ] ; 2 uses
  %i.cb = load ptr, ptr %3, align 8, !tbaa !304
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cb, i8 0, i64 %.4, i1 false)
  %i.cc = fsub double %.454, %i.g
  %i.cd = fmul double %i.cc, f0x41F0000000000000
  %i.ce = fptosi double %i.cd to i64
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !345
  %i.cg = atomicrmw add ptr %i.cf, i64 %i.ce seq_cst, align 8 ; 0 uses
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit63

bb.j:                                             ; preds = %bb.a
  %i.ch = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %1) #40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 0, i64 %1, i1 false)
  %i.ci = load ptr, ptr %3, align 8, !tbaa !304   ; 2 uses
  store ptr %i.ch, ptr %3, align 8, !tbaa !304
  %.not.i.i61 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i61, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit63, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i62

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i62: ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.ci) #39
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit63

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit63: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i62, %bb.j, %bb.i
  %.5 = phi i64 [ %.4, %bb.i ], [ %1, %bb.j ], [ %1, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i62 ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder30MaybeVerifyHashEntriesChecksumEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !346, !range !101, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !273, !alias.scope !440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !440
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !355, !noalias !443 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !365, !noalias !443 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !360, !noalias !443 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !355, !noalias !446 ; 2 uses
  %i.m = icmp eq ptr %i.f, %i.l
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorImRmPmEppEv.exit, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.r, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !430
  %i.p = icmp eq i64 %.0.lcssa, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %bb.c, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit
  %.011 = phi i64 [ %i.r, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit ], [ 0, %bb.c ]
  %.sroa.05.010 = phi ptr [ %.sroa.05.1, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.10.09 = phi ptr [ %.sroa.10.1, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit ], [ %i.h, %bb.c ] ; 2 uses
  %.sroa.13.08 = phi ptr [ %.sroa.13.1, %_ZNSt15_Deque_iteratorImRmPmEppEv.exit ], [ %i.j, %bb.c ] ; 2 uses
  %i.q = load i64, ptr %.sroa.05.010, align 8, !tbaa !361
  %i.r = xor i64 %i.q, %.011                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 8 ; 2 uses
  %i.t = icmp eq ptr %i.s, %.sroa.10.09
  br i1 %i.t, label %bb.d, label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit

bb.d:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.13.08, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !352  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 512
  br label %_ZNSt15_Deque_iteratorImRmPmEppEv.exit

_ZNSt15_Deque_iteratorImRmPmEppEv.exit:           ; preds = %.lr.ph, %bb.d
  %.sroa.13.1 = phi ptr [ %i.u, %bb.d ], [ %.sroa.13.08, %.lr.ph ]
  %.sroa.10.1 = phi ptr [ %i.w, %bb.d ], [ %.sroa.10.09, %.lr.ph ]
  %.sroa.05.1 = phi ptr [ %i.v, %bb.d ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.x = icmp eq ptr %.sroa.05.1, %i.l
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !273, !alias.scope !449
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !449
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !356, !noalias !452
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !351 ; 2 uses
  %i.ad = icmp ult ptr %i.j, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %_ZNSt5dequeImSaImEE5clearEv.exit.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.06.i.pn.i.i.i.i = phi ptr [ %.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.f ]
  %.06.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i.i.i, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !352
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef 512) #39
  %i.af = icmp ult ptr %.06.i.i.i.i.i, %i.ac
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %_ZNSt5dequeImSaImEE5clearEv.exit.i.i, !llvm.loop !353

_ZNSt5dequeImSaImEE5clearEv.exit.i.i:             ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  store ptr %i.f, ptr %i.k, align 8, !tbaa !352
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.aa, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !352
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !352
  store ptr %i.j, ptr %i.ab, align 8, !tbaa !455
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 200
  store atomic i64 0, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aj = load <4 x ptr>, ptr %i.ai, align 8, !tbaa !214, !noalias !456
  store <4 x ptr> %i.aj, ptr %2, align 8, !tbaa !214, !alias.scope !456
  invoke void @_ZNSt5dequeISt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EESaIS6_EE15_M_erase_at_endESt15_Deque_iteratorIS6_RS6_PS6_E(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dead_on_return %2)
          to label %_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder12ResetEntriesEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt5dequeImSaImEE5clearEv.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #38
  unreachable

_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder12ResetEntriesEv.exit: ; preds = %_ZNSt5dequeImSaImEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i64 0, ptr %i.n, align 8, !tbaa !347
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr @.str.25, ptr %3, align 8, !tbaa !178
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 41, ptr %i.am, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr @.str.26, ptr %4, align 8, !tbaa !178
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !176
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilder12ResetEntriesEv.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
