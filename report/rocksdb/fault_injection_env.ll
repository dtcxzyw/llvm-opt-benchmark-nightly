Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/fault_injection_env?download=true
inline.NumInlined: 1503
inline.NumDeleted: 667
begin_hunk_0
$_ZN7rocksdb10EnvWrapper22SetAllowNonOwnerAccessEb = comdat any

$_ZN7rocksdb10EnvWrapper28IncBackgroundThreadsIfNeededEiNS_3Env8PriorityE = comdat any

$_ZN7rocksdb10EnvWrapper25LowerThreadPoolIOPriorityENS_3Env8PriorityE = comdat any

$_ZN7rocksdb10EnvWrapper26LowerThreadPoolCPUPriorityENS_3Env8PriorityENS_11CpuPriorityE = comdat any

$_ZN7rocksdb10EnvWrapper26LowerThreadPoolCPUPriorityENS_3Env8PriorityE = comdat any

$_ZN7rocksdb10EnvWrapper12TimeToStringB5cxx11Em = comdat any

$_ZN7rocksdb10EnvWrapper16GenerateUniqueIdB5cxx11Ev = comdat any

$_ZNK7rocksdb10EnvWrapper18OptimizeForLogReadERKNS_10EnvOptionsE = comdat any

$_ZNK7rocksdb10EnvWrapper23OptimizeForManifestReadERKNS_10EnvOptionsE = comdat any

$_ZNK7rocksdb10EnvWrapper19OptimizeForLogWriteERKNS_10EnvOptionsERKNS_9DBOptionsE = comdat any

$_ZNK7rocksdb10EnvWrapper24OptimizeForManifestWriteERKNS_10EnvOptionsE = comdat any

$_ZNK7rocksdb10EnvWrapper31OptimizeForCompactionTableWriteERKNS_10EnvOptionsERKNS_18ImmutableDBOptionsE = comdat any

$_ZNK7rocksdb10EnvWrapper30OptimizeForCompactionTableReadERKNS_10EnvOptionsERKNS_18ImmutableDBOptionsE = comdat any

$_ZNK7rocksdb10EnvWrapper23OptimizeForBlobFileReadERKNS_10EnvOptionsERKNS_18ImmutableDBOptionsE = comdat any

$_ZN7rocksdb10EnvWrapper13GetThreadListEPSt6vectorINS_12ThreadStatusESaIS2_EE = comdat any

$_ZNK7rocksdb10EnvWrapper22GetThreadStatusUpdaterEv = comdat any

$_ZNK7rocksdb10EnvWrapper11GetThreadIDEv = comdat any

$_ZN7rocksdb21FaultInjectionTestEnv12GetFreeSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm = comdat any

$_ZN7rocksdb10EnvWrapper11IsDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb = comdat any

$_ZNK7rocksdb10EnvWrapper18SanitizeEnvOptionsEPNS_10EnvOptionsE = comdat any

$_ZN7rocksdb20TestRandomAccessFileD2Ev = comdat any

$_ZN7rocksdb20TestRandomAccessFileD0Ev = comdat any

$_ZNK7rocksdb16RandomAccessFile11GetUniqueIdEPcm = comdat any

$_ZN7rocksdb16RandomAccessFile4HintENS0_13AccessPatternE = comdat any

$_ZNK7rocksdb16RandomAccessFile13use_direct_ioEv = comdat any

$_ZNK7rocksdb16RandomAccessFile26GetRequiredBufferAlignmentEv = comdat any

$_ZN7rocksdb16RandomAccessFile15InvalidateCacheEmm = comdat any

$_ZN7rocksdb16TestWritableFile6AppendERKNS_5SliceERKNS_20DataVerificationInfoE = comdat any

$_ZN7rocksdb16TestWritableFile16PositionedAppendERKNS_5SliceEm = comdat any

$_ZN7rocksdb16TestWritableFile16PositionedAppendERKNS_5SliceEmRKNS_20DataVerificationInfoE = comdat any

$_ZN7rocksdb16TestWritableFile8TruncateEm = comdat any

$_ZN7rocksdb12WritableFile5FsyncEv = comdat any

$_ZNK7rocksdb16TestWritableFile16IsSyncThreadSafeEv = comdat any

$_ZNK7rocksdb16TestWritableFile13use_direct_ioEv = comdat any

$_ZNK7rocksdb12WritableFile26GetRequiredBufferAlignmentEv = comdat any

$_ZN7rocksdb12WritableFile13SetIOPriorityENS_3Env10IOPriorityE = comdat any

$_ZN7rocksdb12WritableFile13GetIOPriorityEv = comdat any

$_ZN7rocksdb12WritableFile20SetWriteLifeTimeHintENS_3Env17WriteLifeTimeHintE = comdat any

$_ZN7rocksdb12WritableFile20GetWriteLifeTimeHintEv = comdat any

$_ZN7rocksdb16TestWritableFile11GetFileSizeEv = comdat any

$_ZN7rocksdb12WritableFile25SetPreallocationBlockSizeEm = comdat any

$_ZN7rocksdb12WritableFile22GetPreallocationStatusEPmS1_ = comdat any

$_ZNK7rocksdb12WritableFile11GetUniqueIdEPcm = comdat any

$_ZN7rocksdb12WritableFile15InvalidateCacheEmm = comdat any

$_ZN7rocksdb12WritableFile9RangeSyncEmm = comdat any

$_ZN7rocksdb12WritableFile12PrepareWriteEmm = comdat any

$_ZN7rocksdb12WritableFile8AllocateEmm = comdat any

$_ZNK7rocksdb16TestRandomRWFile13use_direct_ioEv = comdat any

$_ZNK7rocksdb16TestRandomRWFile26GetRequiredBufferAlignmentEv = comdat any

$_ZN7rocksdb12RandomRWFile5FsyncEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSF_15_Hash_node_baseEPNSF_10_Hash_nodeISD_Lb1EEE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb9FileStateEEC2ERKS5_RKS7_Qcl16_S_constructibleIRKT_RKT0_EE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb9FileStateEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_ = comdat any

$_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St3setIS6_St4lessIS6_ESaIS6_EEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSF_10_Hash_nodeISD_Lb1EEEm = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS8_St4lessIS8_ESaIS8_EEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESN_IJEEEEEPSG_DpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb9FileStateEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb9FileStateEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb9FileStateEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb9FileStateEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb9FileStateEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb9FileStateEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11equal_rangeERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb9FileStateEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_ESI_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11equal_rangeERKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb9FileStateEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE10_M_insert_IRSD_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISD_EPSt18_Rb_tree_node_baseSO_OT_RT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EEEC2ERKSC_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZSt19piecewise_construct = comdat any

@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Cannot open file %s for truncation: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/truncate.tmp\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Cannot rename file %s to %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot truncate file %s: %s\0A\00", align 1
@_ZTVN7rocksdb20TestRandomAccessFileE = unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb20TestRandomAccessFileD2Ev, ptr @_ZN7rocksdb20TestRandomAccessFileD0Ev, ptr @_ZNK7rocksdb20TestRandomAccessFile4ReadEmmPNS_5SliceEPc, ptr @_ZN7rocksdb20TestRandomAccessFile8PrefetchEmm, ptr @_ZN7rocksdb20TestRandomAccessFile9MultiReadEPNS_11ReadRequestEm, ptr @_ZNK7rocksdb16RandomAccessFile11GetUniqueIdEPcm, ptr @_ZN7rocksdb16RandomAccessFile4HintENS0_13AccessPatternE, ptr @_ZNK7rocksdb16RandomAccessFile13use_direct_ioEv, ptr @_ZNK7rocksdb16RandomAccessFile26GetRequiredBufferAlignmentEv, ptr @_ZN7rocksdb16RandomAccessFile15InvalidateCacheEmm, ptr @_ZN7rocksdb20TestRandomAccessFile11GetFileSizeEPm] }, align 8
@_ZTVN7rocksdb16TestWritableFileE = unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb16TestWritableFileD1Ev, ptr @_ZN7rocksdb16TestWritableFileD0Ev, ptr @_ZN7rocksdb16TestWritableFile6AppendERKNS_5SliceE, ptr @_ZN7rocksdb16TestWritableFile6AppendERKNS_5SliceERKNS_20DataVerificationInfoE, ptr @_ZN7rocksdb16TestWritableFile16PositionedAppendERKNS_5SliceEm, ptr @_ZN7rocksdb16TestWritableFile16PositionedAppendERKNS_5SliceEmRKNS_20DataVerificationInfoE, ptr @_ZN7rocksdb16TestWritableFile8TruncateEm, ptr @_ZN7rocksdb16TestWritableFile5CloseEv, ptr @_ZN7rocksdb16TestWritableFile5FlushEv, ptr @_ZN7rocksdb16TestWritableFile4SyncEv, ptr @_ZN7rocksdb12WritableFile5FsyncEv, ptr @_ZNK7rocksdb16TestWritableFile16IsSyncThreadSafeEv, ptr @_ZNK7rocksdb16TestWritableFile13use_direct_ioEv, ptr @_ZNK7rocksdb12WritableFile26GetRequiredBufferAlignmentEv, ptr @_ZN7rocksdb12WritableFile13SetIOPriorityENS_3Env10IOPriorityE, ptr @_ZN7rocksdb12WritableFile13GetIOPriorityEv, ptr @_ZN7rocksdb12WritableFile20SetWriteLifeTimeHintENS_3Env17WriteLifeTimeHintE, ptr @_ZN7rocksdb12WritableFile20GetWriteLifeTimeHintEv, ptr @_ZN7rocksdb16TestWritableFile11GetFileSizeEv, ptr @_ZN7rocksdb12WritableFile25SetPreallocationBlockSizeEm, ptr @_ZN7rocksdb12WritableFile22GetPreallocationStatusEPmS1_, ptr @_ZNK7rocksdb12WritableFile11GetUniqueIdEPcm, ptr @_ZN7rocksdb12WritableFile15InvalidateCacheEmm, ptr @_ZN7rocksdb12WritableFile9RangeSyncEmm, ptr @_ZN7rocksdb12WritableFile12PrepareWriteEmm, ptr @_ZN7rocksdb12WritableFile8AllocateEmm] }, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"FaultInjectionTestEnv: not active\00", align 1
@_ZTVN7rocksdb16TestRandomRWFileE = unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb16TestRandomRWFileD1Ev, ptr @_ZN7rocksdb16TestRandomRWFileD0Ev, ptr @_ZNK7rocksdb16TestRandomRWFile13use_direct_ioEv, ptr @_ZNK7rocksdb16TestRandomRWFile26GetRequiredBufferAlignmentEv, ptr @_ZN7rocksdb16TestRandomRWFile5WriteEmRKNS_5SliceE, ptr @_ZNK7rocksdb16TestRandomRWFile4ReadEmmPNS_5SliceEPc, ptr @_ZN7rocksdb16TestRandomRWFile5FlushEv, ptr @_ZN7rocksdb16TestRandomRWFile4SyncEv, ptr @_ZN7rocksdb12RandomRWFile5FsyncEv, ptr @_ZN7rocksdb16TestRandomRWFile5CloseEv] }, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"File already exists.\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Not active\00", align 1
@_ZTVN7rocksdb13TestDirectoryE = unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb13TestDirectoryD2Ev, ptr @_ZN7rocksdb13TestDirectoryD0Ev, ptr @_ZN7rocksdb13TestDirectory5FsyncEv, ptr @_ZN7rocksdb13TestDirectory5CloseEv, ptr @_ZNK7rocksdb9Directory11GetUniqueIdEPcm] }, align 8
@_ZTVN7rocksdb21FaultInjectionTestEnvE = unnamed_addr constant { [88 x ptr] } { [88 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb21FaultInjectionTestEnvD2Ev, ptr @_ZN7rocksdb21FaultInjectionTestEnvD0Ev, ptr @_ZNK7rocksdb12Customizable9GetOptionERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS9_, ptr @_ZNK7rocksdb12Customizable13AreEquivalentERKNS_13ConfigOptionsEPKNS_12ConfigurableEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Configurable19GetPrintableOptionsB5cxx11Ev, ptr @_ZN7rocksdb10EnvWrapper14PrepareOptionsERKNS_13ConfigOptionsE, ptr @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE, ptr @_ZNK7rocksdb12Customizable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable18ParseStringOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable16ConfigureOptionsERKNS_13ConfigOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEPSJ_, ptr @_ZN7rocksdb12Configurable11ParseOptionERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_Pv, ptr @_ZNK7rocksdb12Configurable15OptionsAreEqualERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSG_PSC_, ptr @_ZNK7rocksdb10EnvWrapper16SerializeOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb21FaultInjectionTestEnv4NameEv, ptr @_ZNK7rocksdb12Customizable5GetIdB5cxx11Ev, ptr @_ZNK7rocksdb12Customizable12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Customizable5InnerEv, ptr @_ZNK7rocksdb12Customizable8NickNameEv, ptr @_ZN7rocksdb10EnvWrapper15RegisterDbPathsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE, ptr @_ZN7rocksdb10EnvWrapper17UnregisterDbPathsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE, ptr @_ZN7rocksdb10EnvWrapper17NewSequentialFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrINS_14SequentialFileESt14default_deleteISA_EERKNS_10EnvOptionsE, ptr @_ZN7rocksdb21FaultInjectionTestEnv19NewRandomAccessFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrINS_16RandomAccessFileESt14default_deleteISA_EERKNS_10EnvOptionsE, ptr @_ZN7rocksdb21FaultInjectionTestEnv15NewWritableFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrINS_12WritableFileESt14default_deleteISA_EERKNS_10EnvOptionsE, ptr @_ZN7rocksdb21FaultInjectionTestEnv18ReopenWritableFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrINS_12WritableFileESt14default_deleteISA_EERKNS_10EnvOptionsE, ptr @_ZN7rocksdb10EnvWrapper17ReuseWritableFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PSt10unique_ptrINS_12WritableFileESt14default_deleteISA_EERKNS_10EnvOptionsE, ptr @_ZN7rocksdb21FaultInjectionTestEnv15NewRandomRWFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrINS_12RandomRWFileESt14default_deleteISA_EERKNS_10EnvOptionsE, ptr @_ZN7rocksdb10EnvWrapper25NewMemoryMappedFileBufferERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrINS_22MemoryMappedFileBufferESt14default_deleteISA_EE, ptr @_ZN7rocksdb21FaultInjectionTestEnv12NewDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrINS_9DirectoryESt14default_deleteISA_EE, ptr @_ZN7rocksdb10EnvWrapper10FileExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb10EnvWrapper11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS6_SaIS6_EE, ptr @_ZN7rocksdb10EnvWrapper25GetChildrenFileAttributesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS_3Env14FileAttributesESaISB_EE, ptr @_ZN7rocksdb21FaultInjectionTestEnv10DeleteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb10EnvWrapper8TruncateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm, ptr @_ZN7rocksdb10EnvWrapper9CreateDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb10EnvWrapper18CreateDirIfMissingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb10EnvWrapper9DeleteDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb10EnvWrapper11GetFileSizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm, ptr @_ZN7rocksdb10EnvWrapper23GetFileModificationTimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm, ptr @_ZN7rocksdb21FaultInjectionTestEnv10RenameFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, ptr @_ZN7rocksdb21FaultInjectionTestEnv8LinkFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_, ptr @_ZN7rocksdb21FaultInjectionTestEnv8SyncFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_10EnvOptionsEb, ptr @_ZN7rocksdb10EnvWrapper12NumFileLinksERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm, ptr @_ZN7rocksdb10EnvWrapper12AreFilesSameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_Pb, ptr @_ZN7rocksdb10EnvWrapper8LockFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPNS_8FileLockE, ptr @_ZN7rocksdb10EnvWrapper10UnlockFileEPNS_8FileLockE, ptr @_ZN7rocksdb10EnvWrapper11LoadLibraryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PSt10shared_ptrINS_14DynamicLibraryEE, ptr @_ZN7rocksdb10EnvWrapper8ScheduleEPFvPvES1_NS_3Env8PriorityES1_S3_, ptr @_ZN7rocksdb10EnvWrapper10UnScheduleEPvNS_3Env8PriorityE, ptr @_ZN7rocksdb10EnvWrapper11StartThreadEPFvPvES1_, ptr @_ZN7rocksdb10EnvWrapper11WaitForJoinEv, ptr @_ZN7rocksdb10EnvWrapper14ReserveThreadsEiNS_3Env8PriorityE, ptr @_ZN7rocksdb10EnvWrapper14ReleaseThreadsEiNS_3Env8PriorityE, ptr @_ZNK7rocksdb10EnvWrapper21GetThreadPoolQueueLenENS_3Env8PriorityE, ptr @_ZN7rocksdb10EnvWrapper16GetTestDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb10EnvWrapper9NewLoggerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10shared_ptrINS_6LoggerEE, ptr @_ZN7rocksdb10EnvWrapper9NowMicrosEv, ptr @_ZN7rocksdb10EnvWrapper8NowNanosEv, ptr @_ZN7rocksdb10EnvWrapper11NowCPUNanosEv, ptr @_ZN7rocksdb10EnvWrapper20SleepForMicrosecondsEi, ptr @_ZN7rocksdb10EnvWrapper11GetHostNameEPcm, ptr @_ZN7rocksdb3Env17GetHostNameStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb10EnvWrapper14GetCurrentTimeEPl, ptr @_ZN7rocksdb10EnvWrapper15GetAbsolutePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_, ptr @_ZN7rocksdb10EnvWrapper20SetBackgroundThreadsEiNS_3Env8PriorityE, ptr @_ZN7rocksdb10EnvWrapper20GetBackgroundThreadsENS_3Env8PriorityE, ptr @_ZN7rocksdb10EnvWrapper22SetAllowNonOwnerAccessEb, ptr @_ZN7rocksdb10EnvWrapper28IncBackgroundThreadsIfNeededEiNS_3Env8PriorityE, ptr @_ZN7rocksdb10EnvWrapper25LowerThreadPoolIOPriorityENS_3Env8PriorityE, ptr @_ZN7rocksdb10EnvWrapper26LowerThreadPoolCPUPriorityENS_3Env8PriorityENS_11CpuPriorityE, ptr @_ZN7rocksdb10EnvWrapper26LowerThreadPoolCPUPriorityENS_3Env8PriorityE, ptr @_ZN7rocksdb10EnvWrapper12TimeToStringB5cxx11Em, ptr @_ZN7rocksdb10EnvWrapper16GenerateUniqueIdB5cxx11Ev, ptr @_ZNK7rocksdb10EnvWrapper18OptimizeForLogReadERKNS_10EnvOptionsE, ptr @_ZNK7rocksdb10EnvWrapper23OptimizeForManifestReadERKNS_10EnvOptionsE, ptr @_ZNK7rocksdb10EnvWrapper19OptimizeForLogWriteERKNS_10EnvOptionsERKNS_9DBOptionsE, ptr @_ZNK7rocksdb10EnvWrapper24OptimizeForManifestWriteERKNS_10EnvOptionsE, ptr @_ZNK7rocksdb10EnvWrapper31OptimizeForCompactionTableWriteERKNS_10EnvOptionsERKNS_18ImmutableDBOptionsE, ptr @_ZNK7rocksdb10EnvWrapper30OptimizeForCompactionTableReadERKNS_10EnvOptionsERKNS_18ImmutableDBOptionsE, ptr @_ZNK7rocksdb10EnvWrapper23OptimizeForBlobFileReadERKNS_10EnvOptionsERKNS_18ImmutableDBOptionsE, ptr @_ZN7rocksdb10EnvWrapper13GetThreadListEPSt6vectorINS_12ThreadStatusESaIS2_EE, ptr @_ZNK7rocksdb10EnvWrapper22GetThreadStatusUpdaterEv, ptr @_ZNK7rocksdb10EnvWrapper11GetThreadIDEv, ptr @_ZN7rocksdb21FaultInjectionTestEnv12GetFreeSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm, ptr @_ZN7rocksdb10EnvWrapper11IsDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb, ptr @_ZNK7rocksdb10EnvWrapper18SanitizeEnvOptionsEPNS_10EnvOptionsE] }, align 8
@.str.10 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"FaultInjectionTestEnv\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"RandomAccessFile::InvalidateCache not supported.\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"WritableFile::InvalidateCache not supported.\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1

@_ZN7rocksdb20TestRandomAccessFileC1EOSt10unique_ptrINS_16RandomAccessFileESt14default_deleteIS2_EEPNS_21FaultInjectionTestEnvE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN7rocksdb20TestRandomAccessFileC2EOSt10unique_ptrINS_16RandomAccessFileESt14default_deleteIS2_EEPNS_21FaultInjectionTestEnvE
@_ZN7rocksdb16TestWritableFileC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt10unique_ptrINS_12WritableFileESt14default_deleteISA_EEPNS_21FaultInjectionTestEnvE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN7rocksdb16TestWritableFileC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt10unique_ptrINS_12WritableFileESt14default_deleteISA_EEPNS_21FaultInjectionTestEnvE
@_ZN7rocksdb16TestWritableFileD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7rocksdb16TestWritableFileD2Ev
@_ZN7rocksdb16TestRandomRWFileC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt10unique_ptrINS_12RandomRWFileESt14default_deleteISA_EEPNS_21FaultInjectionTestEnvE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN7rocksdb16TestRandomRWFileC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt10unique_ptrINS_12RandomRWFileESt14default_deleteISA_EEPNS_21FaultInjectionTestEnvE
@_ZN7rocksdb16TestRandomRWFileD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7rocksdb16TestRandomRWFileD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c, %bb.b
  %.1.i.i.in = phi i64 [ %i.b, %bb.b ], [ %.1.i.i, %bb.c ] ; 3 uses
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  switch i8 %i.e, label %bb.c [
    i8 92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
    i8 47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  ]

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %._crit_edge.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !17

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !9
  store i8 0, ptr %i.f, align 8, !tbaa !16
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !19, !alias.scope !20
  %i.i = icmp ugt i64 %.1.i.i, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.j = icmp slt i64 %.1.i.i, 0
  br i1 %i.j, label %.noexc10.i.i, label %bb.e

.noexc10.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i64 %.1.i.i.in, 0
  br i1 %i.k, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !23

.noexc11.i.i:                                     ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.1.i.i.in) #22 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !15, !alias.scope !20
  store i64 %.1.i.i, ptr %i.h, align 8, !tbaa !16, !alias.scope !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit ] ; 3 uses
  switch i64 %.1.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.c, align 1, !tbaa !16
  store i8 %i.n, ptr %i.m, align 1, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.c, i64 %.1.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.i.i, ptr %i.o, align 8, !tbaa !9, !alias.scope !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.1.i.i
  store i8 0, ptr %i.p, align 1, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb8TruncateEPNS_3EnvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.2", align 8 ; 8 uses
  %5 = alloca %"struct.rocksdb::EnvOptions", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::unique_ptr.24", align 8 ; 8 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.rocksdb::Status", align 8  ; 2 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN7rocksdb10EnvOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 8, !tbaa !29
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.g = load ptr, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %6, align 8, !tbaa !15
  %i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.2, ptr noundef %i.g, ptr noundef %i.h) #24 ; 0 uses
  %i.j = load ptr, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.m = load i64, ptr %i.k, align 8, !tbaa !16
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bc

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit101

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bd

bb.h:                                             ; preds = %bb.c
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %3) #22
          to label %bb.i unwind label %bb.am      ; 3 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr @.str.1, ptr %7, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.s = load ptr, ptr %4, align 8, !tbaa !46     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %i.q)
          to label %bb.j unwind label %bb.an

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %0, %8
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load <4 x i8>, ptr %8, align 8, !tbaa !16
  store <4 x i8> %i.w, ptr %0, align 8, !tbaa !16
  store <4 x i8> zeroinitializer, ptr %8, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !tbaa !47, !range !48, !noundef !49
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.y, ptr %i.z, align 4, !tbaa !50
  store i8 0, ptr %i.x, align 4, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !51
  store i8 0, ptr %i.aa, align 1, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !52
  store ptr null, ptr %i.ad, align 8, !tbaa !52
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !52 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !52
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #25
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.j, %bb.k, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.l, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #25
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.aj = load i8, ptr %0, align 8, !tbaa !29
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.al, ptr %11, align 8, !tbaa !19
  %i.am = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !9  ; 8 uses
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %bb.n, label %._crit_edge.i.i

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp slt i64 %i.ao, 0
  br i1 %i.aq, label %.noexc.i, label %bb.o

.noexc.i:                                         ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %i.ao, 1                    ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !23

.noexc6.i:                                        ; preds = %bb.o
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc33 unwind label %bb.ao

.noexc33:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.o
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #22
          to label %.noexc34 unwind label %bb.ao  ; 2 uses

.noexc34:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.at, ptr %11, align 8, !tbaa !15
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc34, %bb.m
  %i.au = phi ptr [ %i.at, %.noexc34 ], [ %i.al, %bb.m ] ; 3 uses
  switch i64 %i.ao, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.av = load i8, ptr %i.am, align 1, !tbaa !16
  store i8 %i.av, ptr %i.au, align 1, !tbaa !16
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.aw, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  store i8 0, ptr %i.ax, align 1, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !9, !noalias !53 ; 2 uses
  %.not.i35 = icmp eq i64 %i.ay, 0
  br i1 %.not.i35, label %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %11, align 8, !tbaa !15, !noalias !53 ; 3 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.t, %bb.s
  %.1.i.i.in.i = phi i64 [ %i.ay, %bb.s ], [ %.1.i.i.i, %bb.t ] ; 3 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.1.i.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16, !noalias !53
  switch i8 %i.bb, label %bb.t [
    i8 92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
    i8 47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
  ]

bb.t:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not17.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not17.i.i.i, label %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !17

_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.t, %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bc, ptr %10, align 8, !tbaa !19, !alias.scope !53
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !9, !alias.scope !53
  store i8 0, ptr %i.bc, align 8, !tbaa !16, !alias.scope !53
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.bf, ptr %10, align 8, !tbaa !19, !alias.scope !56
  %i.bg = icmp ugt i64 %.1.i.i.i, 15
  br i1 %i.bg, label %bb.u, label %._crit_edge.i.i.i.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
  %i.bh = icmp slt i64 %.1.i.i.i, 0
  br i1 %i.bh, label %.noexc10.i.i.i, label %bb.v

.noexc10.i.i.i:                                   ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
          to label %.noexc36 unwind label %bb.ap

.noexc36:                                         ; preds = %.noexc10.i.i.i
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bi = icmp slt i64 %.1.i.i.in.i, 0
  br i1 %i.bi, label %.noexc11.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !23

.noexc11.i.i.i:                                   ; preds = %bb.v
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc37 unwind label %bb.ap

.noexc37:                                         ; preds = %.noexc11.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.v
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.1.i.i.in.i) #22
          to label %.noexc38 unwind label %bb.ap  ; 2 uses

.noexc38:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.bj, ptr %10, align 8, !tbaa !15, !alias.scope !56
  store i64 %.1.i.i.i, ptr %i.bf, align 8, !tbaa !16, !alias.scope !56
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
  %i.bk = phi ptr [ %i.bj, %.noexc38 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i ] ; 3 uses
  switch i64 %.1.i.i.i, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = load i8, ptr %i.az, align 1, !tbaa !16
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !16
  br label %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.x:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull align 1 %i.az, i64 %.1.i.i.i, i1 false)
  br label %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.w, %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %.1.i.i.i, ptr %i.bm, align 8, !tbaa !9, !alias.scope !56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.1.i.i.i
  store i8 0, ptr %i.bn, align 1, !tbaa !16
  %.pre = load i64, ptr %i.bm, align 8, !tbaa !9, !noalias !59 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bp = icmp sgt i64 %.pre, 9223372036854775794
  br i1 %i.bp, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.y:                                             ; preds = %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #21
          to label %.noexc40 unwind label %bb.aq

.noexc40:                                         ; preds = %bb.y
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bq = phi ptr [ %i.be, %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %i.bo, %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 4 uses
  %i.br = phi i64 [ 0, %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %.pre, %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 4 uses
  %i.bs = add nsw i64 %i.br, 13                   ; 3 uses
  %i.bt = load ptr, ptr %10, align 8, !tbaa !15, !noalias !59 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bw = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !16, !noalias !59
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.by = phi i64 [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bs, %i.by
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.bz, ptr noundef nonnull align 1 dereferenceable(13) @.str.3, i64 13, i1 false), !noalias !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.br, i64 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.aa, %bb.z
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !9, !noalias !59
  %i.ca = load ptr, ptr %10, align 8, !tbaa !15, !noalias !59
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs
  store i8 0, ptr %i.cb, align 1, !tbaa !16, !noalias !59
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.cc, ptr %9, align 8, !tbaa !19, !alias.scope !59
  %i.cd = load ptr, ptr %10, align 8, !tbaa !15, !noalias !59 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bu
  br i1 %i.ce, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cf = load i64, ptr %i.bq, align 8, !tbaa !9, !noalias !59 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.ch, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.cd, ptr %9, align 8, !tbaa !15, !alias.scope !59
  %i.ci = load i64, ptr %i.bu, align 8, !tbaa !16, !noalias !59
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !16, !alias.scope !59
  %.pre.i = load i64, ptr %i.bq, align 8, !tbaa !9, !noalias !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.ab
  %i.cj = phi i64 [ %i.cf, %bb.ab ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !9, !alias.scope !59
  store ptr %i.bu, ptr %10, align 8, !tbaa !15, !noalias !59
  store i64 0, ptr %i.bq, align 8, !tbaa !9, !noalias !59
  store i8 0, ptr %i.bu, align 8, !tbaa !16, !noalias !59
  %i.cl = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.al
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cn = load i64, ptr %i.al, align 8, !tbaa !16
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr null, ptr %12, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.cp = load ptr, ptr %1, align 8, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 184
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %12, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.ac unwind label %bb.ar

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.not.i48 = icmp eq ptr %0, %13
  br i1 %.not.i48, label %_ZN7rocksdb6StatusaSEOS0_.exit51, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = load <4 x i8>, ptr %13, align 8, !tbaa !16
  store <4 x i8> %i.cs, ptr %0, align 8, !tbaa !16
  store <4 x i8> zeroinitializer, ptr %13, align 8, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !47, !range !48, !noundef !49
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.cu, ptr %i.cv, align 4, !tbaa !50
  store i8 0, ptr %i.ct, align 4, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 5 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !51
  store i8 0, ptr %i.cw, align 1, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !52
  store ptr null, ptr %i.cz, align 8, !tbaa !52
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !52 ; 2 uses
  store ptr %i.db, ptr %i.da, align 8, !tbaa !52
  %.not.i.i.i.i.i49 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i49, label %_ZN7rocksdb6StatusaSEOS0_.exit51, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i50

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i50: ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #25
  br label %_ZN7rocksdb6StatusaSEOS0_.exit51

_ZN7rocksdb6StatusaSEOS0_.exit51:                 ; preds = %bb.ac, %bb.ad, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i50
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !52 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.de, null
  br i1 %.not.i.i52, label %bb.ae, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i53

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i53: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit51
  call void @_ZdaPv(ptr noundef nonnull %i.de) #25
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i53, %_ZN7rocksdb6StatusaSEOS0_.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.df = load i8, ptr %0, align 8, !tbaa !29
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.af, label %_ZN7rocksdb6StatusD2Ev.exit80

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.dh = load ptr, ptr %12, align 8, !tbaa !65   ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(33) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ag unwind label %bb.at

bb.ag:                                            ; preds = %bb.af
  %.not.i55 = icmp eq ptr %0, %14
  br i1 %.not.i55, label %_ZN7rocksdb6StatusaSEOS0_.exit58, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = load <4 x i8>, ptr %14, align 8, !tbaa !16
  store <4 x i8> %i.dl, ptr %0, align 8, !tbaa !16
  store <4 x i8> zeroinitializer, ptr %14, align 8, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !47, !range !48, !noundef !49
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.dn, ptr %i.do, align 4, !tbaa !50
  store i8 0, ptr %i.dm, align 4, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 5 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !51
  store i8 0, ptr %i.dp, align 1, !tbaa !51
  %i.ds = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !52
  store ptr null, ptr %i.ds, align 8, !tbaa !52
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !52 ; 2 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !52
  %.not.i.i.i.i.i56 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i56, label %_ZN7rocksdb6StatusaSEOS0_.exit58, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i57

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i57: ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.dv) #25
  br label %_ZN7rocksdb6StatusaSEOS0_.exit58

_ZN7rocksdb6StatusaSEOS0_.exit58:                 ; preds = %bb.ag, %bb.ah, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i57
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !52 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i59, label %bb.ai, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i60

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i60: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit58
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i60, %_ZN7rocksdb6StatusaSEOS0_.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.dy = load i8, ptr %0, align 8, !tbaa !29
end_hunk_0
begin_hunk_1_@_ZN7rocksdb8TruncateEPNS_3EnvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
  %i.fl = load ptr, ptr %16, align 8, !tbaa !15
  %i.fm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fi, ptr noundef nonnull @.str.4, ptr noundef %i.fj, ptr noundef %i.fk, ptr noundef %i.fl) #24 ; 0 uses
  %i.fn = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.aw
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !16
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.fs = load ptr, ptr %1, align 8, !tbaa !27
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 256
  %i.fu = load ptr, ptr %i.ft, align 8
  invoke void %i.fu(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ax unwind label %bb.as

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.fv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !52 ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i78, label %_ZN7rocksdb6StatusD2Ev.exit80, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i79

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i79: ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.fw) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit80

bb.ay:                                            ; preds = %bb.av
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.az

_ZN7rocksdb6StatusD2Ev.exit80:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i79, %bb.ax, %_ZN7rocksdb6StatusD2Ev.exit68, %bb.ae
  %i.fy = load ptr, ptr %12, align 8, !tbaa !65   ; 3 uses
  %.not.i81 = icmp eq ptr %i.fy, null
  br i1 %.not.i81, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit80
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !27
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(33) %i.fy) #23, !inline_history !66
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit80, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.gc = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.cc
  br i1 %i.gd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit
  %i.ge = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i83

bb.az:                                            ; preds = %bb.ay, %bb.au, %bb.at, %bb.as, %bb.ar
  %.pn25 = phi { ptr, i32 } [ %i.fh, %bb.au ], [ %i.ff, %bb.as ], [ %i.fx, %bb.ay ], [ %i.fg, %bb.at ], [ %i.fe, %bb.ar ] ; 2 uses
  %i.gg = load ptr, ptr %12, align 8, !tbaa !65   ; 3 uses
  %.not.i85 = icmp eq ptr %i.gg, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i86

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i86: ; preds = %bb.az
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !27
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(33) %i.gg) #23, !inline_history !66
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit87: ; preds = %bb.az, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.gk = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.cc
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit87
  %i.gm = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn25.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn25, %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i83: ; preds = %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.pr = load i8, ptr %0, align 8, !tbaa !29
  %i.go = icmp eq i8 %.pr, 0
  br i1 %i.go, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %.thread

.thread:                                          ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i83
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.gq = load ptr, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.thread
  %i.gr = load ptr, ptr %18, align 8, !tbaa !15
  %i.gs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gp, ptr noundef nonnull @.str.5, ptr noundef %i.gq, ptr noundef %i.gr) #24 ; 0 uses
  %i.gt = load ptr, ptr %18, align 8, !tbaa !15   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.ba
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !16
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.bb:                                            ; preds = %.thread
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit97

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZdaPv(ptr noundef nonnull %i.q) #25
  br label %bb.bc

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit97: ; preds = %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.an
  %.pn28 = phi { ptr, i32 } [ %i.gy, %bb.bb ], [ %i.er, %bb.an ], [ %.pn25.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZdaPv(ptr noundef nonnull %i.q) #25
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.gz = load ptr, ptr %4, align 8, !tbaa !46    ; 3 uses
  %.not.i98 = icmp eq ptr %i.gz, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN7rocksdb14SequentialFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb14SequentialFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb14SequentialFileEEclEPS1_.exit.i: ; preds = %bb.bc
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !27
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gz) #23, !inline_history !67
  br label %_ZNSt10unique_ptrIN7rocksdb14SequentialFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb14SequentialFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bc, %_ZNKSt14default_deleteIN7rocksdb14SequentialFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.bd:                                            ; preds = %bb.am, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit97, %bb.g
  %.pn28.pn.pn = phi { ptr, i32 } [ %i.eq, %bb.am ], [ %i.p, %bb.g ], [ %.pn28, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit97 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !52 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.he, null
  br i1 %.not.i.i99, label %_ZN7rocksdb6StatusD2Ev.exit101, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i100

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i100: ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.he) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit101

_ZN7rocksdb6StatusD2Ev.exit101:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i100, %bb.bd, %bb.f
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %.pn28.pn.pn, %bb.bd ], [ %.pn28.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.hf = load ptr, ptr %4, align 8, !tbaa !46    ; 3 uses
  %.not.i102 = icmp eq ptr %i.hf, null
  br i1 %.not.i102, label %_ZNSt10unique_ptrIN7rocksdb14SequentialFileESt14default_deleteIS1_EED2Ev.exit104, label %_ZNKSt14default_deleteIN7rocksdb14SequentialFileEEclEPS1_.exit.i103

_ZNKSt14default_deleteIN7rocksdb14SequentialFileEEclEPS1_.exit.i103: ; preds = %_ZN7rocksdb6StatusD2Ev.exit101
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !27
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.hf) #23, !inline_history !67
  br label %_ZNSt10unique_ptrIN7rocksdb14SequentialFileESt14default_deleteIS1_EED2Ev.exit104

_ZNSt10unique_ptrIN7rocksdb14SequentialFileESt14default_deleteIS1_EED2Ev.exit104: ; preds = %_ZN7rocksdb6StatusD2Ev.exit101, %_ZNKSt14default_deleteIN7rocksdb14SequentialFileEEclEPS1_.exit.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn28.pn.pn.pn
}

declare void @_ZN7rocksdb10EnvOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb11TrimDirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 10 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %._crit_edge.i.i.thread, label %bb.b

._crit_edge.i.i.thread:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !15     ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.1.i.in = phi i64 [ %i.b, %bb.b ], [ %.1.i, %bb.d ] ; 9 uses
  %.1.i = add i64 %.1.i.in, -1                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = icmp eq i8 %i.f, 47
  br i1 %i.g, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit

bb.d:                                             ; preds = %bb.c
  %.not12.i = icmp eq i64 %.1.i, 0
  br i1 %.not12.i, label %bb.e, label %bb.c, !llvm.loop !68

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !19
  %i.i = icmp ugt i64 %i.b, 15
  br i1 %i.i, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.j = icmp slt i64 %i.b, 0
  br i1 %i.j, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw i64 %i.b, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !23

.noexc6.i:                                        ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.g
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !15
  store i64 %i.b, ptr %i.h, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.e
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.h, %bb.e ] ; 4 uses
  %cond10 = icmp eq i64 %i.b, 1
  br i1 %cond10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.d, align 1, !tbaa !16
  store i8 %i.o, ptr %i.n, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.d, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i.thread, %bb.h, %bb.i
  %i.p = phi ptr [ %i.c, %._crit_edge.i.i.thread ], [ %i.n, %bb.i ], [ %i.n, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.q, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.b
  store i8 0, ptr %i.r, align 1, !tbaa !16
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !19, !alias.scope !69
  %i.t = icmp ugt i64 %.1.i.in, 15
  br i1 %i.t, label %bb.j, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit
  %i.u = icmp slt i64 %.1.i.in, 0
  br i1 %i.u, label %.noexc10.i.i, label %bb.k

.noexc10.i.i:                                     ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.v = add nuw i64 %.1.i.in, 1                  ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !23

.noexc11.i.i:                                     ; preds = %bb.k
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.k
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #22 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !15, !alias.scope !69
  store i64 %.1.i.in, ptr %i.s, align 8, !tbaa !16, !alias.scope !69
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit
  %i.y = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit ] ; 3 uses
  %cond = icmp eq i64 %.1.i.in, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.d, align 1, !tbaa !16
  store i8 %i.z, ptr %i.y, align 1, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.d, i64 %.1.i.in, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %bb.l, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.i.in, ptr %i.aa, align 8, !tbaa !9, !alias.scope !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.1.i.in
  store i8 0, ptr %i.ab, align 1, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13GetDirAndNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !19
  %i.b = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !23

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #22 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.n = load i64, ptr %i.l, align 8, !tbaa !9, !noalias !72 ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %._crit_edge.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %3, align 8, !tbaa !15, !noalias !72 ; 3 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.g, %bb.f
  %.1.i.i.in.i = phi i64 [ %i.n, %bb.f ], [ %.1.i.i.i, %bb.g ] ; 3 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.1.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16, !noalias !72
  switch i8 %i.q, label %bb.g [
    i8 92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
    i8 47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
  ]

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not17.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not17.i.i.i, label %._crit_edge.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !17

._crit_edge.i.i.i:                                ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !19, !alias.scope !72
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !9, !alias.scope !72
  store i8 0, ptr %i.r, align 8, !tbaa !16, !alias.scope !72
  br label %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !19, !alias.scope !75
  %i.u = icmp ugt i64 %.1.i.i.i, 15
  br i1 %i.u, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
  %i.v = icmp slt i64 %.1.i.i.i, 0
  br i1 %i.v, label %.noexc10.i.i.i, label %bb.i

.noexc10.i.i.i:                                   ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %.noexc10.i.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = icmp slt i64 %.1.i.i.in.i, 0
  br i1 %i.w, label %.noexc11.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !23

.noexc11.i.i.i:                                   ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc7 unwind label %bb.r

.noexc7:                                          ; preds = %.noexc11.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.i
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.1.i.i.in.i) #22
          to label %.noexc8 unwind label %bb.r    ; 2 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.x, ptr %2, align 8, !tbaa !15, !alias.scope !75
  store i64 %.1.i.i.i, ptr %i.t, align 8, !tbaa !16, !alias.scope !75
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
  %i.y = phi ptr [ %i.x, %.noexc8 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i ] ; 3 uses
  switch i64 %.1.i.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = load i8, ptr %i.o, align 1, !tbaa !16
  store i8 %i.z, ptr %i.y, align 1, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.o, i64 %.1.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.1.i.i.i, ptr %i.aa, align 8, !tbaa !9, !alias.scope !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.1.i.i.i
  store i8 0, ptr %i.ab, align 1, !tbaa !16
  br label %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i, %._crit_edge.i.i.i
  %i.ac = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !16
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb10GetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !9
  %i.ai = add i64 %i.ah, 1                        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !9, !noalias !78 ; 3 uses
  %i.ak = icmp ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i64 noundef %i.ai, i64 noundef %i.aj) #21
          to label %.noexc10 unwind label %bb.s

.noexc10:                                         ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !19, !alias.scope !78
  %i.am = load ptr, ptr %1, align 8, !tbaa !15, !noalias !78
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai ; 2 uses
  %i.ao = sub nuw i64 %i.aj, %i.ai                ; 8 uses
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %bb.m, label %._crit_edge.i.i.i9

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.aq = icmp slt i64 %i.ao, 0
  br i1 %i.aq, label %.noexc10.i.i, label %bb.n

.noexc10.i.i:                                     ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
          to label %.noexc11 unwind label %bb.s

.noexc11:                                         ; preds = %.noexc10.i.i
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ar = add nuw i64 %i.ao, 1                    ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !23

.noexc11.i.i:                                     ; preds = %bb.n
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.n
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #22
          to label %.noexc13 unwind label %bb.s   ; 2 uses

.noexc13:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.at, ptr %4, align 8, !tbaa !15, !alias.scope !78
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !16, !alias.scope !78
  br label %._crit_edge.i.i.i9

._crit_edge.i.i.i9:                               ; preds = %.noexc13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.au = phi ptr [ %i.at, %.noexc13 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.ao, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i9
  %i.av = load i8, ptr %i.an, align 1, !tbaa !16
  store i8 %i.av, ptr %i.au, align 1, !tbaa !16
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %i.an, i64 %i.ao, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i9
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ao, ptr %i.aw, align 8, !tbaa !9, !alias.scope !78
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  store i8 0, ptr %i.ax, align 1, !tbaa !16
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit unwind label %bb.t

_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit: ; preds = %bb.q
  %i.ay = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.al
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit
  %i.ba = load i64, ptr %i.al, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bc = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc11.i.i.i, %.noexc10.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.a
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.r
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc11.i.i, %.noexc10.i.i, %bb.l
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.t:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.al
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.t
  %i.bp = load i64, ptr %i.al, align 8, !tbaa !16
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.s ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.bm, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.br = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %.sink55 = phi i64 [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %.sink = phi ptr [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.bv = add i64 %.sink55, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb9FileState16DropUnsyncedDataEPNS_3EnvE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %spec.select = select i1 %i.c, i64 0, i64 %i.b
  tail call void @_ZN7rocksdb8TruncateEPNS_3EnvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %spec.select)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb9FileState22DropRandomUnsyncedDataEPNS_3EnvEPNS_6RandomE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %spec.select = select i1 %i.c, i64 0, i64 %i.b  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
  %i.f = sub nsw i64 %i.e, %spec.select
end_hunk_1
