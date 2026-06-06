inline.NumInlined: 3363
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6duckdb21FlattenDependentJoins27DetectCorrelatedExpressionsERNS_15LogicalOperatorEbmb:_ZN6duckdb24HasCorrelatedExpressions13VisitOperatorERNS_15LogicalOperatorE.exit
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !96 ; 2 uses
  %i.jz = urem i64 %i.jy, %i.je
  %.not19.i.i.i.i179 = icmp eq i64 %i.jz, %i.jf
  br i1 %.not19.i.i.i.i179, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i180, !llvm.loop !98

..loopexit_crit_edge21.i.i.i.i180:                ; preds = %bb.ao
  br label %.loopexit.i.i181, !llvm.loop !98

.loopexit.i.i181:                                 ; preds = %.lr.ph.i.i.i.i176, %..loopexit_crit_edge21.i.i.i.i180, %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit
  %i.ka = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 5 uses
  store ptr null, ptr %i.ka, align 8, !tbaa !55
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 %i.jc, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store i8 0, ptr %i.kc, align 8, !tbaa !99
  %i.kd = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.jb, i64 noundef %i.jf, i64 noundef %i.jc, ptr noundef nonnull %i.ka, i64 noundef 1)
          to label %.loopexit.i.i181..loopexit232_crit_edge unwind label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i182

.loopexit.i.i181..loopexit232_crit_edge:          ; preds = %.loopexit.i.i181
  %.pre = load i8, ptr %i.a, align 8, !tbaa !75
  br label %.loopexit232

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i182: ; preds = %.loopexit.i.i181
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit232:                                     ; preds = %bb.an, %.loopexit.i.i181..loopexit232_crit_edge, %bb.am
  %i.kf = phi i8 [ %.pre, %.loopexit.i.i181..loopexit232_crit_edge ], [ %i.r, %bb.am ], [ %i.r, %bb.an ]
  %.pn.i.i183 = phi ptr [ %i.kd, %.loopexit.i.i181..loopexit232_crit_edge ], [ %i.jj, %bb.am ], [ %i.jw, %bb.an ]
  %.1.i.i184 = getelementptr inbounds nuw i8, ptr %.pn.i.i183, i64 16
  store i8 %.073.lcssa, ptr %.1.i.i184, align 1, !tbaa !340
  %i.kg = icmp eq i8 %i.kf, 78
  br i1 %i.kg, label %bb.ap, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit.thread223

bb.ap:                                            ; preds = %.loopexit232
  %i.kh = load ptr, ptr %0, align 8, !tbaa !103, !nonnull !50, !align !51 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 216 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !46 ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 224
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !369 ; 2 uses
  %i.kn = urem i64 %i.kk, %i.km                   ; 3 uses
  %i.ko = load ptr, ptr %i.ki, align 8, !tbaa !370
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.kn
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i189 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i.i189, label %.loopexit.i.i195, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !55 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !46
  %i.ku = icmp eq i64 %i.kk, %i.kt
  br i1 %i.ku, label %.loopexit231, label %.lr.ph.i.i.i.i190

bb.ar:                                            ; preds = %bb.as
  %i.kv = icmp eq i64 %i.kk, %i.ky
  br i1 %i.kv, label %.loopexit231, label %.lr.ph.i.i.i.i190, !llvm.loop !371

.lr.ph.i.i.i.i190:                                ; preds = %bb.aq, %bb.ar
  %.020.i.i.i.i191 = phi ptr [ %i.kw, %bb.ar ], [ %i.kr, %bb.aq ]
  %i.kw = load ptr, ptr %.020.i.i.i.i191, align 8, !tbaa !55 ; 4 uses
  %.not18.i.i.i.i192 = icmp eq ptr %i.kw, null
  br i1 %.not18.i.i.i.i192, label %.loopexit.i.i195, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i190
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !46 ; 2 uses
  %i.kz = urem i64 %i.ky, %i.km
  %.not19.i.i.i.i193 = icmp eq i64 %i.kz, %i.kn
  br i1 %.not19.i.i.i.i193, label %bb.ar, label %..loopexit_crit_edge21.i.i.i.i194, !llvm.loop !371

..loopexit_crit_edge21.i.i.i.i194:                ; preds = %bb.as
  br label %.loopexit.i.i195, !llvm.loop !371

.loopexit.i.i195:                                 ; preds = %.lr.ph.i.i.i.i190, %..loopexit_crit_edge21.i.i.i.i194, %bb.ap
  %i.la = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 5 uses
  store ptr null, ptr %i.la, align 8, !tbaa !55
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store i64 %i.kk, ptr %i.lb, align 8, !tbaa !372
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store ptr null, ptr %i.lc, align 8, !tbaa !374
  %i.ld = invoke ptr @_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ki, i64 noundef %i.kn, i64 noundef %i.kk, ptr noundef nonnull %i.la, i64 noundef 1)
          to label %.loopexit231 unwind label %_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i196

_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i196: ; preds = %.loopexit.i.i195
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit231:                                     ; preds = %bb.ar, %.loopexit.i.i195, %bb.aq
  %.pn.i.i197 = phi ptr [ %i.ld, %.loopexit.i.i195 ], [ %i.kr, %bb.aq ], [ %i.kw, %bb.ar ]
  %.1.i.i198 = getelementptr inbounds nuw i8, ptr %.pn.i.i197, i64 16
  store ptr %1, ptr %.1.i.i198, align 8, !tbaa !65
  br i1 %i.ja, label %bb.at, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit.thread223

bb.at:                                            ; preds = %.loopexit231
  %i.lf = load ptr, ptr %i.d, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.lh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.lg, ptr noundef nonnull align 8 dereferenceable(32) %i.lf) ; 0 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !59
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 %i.lj, ptr %i.lk, align 8, !tbaa !59
  %i.ll = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !65
  %i.ln = load i64, ptr %i.kj, align 8, !tbaa !377
  %i.lo = call noundef zeroext i1 @_ZN6duckdb21FlattenDependentJoins21MarkSubtreeCorrelatedERNS_15LogicalOperatorEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(97) %i.lm, i64 noundef %i.ln) ; 0 uses
  br label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit.thread223

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit.thread223: ; preds = %bb.at, %bb.ab, %.loopexit, %.loopexit228, %.loopexit232, %.loopexit231
  %.3 = phi i1 [ %i.ja, %.loopexit232 ], [ false, %.loopexit231 ], [ true, %bb.at ], [ true, %.loopexit228 ], [ %i.iz, %.loopexit ], [ true, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i1 %.3

.body:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i196, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i182, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i168, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i140, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i154, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i126, %_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %.sink = phi ptr [ %i.la, %_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i196 ], [ %i.ka, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i182 ], [ %i.it, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i168 ], [ %i.gq, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i140 ], [ %i.hs, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i154 ], [ %i.fj, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i126 ], [ %i.at, %_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.bu, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %.pn83.pn.pn.pn = phi { ptr, i32 } [ %i.le, %_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i196 ], [ %i.ke, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i182 ], [ %i.ix, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i168 ], [ %i.gu, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i140 ], [ %i.hw, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i154 ], [ %i.fn, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i126 ], [ %i.ax, %_ZNSt10_HashtableImSt4pairIKmPN6duckdb15LogicalOperatorEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.by, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn83.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(185) ptr @_ZN6duckdb15LogicalOperator4CastINS_22LogicalMaterializedCTEEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75
  %.not = icmp eq i8 %i.b, 79
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL25CreateDelimJoinConditionsERNS_21LogicalComparisonJoinERKNS_17CorrelatedColumnsENS_6vectorINS_13ColumnBindingELb1ESaIS6_EEEmb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %7 = alloca %"struct.duckdb::JoinCondition", align 8 ; 13 uses
  %8 = alloca %"class.duckdb::unique_ptr.217", align 8 ; 7 uses
  %9 = alloca %"class.duckdb::unique_ptr.217", align 8 ; 7 uses
  br i1 %4, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = load ptr, ptr %1, align 8, !tbaa !45
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 80
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = load ptr, ptr %1, align 8, !tbaa !45
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 80
  %i.j = icmp ult i64 %i.b, %i.i                  ; 2 uses
  %i.k = add nuw i64 %i.b, 1
  %spec.select = select i1 %i.j, i64 %i.k, i64 1
  %spec.select63 = select i1 %i.j, i64 %i.b, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.027 = phi i64 [ %16, %.thread ], [ %spec.select, %bb.b ] ; 2 uses
  %.026 = phi i64 [ 0, %.thread ], [ %spec.select63, %bb.b ] ; 2 uses
  %17 = icmp ult i64 %.026, %.027
  br i1 %17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6duckdb13JoinConditionD2Ev.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb13JoinConditionD2Ev.exit
  %storemerge73 = phi i64 [ %.026, %.lr.ph ], [ %i.bt, %_ZN6duckdb13JoinConditionD2Ev.exit ] ; 5 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.t = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 80                  ; 2 uses
  %.not.i.i.i = icmp ult i64 %storemerge73, %i.x
  br i1 %.not.i.i.i, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %storemerge73, i64 noundef %i.x) #24
  unreachable

_ZNK6duckdb17CorrelatedColumnsixERKm.exit:        ; preds = %bb.d
  %i.y = add i64 %storemerge73, %3                ; 2 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.aa = load ptr, ptr %2, align 8, !tbaa !237
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4
  %.not = icmp ult i64 %i.y, %i.ae
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.u unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.ai) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0, label %bb.j, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0, label %bb.j, label %bb.t

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3057 = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.af) #22
  br label %bb.t

bb.k:                                             ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %storemerge73 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  invoke void @_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERKNS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.217") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %8, align 8, !tbaa !379
  store ptr null, ptr %8, align 8, !tbaa !379
  %i.ap = load ptr, ptr %7, align 8, !tbaa !211   ; 3 uses
  store ptr %i.ao, ptr %7, align 8, !tbaa !211
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(88) %i.ap) #22, !inline_history !275
  %.pr = load ptr, ptr %8, align 8, !tbaa !379    ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.at = load ptr, ptr %.pr, align 8, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(112) %.pr) #22, !inline_history !381
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.aw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_13ColumnBindingELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.y)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERNS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.217") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %9, align 8, !tbaa !379
  store ptr null, ptr %9, align 8, !tbaa !379
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !211 ; 3 uses
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !211
  %.not.i.i.i.i.i34 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i34, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit42, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39: ; preds = %bb.n
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(88) %i.ay) #22, !inline_history !275
  %.pr59 = load ptr, ptr %9, align 8, !tbaa !379  ; 3 uses
  %.not.i40 = icmp eq ptr %.pr59, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit42, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i41

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i41: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39
  %i.bc = load ptr, ptr %.pr59, align 8, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(112) %.pr59) #22, !inline_history !381
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit42

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit42: ; preds = %bb.n, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  store i8 40, ptr %i.o, align 8, !tbaa !281
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !335 ; 6 uses
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !336
  %.not.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i, label %bb.o, label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit42
  %i.bh = load i64, ptr %7, align 8, !tbaa !211
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !211
  store ptr null, ptr %7, align 8, !tbaa !211
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i64, ptr %i.n, align 8, !tbaa !211
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !211
  store ptr null, ptr %i.n, align 8, !tbaa !211
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i8 40, ptr %i.bk, align 8, !tbaa !281
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.bl, ptr %i.p, align 8, !tbaa !335
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit42
  invoke void @_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.bf, ptr noundef nonnull align 8 dereferenceable(17) %7)
          to label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit unwind label %bb.r

_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.o
  %.pr61 = load ptr, ptr %i.n, align 8, !tbaa !211 ; 3 uses
  %.not.i.i43 = icmp eq ptr %.pr61, null
  br i1 %.not.i.i43, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit
  %i.bm = load ptr, ptr %.pr61, align 8, !tbaa !67
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(88) %.pr61) #22, !inline_history !337
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i, %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit
  %i.bp = load ptr, ptr %7, align 8, !tbaa !211   ; 3 uses
  %.not.i1.i = icmp eq ptr %i.bp, null
  br i1 %.not.i1.i, label %_ZN6duckdb13JoinConditionD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !67
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(88) %i.bp) #22, !inline_history !337
  br label %_ZN6duckdb13JoinConditionD2Ev.exit

_ZN6duckdb13JoinConditionD2Ev.exit:               ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bt = add nuw i64 %storemerge73, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %.027
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !382

bb.p:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.s

bb.q:                                             ; preds = %bb.m, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.r ], [ %i.bv, %bb.q ], [ %i.bu, %bb.p ]
  %i.bx = load ptr, ptr %i.n, align 8, !tbaa !211 ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i44, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i46, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i45

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i45: ; preds = %bb.s
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !67
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(88) %i.bx) #22, !inline_history !337
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i46

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i46: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i45, %bb.s
  %i.cb = load ptr, ptr %7, align 8, !tbaa !211   ; 3 uses
  %.not.i1.i47 = icmp eq ptr %i.cb, null
  br i1 %.not.i1.i47, label %_ZN6duckdb13JoinConditionD2Ev.exit49, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i48

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i48: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i46
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(88) %i.cb) #22, !inline_history !337
  br label %_ZN6duckdb13JoinConditionD2Ev.exit49

_ZN6duckdb13JoinConditionD2Ev.exit49:             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i46, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %_ZN6duckdb13JoinConditionD2Ev.exit49
  %.pn30.pn = phi { ptr, i32 } [ %.pn3057, %bb.j ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZN6duckdb13JoinConditionD2Ev.exit49 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn30.pn

bb.u:                                             ; preds = %bb.h
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !269    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !206

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.e = load ptr, ptr %0, align 8, !tbaa !212    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !46
  store i64 %i.i, ptr %i.b, align 8, !tbaa !46
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !344

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #22
  br label %bb.g

end_hunk_0
