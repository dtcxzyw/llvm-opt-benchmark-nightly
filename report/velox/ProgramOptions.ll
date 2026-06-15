inline.NumInlined: 2345
inline.NumDeleted: 1135
begin_hunk_0_@_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a
  %i.aj = phi i64 [ %i.aq, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.ao, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %i.ak = icmp eq i64 %i.w, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.ao = load ptr, ptr %.0.us.i.i, align 8, !tbaa !225 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.us.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !244 ; 2 uses
  %i.ar = urem i64 %i.aq, %i.aa
  %.not19.us.i.i = icmp eq i64 %i.ar, %i.ab
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !3815

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.as = phi i64 [ %i.bc, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ba, %bb.i ], [ %i.af, %bb.e ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.au = icmp eq i64 %i.w, %i.as
  br i1 %i.au, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !28
  %i.ax = icmp eq i64 %.fr22.i.i, %i.aw
  br i1 %i.ax, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !22
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr %i.ay, i64 %.fr22.i.i)
  %i.az = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.az, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ba = load ptr, ptr %.0.i.i, align 8, !tbaa !225 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !244 ; 2 uses
  %i.bd = urem i64 %i.bc, %i.aa
  %.not19.i.i = icmp eq i64 %i.bd, %i.ab
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !3815

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISK_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISK_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.016.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISK_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISK_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly22parseNestedCommandLineEiPKPKcRKN5boost15program_options19options_descriptionENS5_18command_line_style7style_tE(ptr dead_on_unwind noalias writable sret(%"struct.folly::NestedCommandLineParseResult") align 8 initializes((0, 36), (72, 73), (80, 104)) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::program_options::basic_command_line_parser", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN5boost15program_options25basic_command_line_parserIcEC2EiPKPKc(ptr noundef nonnull align 8 dereferenceable(120) %5, i32 noundef %1, ptr noundef %2)
  invoke fastcc void @_ZN5folly12_GLOBAL__N_124doParseNestedCommandLineEON5boost15program_options25basic_command_line_parserIcEERKNS2_19options_descriptionENS2_18command_line_style7style_tE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost15program_options6detail7cmdlineD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost15program_options6detail7cmdlineD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_124doParseNestedCommandLineEON5boost15program_options25basic_command_line_parserIcEERKNS2_19options_descriptionENS2_18command_line_style7style_tE(ptr dead_on_unwind noalias writable align 8 initializes((0, 36), (72, 73), (80, 104)) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::program_options::basic_parsed_options", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !3816
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZN5boost15program_options6detail7cmdline23set_options_descriptionERKNS0_19options_descriptionE(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %2, ptr %i.c, align 8, !tbaa !3818
  invoke void @_ZN5boost15program_options6detail7cmdline5styleEi(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %3)
          to label %_ZN5boost15program_options25basic_command_line_parserIcE5styleEi.exit unwind label %bb.f

_ZN5boost15program_options25basic_command_line_parserIcE5styleEi.exit: ; preds = %bb.b
  invoke void @_ZN5boost15program_options6detail7cmdline18allow_unregisteredEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
          to label %_ZN5boost15program_options25basic_command_line_parserIcE18allow_unregisteredEv.exit unwind label %bb.f

_ZN5boost15program_options25basic_command_line_parserIcE18allow_unregisteredEv.exit: ; preds = %_ZN5boost15program_options25basic_command_line_parserIcE5styleEi.exit
  invoke void @_ZN5boost15program_options25basic_command_line_parserIcE3runEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::program_options::basic_parsed_options") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN5boost15program_options25basic_command_line_parserIcE18allow_unregisteredEv.exit
  %i.d = load ptr, ptr %0, align 8, !tbaa !3832   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3835 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3836
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load <2 x ptr>, ptr %4, align 16, !tbaa !3837
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !3837
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !3836
  store ptr %i.l, ptr %i.g, align 8, !tbaa !3836
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %.05.i.i.i.i.i.i) #34
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3838

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5boost15program_options20basic_parsed_optionsIcEaSEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.p) #36
  br label %_ZN5boost15program_options20basic_parsed_optionsIcEaSEOS2_.exit

_ZN5boost15program_options20basic_parsed_optionsIcEaSEOS2_.exit: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(12) %i.r, i64 12, i1 false)
  %i.s = load ptr, ptr %4, align 16, !tbaa !3832  ; 3 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !3835 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost15program_options20basic_parsed_optionsIcEaSEOS2_.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.s, %_ZN5boost15program_options20basic_parsed_optionsIcEaSEOS2_.exit ] ; 2 uses
  call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %.05.i.i.i.i) #34
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3838

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 16, !tbaa !3832
  br label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZN5boost15program_options20basic_parsed_optionsIcEaSEOS2_.exit
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.s, %_ZN5boost15program_options20basic_parsed_optionsIcEaSEOS2_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.k, align 16, !tbaa !3836
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #36
  br label %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit

_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3837  ; 2 uses
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !3837 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.g

._crit_edge:                                      ; preds = %bb.r, %_ZN5boost15program_options20basic_parsed_optionsIcED2Ev.exit
  ret void

bb.f:                                             ; preds = %_ZN5boost15program_options25basic_command_line_parserIcE5styleEi.exit, %bb.b, %bb.a, %_ZN5boost15program_options25basic_command_line_parserIcE18allow_unregisteredEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.s

bb.g:                                             ; preds = %.lr.ph, %bb.r
  %.01835 = phi i1 [ true, %.lr.ph ], [ %.119, %bb.r ] ; 2 uses
  %.sroa.031.034 = phi ptr [ %i.aa, %.lr.ph ], [ %i.bk, %bb.r ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.031.034, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.031.034, i64 32 ; 2 uses
  %6 = load i32, ptr %5, align 8                  ; 2 uses
  %.not = icmp ne i32 %6, -1
  %or.cond.not = select i1 %.01835, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.h, label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i8, ptr %i.a, align 8, !tbaa !3839, !range !2208, !noundef !64
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exitthread-pre-split unwind label %.loopexit

bb.j:                                             ; preds = %bb.h
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !30
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !28 ; 8 uses
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %bb.k, label %._crit_edge.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp slt i64 %i.ap, 0
  br i1 %i.ar, label %.noexc.i.i.i.i, label %bb.l

.noexc.i.i.i.i:                                   ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #35
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %.noexc.i.i.i.i
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.as = add nuw i64 %i.ap, 1                    ; 2 uses
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !35

.noexc6.i.i.i.i:                                  ; preds = %bb.l
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.l
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #33
          to label %.noexc25 unwind label %.loopexit ; 2 uses

.noexc25:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.au, ptr %i.ad, align 8, !tbaa !22
  store i64 %i.ap, ptr %i.ae, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc25, %bb.j
  %i.av = phi ptr [ %i.au, %.noexc25 ], [ %i.ae, %bb.j ] ; 3 uses
  switch i64 %i.ap, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIJRKS6_EEEvDpOT_.exit.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aw = load i8, ptr %i.an, align 1, !tbaa !29
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !29
  br label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIJRKS6_EEEvDpOT_.exit.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %i.an, i64 %i.ap, i1 false)
  br label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIJRKS6_EEEvDpOT_.exit.i.i

_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIJRKS6_EEEvDpOT_.exit.i.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i.i
  store i64 %i.ap, ptr %i.af, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ap
  store i8 0, ptr %i.ax, align 1, !tbaa !29
  store i8 1, ptr %i.a, align 8, !tbaa !3839
  br label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exitthread-pre-split

.loopexit:                                        ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i, %.noexc6.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exitthread-pre-split: ; preds = %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIJRKS6_EEEvDpOT_.exit.i.i, %bb.i
  %.pr = load i32, ptr %5, align 8, !tbaa !3841
  br label %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exit

_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exit: ; preds = %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exitthread-pre-split, %bb.g
  %7 = phi i32 [ %.pr, %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exitthread-pre-split ], [ %6, %bb.g ]
  %.sroa.031.0 = phi ptr [ %i.ak, %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exitthread-pre-split ], [ %i.aj, %bb.g ]
  %.not20 = icmp eq i32 %7, -1
  br i1 %.not20, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.031.034, i64 88
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !3843, !range !2208, !noundef !64
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %_ZN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRS6_EERS7_OT_.exit
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.031.034, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEvSC_T_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bi, ptr %.sroa.031.0, ptr %i.bd)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %.119 = phi i1 [ %.01835, %bb.o ], [ false, %bb.p ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.031.034, i64 96 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ab
  br i1 %i.bl, label %._crit_edge, label %bb.g

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.bj, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5folly28NestedCommandLineParseResultD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost15program_options25basic_command_line_parserIcEC2EiPKPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.56", align 8    ; 10 uses
  %4 = alloca %"class.std::vector.56", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 %.idx
  %gepdiff = add nsw i64 %.idx, -8                ; 3 uses
  %i.d = ashr exact i64 %gepdiff, 3               ; 2 uses
  %i.e = icmp ugt i64 %i.d, 288230376151711743
  br i1 %i.e, label %.noexc.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #35
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %1, 1
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.f = shl nuw nsw i64 %gepdiff, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.h = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ], [ %i.g, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ] ; 5 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !3844
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !3845
  %i.k = invoke noundef ptr @_ZSt16__do_uninit_copyIPKPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SC_SB_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.h)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i6.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx40 = shl nuw nsw i64 %gepdiff, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %.idx40) #36
  br label %.body

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !3846
  invoke void @_ZN5boost15program_options11to_internalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorIS7_SaIS7_EERKS8_IT_SaISB_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.56") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost15program_options6detail7cmdlineC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8, !tbaa !3844   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3846 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.m, %bb.f ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !29
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3847

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !3844
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3845
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g
  %i.ab = load ptr, ptr %4, align 8, !tbaa !3844  ; 3 uses
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !3846 ; 2 uses
  %.not4.i.i.i11 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not4.i.i.i11, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i19, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i15
  %.05.i.i.i13 = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i15 ], [ %i.ab, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i13, align 8, !tbaa !22 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i12
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i15

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i15: ; preds = %.lr.ph.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 32 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i16, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i17, label %.lr.ph.i.i.i12, !llvm.loop !3847

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i17: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i15
  %.pr.i18 = load ptr, ptr %4, align 8, !tbaa !3844
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i19: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i17, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aj = phi ptr [ %.pr.i18, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i17 ], [ %i.ab, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i20 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i20, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit23, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i19
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !3845
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit23

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit23: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i19, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.ao, align 8, !tbaa !3818
  ret void

bb.i:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ap, %bb.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #34
  br label %.body

.body:                                            ; preds = %bb.c, %bb.b, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %lpad.thr_comm.split-lp, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost15program_options6detail7cmdlineD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3848 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEED2Ev.exit, label %bb.b

end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !29
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !3847

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3835 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !3832   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 96
  %i.h = icmp ugt i64 %i.g, 96076792050570581
  br i1 %i.h, label %.noexc.i, label %_ZNSt15__new_allocatorIN5boost15program_options12basic_optionIcEEE8allocateEmPKv.exit.i.i.i, !prof !35

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorIN5boost15program_options12basic_optionIcEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5boost15program_options12basic_optionIcEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN5boost15program_options12basic_optionIcEEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !3832
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !3835
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3836
  %i.n = load ptr, ptr %1, align 8, !tbaa !3837   ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !3837 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5boost15program_options12basic_optionIcEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN5boost15program_options12basic_optionIcEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN5boost15program_options12basic_optionIcEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN5boost15program_options12basic_optionIcEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  invoke void @_ZN5boost15program_options12basic_optionIcEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(90) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(90) %.sroa.08.012.i.i.i.i)
          to label %_ZSt10_ConstructIN5boost15program_options12basic_optionIcEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN5boost15program_options12basic_optionIcEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 96 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.o
  br i1 %i.s, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5boost15program_options12basic_optionIcEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3862

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #34 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.j, %.013.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  tail call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %.05.i.i.i.i.i.i) #34
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %.013.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3838

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEEEvT_S5_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #35
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEEEvT_S5_.exit.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #37
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEEEvT_S5_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5boost15program_options12basic_optionIcEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5boost15program_options12basic_optionIcEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.r, %_ZSt10_ConstructIN5boost15program_options12basic_optionIcEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !3835
  ret void

.body:                                            ; preds = %bb.e
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3832  ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !3836
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #36
  br label %_ZNSt12_Vector_baseIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.x
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost15program_options12basic_optionIcEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(90) %1) unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #35
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !35

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #33 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !29
  store i8 %i.k, ptr %i.j, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !3841
  store i32 %i.p, ptr %i.n, align 8, !tbaa !3841
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3846 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !3844 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i, label %.noexc9, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = icmp ugt i64 %i.x, 9223372036854775776
  br i1 %i.y, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !35

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #33
          to label %.noexc9 unwind label %bb.n

.noexc9:                                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.z, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !3844
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !3846
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !3845
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ae, ptr %i.af, ptr noundef %i.aa)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc9
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !3844 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !3845
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #36
  br label %.body

bb.i:                                             ; preds = %.noexc9
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !3846
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3846 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !3844 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i.i.i10, label %.noexc16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = icmp ugt i64 %i.au, 9223372036854775776
  br i1 %i.av, label %.noexc.i.i14, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i11, !prof !35

.noexc.i.i14:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc15 unwind label %bb.o

.noexc15:                                         ; preds = %.noexc.i.i14
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i11: ; preds = %bb.j
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #33
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i11, %bb.i
  %i.ax = phi ptr [ null, %bb.i ], [ %i.aw, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i11 ] ; 4 uses
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !3844
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !3846
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !3845
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !55
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !55
  %i.bd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bb, ptr %i.bc, ptr noundef %i.ax)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc16
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !3844 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i12, label %.body17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !3845
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #36
  br label %.body17

bb.m:                                             ; preds = %.noexc16
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !3846
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bm = load i16, ptr %i.bl, align 8
  store i16 %i.bm, ptr %i.bk, align 8
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i11, %.noexc.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.k, %bb.l, %bb.o
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %i.be, %bb.l ], [ %i.be, %bb.k ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.q) #34
  br label %.body

.body:                                            ; preds = %bb.n, %bb.h, %bb.g, %.body17
  %.pn = phi { ptr, i32 } [ %eh.lpad-body18, %.body17 ], [ %i.bn, %bb.n ], [ %i.ah, %bb.h ], [ %i.ah, %bb.g ]
  %i.bp = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.a
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.br = load i64, ptr %i.a, align 8, !tbaa !29
  %i.bs = add i64 %i.br, 1
  tail call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.p, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.010.018 = phi ptr [ %i.o, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 3 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !30
  %i.c = load ptr, ptr %.sroa.010.018, align 8, !tbaa !22 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #35
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !35

.noexc6.i.i:                                      ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #33
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.j, ptr %.019, align 8, !tbaa !22
  store i64 %i.e, ptr %i.b, align 8, !tbaa !29
  br label %._crit_edge.i.i.i

end_hunk_1
begin_hunk_2_@bcmp
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !3641}
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3642 = !DISubprogram(name: "shared_ptr", linkageName: "_ZNSt10shared_ptrIN5folly12_GLOBAL__N_19GFlagInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC4ERKSA_", scope: !3497, file: !1897, line: 204, type: !3643, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !3641, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3497)
!3647 = !DISubprogram(name: "shared_ptr", linkageName: "_ZNSt10shared_ptrIN5folly12_GLOBAL__N_19GFlagInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC4EOSA_", scope: !3497, file: !1897, line: 359, type: !3648, scopeLine: 359, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !3641, !3650}
!3650 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !3497, size: 64)
!3651 = !DISubprogram(name: "shared_ptr", linkageName: "_ZNSt10shared_ptrIN5folly12_GLOBAL__N_19GFlagInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC4EDn", scope: !3497, file: !1897, line: 412, type: !3652, scopeLine: 412, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !3641, !2078}
!3654 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10shared_ptrIN5folly12_GLOBAL__N_19GFlagInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSERKSA_", scope: !3497, file: !1897, line: 414, type: !3655, scopeLine: 414, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!3657, !3641, !3645}
!3657 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3497, size: 64)
!3658 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10shared_ptrIN5folly12_GLOBAL__N_19GFlagInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEOSA_", scope: !3497, file: !1897, line: 438, type: !3659, scopeLine: 438, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!3657, !3641, !3650}
!3661 = !DISubprogram(name: "shared_ptr", linkageName: "_ZNSt10shared_ptrIN5folly12_GLOBAL__N_19GFlagInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC4ERKSt8weak_ptrIS9_ESt9nothrow_t", scope: !3497, file: !1897, line: 535, type: !3662, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{null, !3641, !3664, !2023}
!3664 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3666)
!3666 = !DICompositeType(tag: DW_TAG_class_type, name: "weak_ptr<folly::(anonymous namespace)::GFlagInfo<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !60, file: !1897, line: 811, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!3667 = !DISubprogram(name: "GFlagValueSemanticBase", linkageName: "_ZN5folly12_GLOBAL__N_122GFlagValueSemanticBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC4ESt10shared_ptrINS0_9GFlagInfoIS7_EEE", scope: !3493, file: !259, line: 84, type: !3668, scopeLine: 84, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !3670, !3497}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3671 = !DISubprogram(name: "name", linkageName: "_ZNK5folly12_GLOBAL__N_122GFlagValueSemanticBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4nameEv", scope: !3493, file: !259, line: 87, type: !3672, scopeLine: 87, containingType: !3493, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagLocalToUnit | DISPFlagOptimized)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!274, !3674}
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3676 = !DISubprogram(name: "is_composing", linkageName: "_ZNK5folly12_GLOBAL__N_122GFlagValueSemanticBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12is_composingEv", scope: !3493, file: !259, line: 91, type: !3677, scopeLine: 91, containingType: !3493, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagLocalToUnit | DISPFlagOptimized)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!104, !3674}
!3679 = !DISubprogram(name: "is_required", linkageName: "_ZNK5folly12_GLOBAL__N_122GFlagValueSemanticBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11is_requiredEv", scope: !3493, file: !259, line: 92, type: !3677, scopeLine: 92, containingType: !3493, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagLocalToUnit | DISPFlagOptimized)
!3680 = !DISubprogram(name: "notify", linkageName: "_ZNK5folly12_GLOBAL__N_122GFlagValueSemanticBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6notifyERKN5boost3anyE", scope: !3493, file: !259, line: 94, type: !3681, scopeLine: 94, containingType: !3493, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagLocalToUnit | DISPFlagOptimized)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !3674, !1293}
!3683 = !DISubprogram(name: "apply_default", linkageName: "_ZNK5folly12_GLOBAL__N_122GFlagValueSemanticBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13apply_defaultERN5boost3anyE", scope: !3493, file: !259, line: 95, type: !3684, scopeLine: 95, containingType: !3493, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagLocalToUnit | DISPFlagOptimized)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!104, !3674, !1192}
!3686 = !DISubprogram(name: "parse", linkageName: "_ZNK5folly12_GLOBAL__N_122GFlagValueSemanticBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERN5boost3anyERKSt6vectorIS7_SaIS7_EEb", scope: !3493, file: !259, line: 119, type: !3687, scopeLine: 119, containingType: !3493, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagLocalToUnit | DISPFlagOptimized)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{null, !3674, !1192, !1317, !104}
!3689 = !DISubprogram(name: "transform", linkageName: "_ZNK5folly12_GLOBAL__N_122GFlagValueSemanticBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9transformERS7_", scope: !3493, file: !259, line: 113, type: !3690, scopeLine: 113, containingType: !3493, virtualIndex: 11, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagLocalToUnit | DISPFlagOptimized)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !3674, !909}
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!276, !3674, !1317}
!3694 = !{!3695}
!3695 = distinct !{!3695, !3696, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_: argument 0"}
!3696 = distinct !{!3696, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_"}
!3697 = !{!3698}
!3698 = distinct !{!3698, !3699, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_: argument 0"}
!3699 = distinct !{!3699, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_"}
!3700 = !{!3698, !3695}
!3701 = !{!3702, !3704, !3706, !3698, !3695}
!3702 = distinct !{!3702, !3703, !"_ZN5folly6detail10parseToStrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEESC_RT_: argument 0"}
!3703 = distinct !{!3703, !"_ZN5folly6detail10parseToStrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEESC_RT_"}
!3704 = distinct !{!3704, !3705, !"_ZN5folly7parseToENS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!3705 = distinct !{!3705, !"_ZN5folly7parseToENS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!3706 = distinct !{!3706, !3707, !"_ZN5folly6detail11parseToWrapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_voidIDTcl7parseTotlNS_5RangeIPKcEEEclsr3stdE7declvalIRT_EEEEEE5valueESF_E4typeESC_SE_: argument 0"}
!3707 = distinct !{!3707, !"_ZN5folly6detail11parseToWrapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_voidIDTcl7parseTotlNS_5RangeIPKcEEEclsr3stdE7declvalIRT_EEEEEE5valueESF_E4typeESC_SE_"}
!3708 = !{!3709, !3711, !3713, !3698, !3695}
!3709 = distinct !{!3709, !3710, !"_ZZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_ENKUlNS_4UnitEE_clB5cxx11ESF_: argument 0"}
!3710 = distinct !{!3710, !"_ZZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_ENKUlNS_4UnitEE_clB5cxx11ESF_"}
!3711 = distinct !{!3711, !3712, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper12thenOrThrow_INS0_15ExpectedStorageINS_4UnitENS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESL_E4typeESK_EUlS5_E_ZNS9_ISF_EESN_SK_EUlS6_E0_SF_vLb0ETnNSG_IXooT4_scbsr3std7is_voidIT3_EE5valueEiE4typeELi0EEET2_OSL_OT0_OT1_: argument 0"}
!3712 = distinct !{!3712, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper12thenOrThrow_INS0_15ExpectedStorageINS_4UnitENS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESL_E4typeESK_EUlS5_E_ZNS9_ISF_EESN_SK_EUlS6_E0_SF_vLb0ETnNSG_IXooT4_scbsr3std7is_voidIT3_EE5valueEiE4typeELi0EEET2_OSL_OT0_OT1_"}
!3713 = distinct !{!3713, !3714, !"_ZNO5folly8ExpectedINS_4UnitENS_14ConversionCodeEE11thenOrThrowIZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESH_E4typeESG_EUlS1_E_ZNS5_ISB_EESJ_SG_EUlS2_E0_EEDTclclsr3stdE7declvalISH_EEclL_ZSt7declvalIOS1_EDTcl9__declvalISH_ELi0EEEvEEEEOSH_OT0_: argument 0"}
!3714 = distinct !{!3714, !"_ZNO5folly8ExpectedINS_4UnitENS_14ConversionCodeEE11thenOrThrowIZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESH_E4typeESG_EUlS1_E_ZNS5_ISB_EESJ_SG_EUlS2_E0_EEDTclclsr3stdE7declvalISH_EEclL_ZSt7declvalIOS1_EDTcl9__declvalISH_ELi0EEEvEEEEOSH_OT0_"}
!3715 = distinct !{null}
!3716 = distinct !{null, null}
!3717 = !{!3718}
!3718 = distinct !{!3718, !3719, !"_ZNK5folly12_GLOBAL__N_19GFlagInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3getEv: argument 0"}
!3719 = distinct !{!3719, !"_ZNK5folly12_GLOBAL__N_19GFlagInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3getEv"}
!3720 = !{!3721}
!3721 = distinct !{!3721, !3722, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_EENSt9enable_ifIXsr3std7is_sameIT_NSt5decayIT0_E4typeEEE5valueES9_E4typeEOSB_: argument 0"}
!3722 = distinct !{!3722, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_EENSt9enable_ifIXsr3std7is_sameIT_NSt5decayIT0_E4typeEEE5valueES9_E4typeEOSB_"}
!3723 = !{!3721, !3718}
!3724 = distinct !{ptr @_ZN5folly12_GLOBAL__N_122GFlagValueSemanticBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZNSt12__shared_ptrIN5folly12_GLOBAL__N_19GFlagInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3725 = !{ptr @_ZN5folly12_GLOBAL__N_122GFlagValueSemanticBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!3726 = !{!3727}
!3727 = distinct !{!3727, !3728, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_: argument 0"}
!3728 = distinct !{!3728, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_"}
!3729 = !{!3730}
!3730 = distinct !{!3730, !3731, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_: argument 0"}
!3731 = distinct !{!3731, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_"}
!3732 = !{!3730, !3727}
!3733 = !{!3734, !3736, !3738, !3730, !3727}
!3734 = distinct !{!3734, !3735, !"_ZN5folly6detail10parseToStrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEESC_RT_: argument 0"}
!3735 = distinct !{!3735, !"_ZN5folly6detail10parseToStrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEESC_RT_"}
!3736 = distinct !{!3736, !3737, !"_ZN5folly7parseToENS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!3737 = distinct !{!3737, !"_ZN5folly7parseToENS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!3738 = distinct !{!3738, !3739, !"_ZN5folly6detail11parseToWrapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_voidIDTcl7parseTotlNS_5RangeIPKcEEEclsr3stdE7declvalIRT_EEEEEE5valueESF_E4typeESC_SE_: argument 0"}
!3739 = distinct !{!3739, !"_ZN5folly6detail11parseToWrapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_voidIDTcl7parseTotlNS_5RangeIPKcEEEclsr3stdE7declvalIRT_EEEEEE5valueESF_E4typeESC_SE_"}
!3740 = !{!3741, !3743, !3745, !3730, !3727}
!3741 = distinct !{!3741, !3742, !"_ZZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_ENKUlNS_4UnitEE_clB5cxx11ESF_: argument 0"}
!3742 = distinct !{!3742, !"_ZZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESC_E4typeESB_ENKUlNS_4UnitEE_clB5cxx11ESF_"}
!3743 = distinct !{!3743, !3744, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper12thenOrThrow_INS0_15ExpectedStorageINS_4UnitENS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESL_E4typeESK_EUlS5_E_ZNS9_ISF_EESN_SK_EUlS6_E0_SF_vLb0ETnNSG_IXooT4_scbsr3std7is_voidIT3_EE5valueEiE4typeELi0EEET2_OSL_OT0_OT1_: argument 0"}
!3744 = distinct !{!3744, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper12thenOrThrow_INS0_15ExpectedStorageINS_4UnitENS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESL_E4typeESK_EUlS5_E_ZNS9_ISF_EESN_SK_EUlS6_E0_SF_vLb0ETnNSG_IXooT4_scbsr3std7is_voidIT3_EE5valueEiE4typeELi0EEET2_OSL_OT0_OT1_"}
!3745 = distinct !{!3745, !3746, !"_ZNO5folly8ExpectedINS_4UnitENS_14ConversionCodeEE11thenOrThrowIZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESH_E4typeESG_EUlS1_E_ZNS5_ISB_EESJ_SG_EUlS2_E0_EEDTclclsr3stdE7declvalISH_EEclL_ZSt7declvalIOS1_EDTcl9__declvalISH_ELi0EEEvEEEEOSH_OT0_: argument 0"}
!3746 = distinct !{!3746, !"_ZNO5folly8ExpectedINS_4UnitENS_14ConversionCodeEE11thenOrThrowIZNS_2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESH_E4typeESG_EUlS1_E_ZNS5_ISB_EESJ_SG_EUlS2_E0_EEDTclclsr3stdE7declvalISH_EEclL_ZSt7declvalIOS1_EDTcl9__declvalISH_ELi0EEEvEEEEOSH_OT0_"}
!3747 = !{!218, !222, i64 48}
!3748 = !{!3749, !3749, i64 0}
!3749 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEELb1EEEEEE", !26, i64 0}
!3750 = distinct !{!3750, !37}
!3751 = !{!218, !27, i64 24}
!3752 = distinct !{!3752, !37}
!3753 = distinct !{!3753, !37}
!3754 = !{!3755, !3749, i64 0}
!3755 = !{!"_ZTSNSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEELb1EEEEEE", !3749, i64 0}
!3756 = !{!3757, !3749, i64 0}
!3757 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !3749, i64 0, !3758, i64 8}
!3758 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEELb1EEE", !26, i64 0}
!3759 = !{!3757, !3758, i64 8}
!3760 = !{!26, !26, i64 0}
!3761 = !{!3762, !26, i64 32}
!3762 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvON6google19CommandLineFlagInfoERN5boost15program_options19options_descriptionEN5folly19ProgramOptionsStyleEEE", !23, i64 0, !26, i64 32}
!3763 = distinct !{!3763, !37}
!3764 = !{!3765, !3765, i64 0}
!3765 = !{!"p1 _ZTSN6google19CommandLineFlagInfoE", !26, i64 0}
!3766 = !{!3767, !3765, i64 0}
!3767 = !{!"_ZTSNSt12_Vector_baseIN6google19CommandLineFlagInfoESaIS1_EE17_Vector_impl_dataE", !3765, i64 0, !3765, i64 8, !3765, i64 16}
!3768 = !{!3767, !3765, i64 8}
!3769 = distinct !{!3769, !37}
!3770 = !{!3767, !3765, i64 16}
!3771 = !{!3772, !222, i64 16}
!3772 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !219, i64 0, !27, i64 8, !221, i64 16, !27, i64 24, !223, i64 32, !222, i64 48}
!3773 = distinct !{!3773, !37}
!3774 = !{!3772, !219, i64 0}
!3775 = !{!3772, !27, i64 8}
!3776 = !{!3777, !3778, i64 0}
!3777 = !{!"_ZTSNSt12_Vector_baseIN5boost10shared_ptrINS0_15program_options19options_descriptionEEESaIS4_EE17_Vector_impl_dataE", !3778, i64 0, !3778, i64 8, !3778, i64 16}
!3778 = !{!"p1 _ZTSN5boost10shared_ptrINS_15program_options19options_descriptionEEE", !26, i64 0}
!3779 = !{!3777, !3778, i64 8}
!3780 = !{!3781, !3782, i64 0}
!3781 = !{!"_ZTSN5boost6detail12shared_countE", !3782, i64 0}
!3782 = !{!"p1 _ZTSN5boost6detail15sp_counted_baseE", !26, i64 0}
!3783 = distinct !{null}
!3784 = distinct !{!3784, !37}
!3785 = !{!3777, !3778, i64 16}
!3786 = !{!3787, !3788, i64 0}
!3787 = !{!"_ZTSSt18_Bit_iterator_base", !3788, i64 0, !8, i64 8}
!3788 = !{!"p1 long", !26, i64 0}
!3789 = !{!3790, !3788, i64 32}
!3790 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !3791, i64 0, !3791, i64 16, !3788, i64 32}
!3791 = !{!"_ZTSSt13_Bit_iterator", !3787, i64 0}
!3792 = !{!3793, !3794, i64 0}
!3793 = !{!"_ZTSNSt12_Vector_baseIN5boost10shared_ptrINS0_15program_options18option_descriptionEEESaIS4_EE17_Vector_impl_dataE", !3794, i64 0, !3794, i64 8, !3794, i64 16}
!3794 = !{!"p1 _ZTSN5boost10shared_ptrINS_15program_options18option_descriptionEEE", !26, i64 0}
!3795 = !{!3793, !3794, i64 8}
!3796 = distinct !{!3796, !37}
!3797 = !{!3793, !3794, i64 16}
!3798 = !{!3772, !222, i64 48}
!3799 = !{!3800, !3800, i64 0}
!3800 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEE", !26, i64 0}
!3801 = distinct !{!3801, !37}
!3802 = !{!3772, !27, i64 24}
!3803 = distinct !{!3803, !37}
!3804 = distinct !{!3804, !37}
!3805 = !{!3806, !3800, i64 0}
!3806 = !{!"_ZTSNSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEE", !3800, i64 0}
!3807 = !{!3808, !3800, i64 0}
!3808 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeE", !3800, i64 0, !3809, i64 8}
!3809 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEE", !26, i64 0}
!3810 = !{!3808, !3809, i64 8}
!3811 = distinct !{!3811, !37}
!3812 = distinct !{!3812, !37}
!3813 = distinct !{!3813, !37}
!3814 = distinct !{!3814, !37}
!3815 = distinct !{!3815, !37}
!3816 = !{!3817, !34, i64 32}
!3817 = !{!"_ZTSN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE31StorageNonTriviallyDestructibleE", !9, i64 0, !34, i64 32}
!3818 = !{!3819, !3826, i64 112}
!3819 = !{!"_ZTSN5boost15program_options25basic_command_line_parserIcEE", !3820, i64 0, !3826, i64 112}
!3820 = !{!"_ZTSN5boost15program_options6detail7cmdlineE", !3821, i64 0, !3825, i64 24, !34, i64 28, !3826, i64 32, !3827, i64 40, !3828, i64 48, !3831, i64 80}
!3821 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !3822, i64 0}
!3822 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !3823, i64 0}
!3823 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !3824, i64 0}
!3824 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!3825 = !{!"_ZTSN5boost15program_options18command_line_style7style_tE", !9, i64 0}
!3826 = !{!"p1 _ZTSN5boost15program_options19options_descriptionE", !26, i64 0}
!3827 = !{!"p1 _ZTSN5boost15program_options30positional_options_descriptionE", !26, i64 0}
!3828 = !{!"_ZTSN5boost9function1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ERKS7_EE", !3829, i64 0}
!3829 = !{!"_ZTSN5boost13function_baseE", !3830, i64 0, !9, i64 8}
!3830 = !{!"p1 _ZTSN5boost6detail8function11vtable_baseE", !26, i64 0}
!3831 = !{!"_ZTSN5boost9function1ISt6vectorINS_15program_options12basic_optionIcEESaIS4_EERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEE", !3829, i64 0}
!3832 = !{!3833, !3834, i64 0}
!3833 = !{!"_ZTSNSt12_Vector_baseIN5boost15program_options12basic_optionIcEESaIS3_EE17_Vector_impl_dataE", !3834, i64 0, !3834, i64 8, !3834, i64 16}
!3834 = !{!"p1 _ZTSN5boost15program_options12basic_optionIcEE", !26, i64 0}
!3835 = !{!3833, !3834, i64 8}
!3836 = !{!3833, !3834, i64 16}
!3837 = !{!3834, !3834, i64 0}
!3838 = distinct !{!3838, !37}
!3839 = !{!3840, !34, i64 32}
!3840 = !{!"_ZTSN5folly8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !3817, i64 0}
!3841 = !{!3842, !8, i64 32}
!3842 = !{!"_ZTSN5boost15program_options12basic_optionIcEE", !23, i64 0, !8, i64 32, !3821, i64 40, !3821, i64 64, !34, i64 88, !34, i64 89}
!3843 = !{!3842, !34, i64 88}
!3844 = !{!3824, !56, i64 0}
!3845 = !{!3824, !56, i64 16}
!3846 = !{!3824, !56, i64 8}
!3847 = distinct !{!3847, !37}
!3848 = !{!3829, !3830, i64 0}
!3849 = !{!3850, !26, i64 0}
!3850 = !{!"_ZTSN5boost6detail8function13basic_vtable1ISt6vectorINS_15program_options12basic_optionIcEESaIS6_EERS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE", !3851, i64 0, !26, i64 8}
!3851 = !{!"_ZTSN5boost6detail8function11vtable_baseE", !26, i64 0}
!3852 = distinct !{null}
!3853 = !{!3854, !26, i64 0}
!3854 = !{!"_ZTSN5boost6detail8function13basic_vtable1ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ERKS9_EE", !3851, i64 0, !26, i64 8}
!3855 = distinct !{null}
!3856 = !{!3857, !3826, i64 24}
!3857 = !{!"_ZTSN5boost15program_options20basic_parsed_optionsIcEE", !3858, i64 0, !3826, i64 24, !8, i64 32}
!3858 = !{!"_ZTSSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE", !3859, i64 0}
!3859 = !{!"_ZTSSt12_Vector_baseIN5boost15program_options12basic_optionIcEESaIS3_EE", !3860, i64 0}
!3860 = !{!"_ZTSNSt12_Vector_baseIN5boost15program_options12basic_optionIcEESaIS3_EE12_Vector_implE", !3833, i64 0}
!3861 = !{!3857, !8, i64 32}
!3862 = distinct !{!3862, !37}
!3863 = distinct !{!3863, !37}
!3864 = distinct !{!3864, !37}
!3865 = distinct !{!3865, !37}
!3866 = distinct !{!3866, !37}
!3867 = distinct !{!3867, !37}
!3868 = distinct !{!3868, !37}
!3869 = !{!3870}
!3870 = distinct !{!3870, !3871, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!3871 = distinct !{!3871, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!3872 = !{!3873}
!3873 = distinct !{!3873, !3871, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!3874 = !{!3870, !3873}
!3875 = distinct !{!3875, !37}
!3876 = !{!3877}
!3877 = distinct !{!3877, !3878, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!3878 = distinct !{!3878, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!3879 = !{!3880}
!3880 = distinct !{!3880, !3878, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!3881 = !{!3877, !3880}
!3882 = distinct !{!3882, !37}
end_hunk_2
