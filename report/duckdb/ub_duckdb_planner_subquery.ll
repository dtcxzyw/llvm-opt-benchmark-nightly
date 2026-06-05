inline.NumInlined: 3363
inline.NumDeleted: 1557
begin_hunk_0

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21FlattenDependentJoinsC2ERNS_6BinderERKNS_17CorrelatedColumnsEbbNS_12optional_ptrIS0_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(256) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = zext i1 %4 to i8
  store ptr %1, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 -1, i64 24, i1 false)
  store ptr %i.e, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.k, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 1, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.q, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 1, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %2, ptr %i.v, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.a, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 %i.b, ptr %i.y, align 1, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %5, ptr %i.z, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ac = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.ac
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.af = phi ptr [ %i.ac, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit ]
  %storemerge13 = phi i64 [ 0, %.lr.ph ], [ %i.an, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.af, i64 %storemerge13 ; 2 uses
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN6duckdb13ColumnBindingESt4pairIKS2_mESaIS5_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEEixERS5_.exit unwind label %bb.e

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEEixERS5_.exit: ; preds = %bb.b
  store i64 %storemerge13, ptr %i.ah, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 3 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEEixERS5_.exit
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %bb.c
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.am, ptr %i.ad, align 8, !tbaa !47
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEEixERS5_.exit
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc9, %bb.d
  %i.an = add nuw i64 %storemerge13, 1            ; 2 uses
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !45 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 80
  %i.aw = icmp ult i64 %i.an, %i.av
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !52

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #22
  tail call void @_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.p) #22
  tail call void @_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.j) #22
  tail call void @_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #22
  resume { ptr, i32 } %i.ax
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !55 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #23
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !56

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #23
  br label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !55 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #23
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !58

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #23
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21FlattenDependentJoins22DecorrelateIndependentERNS_6BinderENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::CorrelatedColumns", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb::FlattenDependentJoins", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 -9223372036854775808, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN6duckdb21FlattenDependentJoinsC1ERNS_6BinderERKNS_17CorrelatedColumnsEbbNS_12optional_ptrIS0_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true, i1 noundef zeroext false, ptr null)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !tbaa !65
  store i64 %i.b, ptr %5, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins11DecorrelateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEEbm(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef nonnull %5, i1 noundef zeroext true, i64 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %5, align 8, !tbaa !65     ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %bb.c
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.c) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  call void @_ZN6duckdb21FlattenDependentJoinsD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.g = load ptr, ptr %3, align 8, !tbaa !45     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.k) #23
  br label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #22
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !74

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.g, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb17CorrelatedColumnsD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.p) #23
  br label %_ZN6duckdb17CorrelatedColumnsD2Ev.exit

_ZN6duckdb17CorrelatedColumnsD2Ev.exit:           ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 8, !tbaa !65     ; 3 uses
  %.not.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit6, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i5

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i5: ; preds = %bb.f
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.s) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit6

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit6: ; preds = %bb.f, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i5
  call void @_ZN6duckdb21FlattenDependentJoinsD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %4) #22
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit6 ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6duckdb17CorrelatedColumnsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21FlattenDependentJoins11DecorrelateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEEbm(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %2, i1 noundef zeroext %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %10 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::RewriteCorrelatedExpressions", align 8 ; 5 uses
  %12 = alloca %"class.duckdb::RewriteCorrelatedExpressions", align 8 ; 5 uses
  %13 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %14 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %15 = alloca %"class.duckdb::unique_ptr.160", align 8 ; 10 uses
  %16 = alloca %"class.duckdb::unique_ptr.169", align 8 ; 11 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %19 = alloca %"struct.duckdb::FlattenDependentJoins", align 8 ; 16 uses
  %20 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %21 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %22 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %23 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %24 = alloca %"class.duckdb::vector.211", align 8 ; 6 uses
  %25 = alloca %"class.duckdb::RewriteCorrelatedExpressions", align 8 ; 5 uses
  %26 = alloca %"class.duckdb::vector.211", align 16 ; 14 uses
  %27 = alloca %"class.duckdb::vector.211", align 16 ; 8 uses
  %28 = alloca %"class.duckdb::vector.211", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %31 = alloca %"class.duckdb::unique_ptr.227", align 8 ; 8 uses
  %32 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %33 = alloca %"class.duckdb::vector.211", align 8 ; 10 uses
  %34 = alloca %"struct.duckdb::JoinCondition", align 8 ; 14 uses
  %35 = alloca %"class.duckdb::unique_ptr.151", align 8 ; 7 uses
  %36 = alloca %"class.duckdb::unique_ptr.151", align 8 ; 4 uses
  %37 = alloca %"class.duckdb::unique_ptr", align 8 ; 7 uses
  %38 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !75
  %cond = icmp eq i8 %i.f, 57
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br i1 %cond, label %bb.b, label %bb.gu

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(425) ptr @_ZN6duckdb15LogicalOperator4CastINS_20LogicalDependentJoinEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.g) ; 35 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  %.not467 = icmp eq ptr %i.j, null
  br i1 %.not467, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !91
  %.not.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %i.n, %bb.d ], [ %.sroa.06.0.i.i, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !55, !nonnull !50, !noundef !50 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92
  %i.q = icmp eq ptr %i.k, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit, label %bb.e, !llvm.loop !94

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 2 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95, !nonnull !50, !noundef !50
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !96
  %i.ad = icmp eq i64 %i.ac, %i.s
  %i.ae = load ptr, ptr %i.aa, align 8
  %i.af = icmp eq ptr %i.k, %i.ae
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv:bb.a
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !206

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

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(425) ptr @_ZN6duckdb15LogicalOperator4CastINS_20LogicalDependentJoinEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75
  %.not = icmp eq i8 %i.b, 57
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
define linkonce_odr noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !206

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

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21FlattenDependentJoins21PushDownDependentJoinENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEEbm(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef captures(none) %2, i1 noundef zeroext %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::RewriteCountAggregates", align 8 ; 5 uses
  %i.b = zext i1 %3 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !340
  %i.c = load i64, ptr %2, align 8, !tbaa !65
  store i64 %i.c, ptr %5, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !65     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.d) #22, !inline_history !69
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = load i64, ptr %i.h, align 8, !tbaa !341
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN6duckdb22RewriteCountAggregatesC1ERSt13unordered_mapINS_13ColumnBindingEmNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS2_mEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb22LogicalOperatorVisitor13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(97) %i.l)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !65     ; 2 uses
  %.not.i8 = icmp eq ptr %i.n, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10.sink.split

bb.h:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.o, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.q = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  %.not.i11 = icmp eq ptr %i.q, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10.sink.split

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %bb.f
  ret void

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10.sink.split: ; preds = %bb.j, %bb.g
  %.sink19 = phi ptr [ %i.n, %bb.g ], [ %i.q, %bb.j ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.m, %bb.g ], [ %.pn, %bb.j ]
  %i.r = load ptr, ptr %.sink19, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.sink19) #22
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10.sink.split, %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.m, %bb.g ], [ %.pn.pn.ph, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342
  %i.e = load ptr, ptr %0, align 8, !tbaa !343    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !46
  store i64 %i.i, ptr %i.b, align 8, !tbaa !46
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !344

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

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb28RewriteCorrelatedExpressions13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !345, !range !101, !noundef !50
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !75
  %i.f = icmp eq i8 %i.e, 57
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0)
  %i.i = tail call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = load ptr, ptr %0, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(97) %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !349
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !349
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
  %i.q = tail call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.r = load ptr, ptr %0, align 8, !tbaa !67
end_hunk_1
begin_hunk_2_@_ZN6duckdb21FlattenDependentJoins27DetectCorrelatedExpressionsERNS_15LogicalOperatorEbmb:_ZN6duckdb24HasCorrelatedExpressions13VisitOperatorERNS_15LogicalOperatorE.exit
  %.020.i.i.i.i177 = phi ptr [ %i.jw, %bb.an ], [ %i.jj, %bb.am ]
  %i.jw = load ptr, ptr %.020.i.i.i.i177, align 8, !tbaa !55 ; 5 uses
  %.not18.i.i.i.i178 = icmp eq ptr %i.jw, null
  br i1 %.not18.i.i.i.i178, label %.loopexit.i.i181, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i176
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
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
define internal fastcc void @_ZN6duckdbL25CreateDelimJoinConditionsERNS_21LogicalComparisonJoinERKNS_17CorrelatedColumnsENS_6vectorINS_13ColumnBindingELb1ESaIS6_EEEmb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %7 = alloca %"struct.duckdb::JoinCondition", align 8 ; 13 uses
  %8 = alloca %"class.duckdb::unique_ptr.217", align 8 ; 7 uses
  %9 = alloca %"class.duckdb::unique_ptr.217", align 8 ; 7 uses
  br i1 %4, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = load ptr, ptr %1, align 8, !tbaa !45
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 80
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = load ptr, ptr %1, align 8, !tbaa !45
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 80
  %i.q = icmp ult i64 %i.i, %i.p                  ; 2 uses
  %i.r = add nuw i64 %i.i, 1
  %spec.select = select i1 %i.q, i64 %i.r, i64 1
  %spec.select63 = select i1 %i.q, i64 %i.i, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.027 = phi i64 [ %i.g, %.thread ], [ %spec.select, %bb.b ] ; 2 uses
  %.026 = phi i64 [ 0, %.thread ], [ %spec.select63, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.026, %.027
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6duckdb13JoinConditionD2Ev.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb13JoinConditionD2Ev.exit
  %storemerge73 = phi i64 [ %.026, %.lr.ph ], [ %i.cb, %_ZN6duckdb13JoinConditionD2Ev.exit ] ; 5 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.ab = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 80                ; 2 uses
  %.not.i.i.i = icmp ult i64 %storemerge73, %i.af
  br i1 %.not.i.i.i, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %storemerge73, i64 noundef %i.af) #24
  unreachable

_ZNK6duckdb17CorrelatedColumnsixERKm.exit:        ; preds = %bb.d
  %i.ag = add i64 %storemerge73, %3               ; 2 uses
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !234
  %i.ai = load ptr, ptr %2, align 8, !tbaa !237
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4
  %.not = icmp ult i64 %i.ag, %i.am
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.an = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.u unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0, label %bb.j, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0, label %bb.j, label %bb.t

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3057 = phi { ptr, i32 } [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.an) #22
  br label %bb.t

bb.k:                                             ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.at = getelementptr inbounds nuw [80 x i8], ptr %i.ab, i64 %storemerge73 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  invoke void @_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERKNS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.217") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %8, align 8, !tbaa !379
  store ptr null, ptr %8, align 8, !tbaa !379
  %i.ax = load ptr, ptr %7, align 8, !tbaa !211   ; 3 uses
  store ptr %i.aw, ptr %7, align 8, !tbaa !211
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(88) %i.ax) #22, !inline_history !275
  %.pr = load ptr, ptr %8, align 8, !tbaa !379    ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bb = load ptr, ptr %.pr, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(112) %.pr) #22, !inline_history !381
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_13ColumnBindingELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERNS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.217") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %9, align 8, !tbaa !379
  store ptr null, ptr %9, align 8, !tbaa !379
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !211 ; 3 uses
  store ptr %i.bf, ptr %i.v, align 8, !tbaa !211
  %.not.i.i.i.i.i34 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i34, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit42, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39: ; preds = %bb.n
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(88) %i.bg) #22, !inline_history !275
  %.pr59 = load ptr, ptr %9, align 8, !tbaa !379  ; 3 uses
  %.not.i40 = icmp eq ptr %.pr59, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit42, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i41

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i41: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39
  %i.bk = load ptr, ptr %.pr59, align 8, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(112) %.pr59) #22, !inline_history !381
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit42

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit42: ; preds = %bb.n, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  store i8 40, ptr %i.w, align 8, !tbaa !281
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !335 ; 6 uses
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !336
  %.not.i.i = icmp eq ptr %i.bn, %i.bo
end_hunk_2
begin_hunk_3_@_ZN6duckdb15LogicalOperator4CastINS_10LogicalGetEEERT_v:bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10LogicalGet12GetColumnIdsEv(ptr noundef nonnull align 8 dereferenceable(1104)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(216) ptr @_ZN6duckdb15LogicalOperator4CastINS_19LogicalRecursiveCTEEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75
  %.not = icmp eq i8 %i.b, 78
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

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb20CorrelatedColumnInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #22
  ret void
}

declare void @_ZN6duckdb23LogicalOperatorToStringB5cxx11ENS_19LogicalOperatorTypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.627", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !857
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !857
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !860, !noalias !857 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !863, !noalias !857 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #23
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !864

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !860, !noalias !857
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #23
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !857
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !857
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !70     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !70     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb24HasCorrelatedExpressionsC2ERKNS_17CorrelatedColumnsEbm(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 10), (16, 32)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN6duckdb24HasCorrelatedExpressionsE, i64 16), ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !367
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.a, ptr %i.c, align 1, !tbaa !865
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.e, align 8, !tbaa !866
  ret void
}

declare void @_ZN6duckdb22LogicalOperatorVisitor24VisitOperatorExpressionsERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24HasCorrelatedExpressions12VisitReplaceERNS_24BoundColumnRefExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.151") align 8 captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2, ptr readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !867  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !866  ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %i.d, 1
  %i.f = icmp ugt i64 %i.b, %i.e
  br i1 %i.f, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !869, !nonnull !50, !align !51 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  %.not34 = icmp eq ptr %i.j, %i.k
  br i1 %.not34, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit._crit_edge, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.lr.ph

_ZNK6duckdb17CorrelatedColumnsixERKm.exit.lr.ph:  ; preds = %.preheader
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 80
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !352
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.s = load i64, ptr %i.r, align 8
  br label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !865, !range !101, !noundef !50
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.o unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.09 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !70     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.z) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.09, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.09, label %.sink.split, label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.o unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread: ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.sink.split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.08 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.ae) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.08, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.08, label %.sink.split, label %bb.n

bb.l:                                             ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.ah = add nuw i64 %storemerge32, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.o
  br i1 %exitcond.not, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit._crit_edge, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, !llvm.loop !870

_ZNK6duckdb17CorrelatedColumnsixERKm.exit:        ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.lr.ph, %bb.l
  %storemerge32 = phi i64 [ 0, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit.lr.ph ], [ %i.ah, %bb.l ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %storemerge32 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !352
  %i.ak = icmp eq i64 %i.aj, %i.q
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp eq i64 %i.am, %i.s
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit._crit_edge, label %bb.l

_ZNK6duckdb17CorrelatedColumnsixERKm.exit._crit_edge: ; preds = %bb.l, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, %.preheader
  %.lcssa = phi i8 [ 0, %.preheader ], [ 1, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit ], [ 0, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !367, !range !101, !noundef !50
  %i.ar = or i8 %i.aq, %.lcssa
  store i8 %i.ar, ptr %i.ap, align 8, !tbaa !367
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !279
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ]
  call void @__cxa_free_exception(ptr %i.w) #22
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19.pn = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.pn19.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn19.pn

bb.o:                                             ; preds = %bb.j, %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24HasCorrelatedExpressions12VisitReplaceERNS_23BoundSubqueryExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.151") align 8 captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !350
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !869, !nonnull !50, !align !51 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !45
  %.not13 = icmp eq ptr %i.j, %i.k
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %storemerge12 = phi i64 [ %i.af, %bb.d ], [ 0, %.preheader ] ; 4 uses
  %i.l = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !350
  %i.o = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !869, !nonnull !50, !align !51 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 80                  ; 2 uses
  %.not.i.i.i = icmp ult i64 %storemerge12, %i.w
  br i1 %.not.i.i.i, label %_ZNK6duckdb17CorrelatedColumnsixERKm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %storemerge12, i64 noundef %i.w) #24
  unreachable

_ZNK6duckdb17CorrelatedColumnsixERKm.exit:        ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !350
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.s, i64 %storemerge12
  %i.aa = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20CorrelatedColumnInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %i.n, ptr %i.y, ptr nonnull align 8 dereferenceable(80) %i.z)
  %i.ab = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !350
  %.not8 = icmp eq ptr %i.aa, %i.ad
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %i.ae, align 8, !tbaa !367
  br label %.loopexit

bb.d:                                             ; preds = %_ZNK6duckdb17CorrelatedColumnsixERKm.exit
  %i.af = add nuw i64 %storemerge12, 1            ; 2 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !869, !nonnull !50, !align !51 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 80
  %i.ao = icmp ult i64 %i.af, %i.an
  br i1 %i.ao, label %.lr.ph, label %.loopexit, !llvm.loop !871

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.c, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !279
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !872    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EE13AssertNotNullEb.exit, !prof !206

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
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

_ZN6duckdb10shared_ptrINS_6BinderELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb28RewriteCorrelatedExpressionsC2ENS_13ColumnBindingERSt13unordered_mapIS1_mNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS1_mEEEmb(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(41) initializes((0, 41)) %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %5 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN6duckdb28RewriteCorrelatedExpressionsE, i64 16), ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !873
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %4, ptr %i.d, align 8, !tbaa !349
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.a, ptr %i.e, align 8, !tbaa !345
  ret void
}

declare void @_ZN6duckdb22LogicalOperatorVisitor21VisitOperatorChildrenERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN6duckdb28RewriteCorrelatedExpressions12VisitReplaceERNS_24BoundColumnRefExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.151") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(41) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(112) %2, ptr readnone captures(none) %3) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !867  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !349
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !351, !nonnull !50, !align !51 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !341
  %.not.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = load i64, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !55, !nonnull !50, !noundef !50 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !352
  %i.p = icmp eq i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.m, %i.r
  %i.t = select i1 %i.p, i1 %i.s, i1 false
  br i1 %i.t, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, label %bb.d, !llvm.loop !353

bb.e:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.g, align 8, !tbaa !352  ; 3 uses
  %i.v = lshr i64 %i.u, 32
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, -2960836687051489901       ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -2960836687051489901      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !354 ; 3 uses
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, -2960836687051489901     ; 2 uses
  %i.ag = lshr i64 %i.af, 32
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, -2960836687051489901     ; 2 uses
  %i.aj = xor i64 %i.ai, %i.aa
  %i.ak = lshr i64 %i.aj, 32
  %i.al = xor i64 %i.aa, %i.ak
  %i.am = xor i64 %i.al, %i.ai                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ap = urem i64 %i.am, %i.ao                   ; 2 uses
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !95, !nonnull !50, !noundef !50
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i, %bb.e
  %i.au = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ %i.bg, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i ]
  %i.av = phi ptr [ %i.at, %bb.e ], [ %i.be, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i ] ; 4 uses
  %i.aw = icmp eq i64 %i.am, %i.au
  br i1 %i.aw, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i: ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !352
  %i.az = icmp eq i64 %i.u, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = icmp eq i64 %i.ac, %i.bb
  %i.bd = select i1 %i.az, i1 %i.bc, i1 false
  br i1 %i.bd, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.f
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !55, !nonnull !50, !noundef !50 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !96 ; 2 uses
  %i.bh = urem i64 %i.bg, %i.ao
  %.not19.i.i.i.i = icmp eq i64 %i.bh, %i.ap
  tail call void @llvm.assume(i1 %.not19.i.i.i.i)
  br label %bb.f

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.d
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.av, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !356
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !357
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !358
  %i.bo = add i64 %i.bn, %i.bl
  store i64 %i.bj, ptr %i.g, align 8, !tbaa !46
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 %i.bo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !345, !range !101, !noundef !50
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = add i64 %i.b, -1
  %storemerge = select i1 %i.br, i64 %i.bs, i64 0
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !867
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit
  store ptr null, ptr %0, align 8, !tbaa !279
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb28RewriteCorrelatedExpressions12VisitReplaceERNS_23BoundSubqueryExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.151") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::RewriteCorrelatedRecursive", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !350
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.b, label %_ZN6duckdb26RewriteCorrelatedRecursive25RewriteCorrelatedSubqueryERNS_6BinderERNS_15LogicalOperatorE.exit

_ZN6duckdb26RewriteCorrelatedRecursive25RewriteCorrelatedSubqueryERNS_6BinderERNS_15LogicalOperatorE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !351, !nonnull !50, !align !51
  call void @_ZN6duckdb26RewriteCorrelatedRecursiveC1ENS_13ColumnBindingERSt13unordered_mapIS1_mNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS1_mEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %i.i)
  %i.j = call noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.l = call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = load ptr, ptr %4, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(97) %i.l), !inline_history !874
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN6duckdb26RewriteCorrelatedRecursive25RewriteCorrelatedSubqueryERNS_6BinderERNS_15LogicalOperatorE.exit
  store ptr null, ptr %0, align 8, !tbaa !279
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26RewriteCorrelatedRecursive25RewriteCorrelatedSubqueryERNS_6BinderERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(97) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(97) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !872    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EE13AssertNotNullEb.exit, !prof !206

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
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

_ZN6duckdb10shared_ptrINS_6BinderELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb22LogicalOperatorVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb26RewriteCorrelatedRecursiveC2ENS_13ColumnBindingERSt13unordered_mapIS1_mNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS1_mEEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN6duckdb26RewriteCorrelatedRecursiveE, i64 16), ptr %0, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.b, align 8, !tbaa !873
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26RewriteCorrelatedRecursive13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75
  %i.c = icmp eq i8 %i.b, 57
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(425) ptr @_ZN6duckdb15LogicalOperator4CastINS_20LogicalDependentJoinEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %1) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !350  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
  %.not21 = icmp eq ptr %i.f, %i.h
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !875, !nonnull !50, !align !51 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread
  %.sroa.013.022 = phi ptr [ %i.f, %.lr.ph ], [ %i.br, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread ] ; 6 uses
  %i.p = load i64, ptr %i.k, align 8, !tbaa !341
  %.not.not.i.i = icmp eq i64 %i.p, 0
  %i.q = load i64, ptr %.sroa.013.022, align 8    ; 4 uses
  br i1 %.not.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 8
  %i.s = load i64, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %i.m, %bb.d ], [ %.sroa.06.0.i.i, %bb.f ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !55 ; 5 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !352
  %i.v = icmp eq i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.s, %i.x
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, label %bb.e, !llvm.loop !353

bb.g:                                             ; preds = %bb.c
  %i.aa = lshr i64 %i.q, 32
  %i.ab = xor i64 %i.aa, %i.q
  %i.ac = mul i64 %i.ab, -2960836687051489901     ; 2 uses
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, -2960836687051489901     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !354 ; 3 uses
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = mul i64 %i.aj, -2960836687051489901     ; 2 uses
  %i.al = lshr i64 %i.ak, 32
  %i.am = xor i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, -2960836687051489901     ; 2 uses
  %i.ao = xor i64 %i.an, %i.af
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = xor i64 %i.af, %i.ap
  %i.ar = xor i64 %i.aq, %i.an                    ; 2 uses
  %i.as = load i64, ptr %i.l, align 8, !tbaa !23  ; 2 uses
  %i.at = urem i64 %i.ar, %i.as                   ; 2 uses
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !96
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ay = phi i64 [ %.pre.i.i.i.i, %bb.h ], [ %i.bk, %bb.j ]
  %i.az = phi ptr [ %i.ax, %bb.h ], [ %i.bi, %bb.j ] ; 4 uses
  %i.ba = icmp eq i64 %i.ar, %i.ay
  br i1 %i.ba, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i: ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !352
  %i.bd = icmp eq i64 %i.q, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp eq i64 %i.ah, %i.bf
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.i
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !55 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !96 ; 2 uses
  %i.bl = urem i64 %i.bk, %i.as
  %.not19.i.i.i.i = icmp eq i64 %i.bl, %i.at
  br i1 %.not19.i.i.i.i, label %bb.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread, !llvm.loop !355

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.f ], [ %i.az, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i ]
  %i.bm = load i64, ptr %i.n, align 8, !tbaa !877
  %i.bn = load i64, ptr %i.o, align 8, !tbaa !878
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !358
  %i.bq = add i64 %i.bp, %i.bn
  store i64 %i.bm, ptr %.sroa.013.022, align 8, !tbaa !46
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 8
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !46
  br label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread: ; preds = %bb.j, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i, %bb.e, %bb.g, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.h
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread, %bb.b, %bb.a
  tail call void @_ZN6duckdb22LogicalOperatorVisitor13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(97) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26RewriteCorrelatedRecursive15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !879
  switch i8 %i.c, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread [
    i8 -28, label %bb.b
    i8 -81, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.a) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !867  ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !875, !nonnull !50, !align !51 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !341
  %.not.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i64, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.o = load i64, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %i.l, %bb.d ], [ %.sroa.06.0.i.i, %bb.f ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !55 ; 5 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !352
  %i.r = icmp eq i64 %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.o, %i.t
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, label %bb.e, !llvm.loop !353

bb.g:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4_@_ZN6duckdb26RewriteCorrelatedRecursive15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE:bb.a
  %i.ay = icmp eq i64 %i.ao, %i.aw
  br i1 %i.ay, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i: ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !352
  %i.bb = icmp eq i64 %i.w, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp eq i64 %i.ae, %i.bd
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.i
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !55 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !96 ; 2 uses
  %i.bj = urem i64 %i.bi, %i.aq
  %.not19.i.i.i.i = icmp eq i64 %i.bj, %i.ar
  br i1 %.not19.i.i.i.i, label %bb.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread, !llvm.loop !355

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.f ], [ %i.ax, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !877
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !878
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !358
  %i.bq = add i64 %i.bp, %i.bn
  store i64 %i.bl, ptr %i.i, align 8, !tbaa !46
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !46
  %i.br = add i64 %i.f, -1
  store i64 %i.br, ptr %i.e, align 8, !tbaa !867
  br label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread

bb.k:                                             ; preds = %bb.a
  %i.bs = tail call noundef nonnull align 8 dereferenceable(328) ptr @_ZN6duckdb14BaseExpression4CastINS_23BoundSubqueryExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.a) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.bu = tail call noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.bw = tail call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
  %i.bx = load ptr, ptr %0, align 8, !tbaa !67
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(97) %i.bw), !inline_history !874
  br label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread: ; preds = %bb.j, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i, %bb.e, %bb.a, %bb.g, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, %bb.k
  tail call void @_ZN6duckdb22LogicalOperatorVisitor15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !832
  %.not = icmp eq i8 %i.b, 28
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
define linkonce_odr noundef nonnull align 8 dereferenceable(328) ptr @_ZN6duckdb14BaseExpression4CastINS_23BoundSubqueryExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !832
  %.not = icmp eq i8 %i.b, 37
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %2)
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

declare void @_ZN6duckdb22LogicalOperatorVisitor15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb22RewriteCountAggregatesC2ERSt13unordered_mapINS_13ColumnBindingEmNS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS2_mEEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN6duckdb22RewriteCountAggregatesE, i64 16), ptr %0, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !873
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22RewriteCountAggregates12VisitReplaceERNS_24BoundColumnRefExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.151") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.151", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::unique_ptr.151", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::unique_ptr.151", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::unique_ptr.549", align 8 ; 9 uses
  %10 = alloca %"class.duckdb::unique_ptr.151", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !880, !nonnull !50, !align !51 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !341
  %.not.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.i = load i64, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !55 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !352
  %i.l = icmp eq i64 %i.g, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.i, %i.n
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, label %bb.c, !llvm.loop !353

bb.e:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.c, align 8, !tbaa !352  ; 3 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, -2960836687051489901       ; 2 uses
  %i.u = lshr i64 %i.t, 32
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -2960836687051489901       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.y = load i64, ptr %i.x, align 8, !tbaa !354  ; 3 uses
  %i.z = lshr i64 %i.y, 32
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, -2960836687051489901     ; 2 uses
  %i.ac = lshr i64 %i.ab, 32
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, -2960836687051489901     ; 2 uses
  %i.af = xor i64 %i.ae, %i.w
  %i.ag = lshr i64 %i.af, 32
  %i.ah = xor i64 %i.w, %i.ag
  %i.ai = xor i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %i.al = urem i64 %i.ai, %i.ak                   ; 2 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !96
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.aq = phi i64 [ %.pre.i.i.i.i, %bb.f ], [ %i.bc, %bb.h ]
  %i.ar = phi ptr [ %i.ap, %bb.f ], [ %i.ba, %bb.h ] ; 3 uses
  %i.as = icmp eq i64 %i.ai, %i.aq
  br i1 %i.as, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i: ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !352
  %i.av = icmp eq i64 %i.q, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.y, %i.ax
  %i.az = select i1 %i.av, i1 %i.ay, i1 false
  br i1 %i.az, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.g
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !55 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !96 ; 2 uses
  %i.bd = urem i64 %i.bc, %i.ak
  %.not19.i.i.i.i = icmp eq i64 %i.bd, %i.al
  br i1 %.not19.i.i.i.i, label %bb.g, label %.loopexit, !llvm.loop !355

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.be = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #25, !noalias !882 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 noundef zeroext 10)
          to label %bb.i unwind label %bb.j, !noalias !882

bb.i:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit
  invoke void @_ZN6duckdb23BoundOperatorExpressionC1ENS_14ExpressionTypeENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(112) %i.be, i8 noundef zeroext 14, ptr noundef nonnull %8)
          to label %_ZN6duckdb9make_uniqINS_23BoundOperatorExpressionEJNS_14ExpressionTypeERKNS_13LogicalTypeIdEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.k, !noalias !882

bb.j:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE4findERS5_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #22, !noalias !882
  br label %bb.l

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit47, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.l ], [ %.pn13.pn, %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit47 ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.k ], [ %i.bf, %bb.j ]
  call void @_ZdlPv(ptr noundef nonnull %i.be) #23, !noalias !882
  br label %common.resume

_ZN6duckdb9make_uniqINS_23BoundOperatorExpressionEJNS_14ExpressionTypeERKNS_13LogicalTypeIdEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.i
  store ptr %i.be, ptr %9, align 8, !tbaa !885, !alias.scope !882
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #22, !noalias !882
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23BoundOperatorExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.m unwind label %bb.w       ; 3 uses

bb.m:                                             ; preds = %_ZN6duckdb9make_uniqINS_23BoundOperatorExpressionEJNS_14ExpressionTypeERKNS_13LogicalTypeIdEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.bi = load ptr, ptr %2, align 8, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.151") align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 88 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 96 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !209 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 104 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !210
  %.not.i.i16 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i.i16, label %bb.o, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.n
  %i.bq = load i64, ptr %10, align 8, !tbaa !211
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !211
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !209
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !212 ; 10 uses
  %i.bt = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i.i17 = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i17)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #25
          to label %.noexc18 unwind label %bb.y   ; 10 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv
  %i.cf = load i64, ptr %10, align 8, !tbaa !211
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !211
  store ptr null, ptr %10, align 8, !tbaa !211
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.bn
end_hunk_4
begin_hunk_5_@_ZN6duckdb22RewriteCountAggregates12VisitReplaceERNS_24BoundColumnRefExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE:bb.a
_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.dl, ptr %0, align 8, !tbaa !279
  %i.el = load ptr, ptr %9, align 8, !tbaa !885   ; 3 uses
  %.not.i30 = icmp eq ptr %i.el, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit32, label %_ZNKSt14default_deleteIN6duckdb23BoundOperatorExpressionEEclEPS1_.exit.i31

_ZNKSt14default_deleteIN6duckdb23BoundOperatorExpressionEEclEPS1_.exit.i31: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !67
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(112) %i.el) #22, !inline_history !906
  br label %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit32: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb23BoundOperatorExpressionEEclEPS1_.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ac

bb.w:                                             ; preds = %_ZN6duckdb9make_uniqINS_23BoundOperatorExpressionEJNS_14ExpressionTypeERKNS_13LogicalTypeIdEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit44

bb.x:                                             ; preds = %bb.m
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit35

bb.y:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %10, align 8, !tbaa !211  ; 3 uses
  %.not.i33 = icmp eq ptr %i.es, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit35, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i34

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i34: ; preds = %bb.y
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !67
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(88) %i.es) #22, !inline_history !229
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit35

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit35: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i34, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.x ], [ %i.er, %bb.y ], [ %i.er, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit44

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.r
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.ex, %bb.aa ], [ %i.di, %bb.s ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #22
  br label %bb.ab

bb.ab:                                            ; preds = %.body, %bb.z
  %.pn11 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ew, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit41

.body22:                                          ; preds = %bb.t
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %.not.i36 = icmp eq i64 %i.dj, 0
  br i1 %.not.i36, label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i40, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i37

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i37: ; preds = %.body22
  %i.ez = load ptr, ptr %i.dk, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(88) %i.dk) #22, !inline_history !229
  br label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i40

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit41.thread: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i18.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit16.i
  call void @_ZdlPv(ptr noundef nonnull %i.dl) #23, !noalias !902
  br label %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit44

_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i40: ; preds = %.body22, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i37
  %i.fc = load ptr, ptr %i.dh, align 8, !tbaa !67
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(152) %i.dh) #22, !inline_history !671
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit41

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit41: ; preds = %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i40, %bb.ab
  %.pn13 = phi { ptr, i32 } [ %.pn11, %bb.ab ], [ %i.ey, %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i40 ] ; 2 uses
  %.not.i42 = icmp eq i64 %i.de, 0
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit44, label %_ZNKSt14default_deleteIN6duckdb23BoundOperatorExpressionEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN6duckdb23BoundOperatorExpressionEEclEPS1_.exit.i43: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit41
  %i.ff = load ptr, ptr %i.df, align 8, !tbaa !67
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(112) %i.df) #22, !inline_history !906
  br label %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit44

_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit44: ; preds = %_ZNKSt14default_deleteIN6duckdb23BoundOperatorExpressionEEclEPS1_.exit.i43, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit41, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit41.thread, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit35, %bb.w
  %.pn13.pn = phi { ptr, i32 } [ %i.ep, %bb.w ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit35 ], [ %i.dy, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit41.thread ], [ %.pn13, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit41 ], [ %.pn13, %_ZNKSt14default_deleteIN6duckdb23BoundOperatorExpressionEEclEPS1_.exit.i43 ]
  %i.fi = load ptr, ptr %9, align 8, !tbaa !885   ; 3 uses
  %.not.i45 = icmp eq ptr %i.fi, null
  br i1 %.not.i45, label %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit47, label %_ZNKSt14default_deleteIN6duckdb23BoundOperatorExpressionEEclEPS1_.exit.i46

_ZNKSt14default_deleteIN6duckdb23BoundOperatorExpressionEEclEPS1_.exit.i46: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit44
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !67
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(112) %i.fi) #22, !inline_history !906
  br label %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit47

_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit47: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit44, %_ZNKSt14default_deleteIN6duckdb23BoundOperatorExpressionEEclEPS1_.exit.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i, %bb.h, %bb.c, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !279
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %_ZNSt10unique_ptrIN6duckdb23BoundOperatorExpressionESt14default_deleteIS1_EED2Ev.exit32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_23BoundOperatorExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.55", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !885    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_23BoundOperatorExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !206

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

_ZN6duckdb10unique_ptrINS_23BoundOperatorExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb14RewriteCTEScanC2EmRKNS_17CorrelatedColumnsENS_18CTEScanRewriteModeE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN6duckdb14RewriteCTEScanE, i64 16), ptr %0, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !833
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.c, align 8, !tbaa !839
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL14ContainsCTERefERNS_15LogicalOperatorEm(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75
  %i.c = icmp eq i8 %i.b, 31
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(177) ptr @_ZN6duckdb15LogicalOperator4CastINS_13LogicalCTERefEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !383
  %.not = icmp eq i64 %i.f, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !339  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !339  ; 2 uses
  %.not1920 = icmp eq ptr %i.h, %i.j
  br i1 %.not1920, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.015.021 = phi ptr [ %i.m, %.lr.ph ], [ %i.h, %bb.c ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.015.021)
  %i.l = tail call fastcc noundef zeroext i1 @_ZN6duckdbL14ContainsCTERefERNS_15LogicalOperatorEm(ptr noundef nonnull align 8 dereferenceable(97) %i.k, i64 noundef %1) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8 ; 2 uses
  %.not19 = icmp eq ptr %i.m, %i.j
  %or.cond = select i1 %i.l, i1 true, i1 %.not19
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %.5 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ %i.l, %.lr.ph ]
  ret i1 %.5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb28RewriteCorrelatedExpressionsD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

declare void @_ZN6duckdb22LogicalOperatorVisitor23VisitExpressionChildrenERNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_24BoundAggregateExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_22BoundBetweenExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(114), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_19BoundCaseExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_19BoundCastExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_25BoundComparisonExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_26BoundConjunctionExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundConstantExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_22BoundDefaultExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundFunctionExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(481), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundOperatorExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_24BoundReferenceExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_24BoundParameterExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_21BoundWindowExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(296), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_21BoundUnnestExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb24HasCorrelatedExpressionsD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb22RewriteCountAggregatesD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_23BoundSubqueryExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(328), ptr noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14RewriteCTEScanD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

declare void @_ZN6duckdb22LogicalOperatorVisitor12VisitReplaceERNS_24BoundColumnRefExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.151") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb26RewriteCorrelatedRecursiveD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb20CorrelatedColumnInfoEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 56
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.b) #23
  br label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i

_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #22
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 80 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb20CorrelatedColumnInfoEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !74

_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb20CorrelatedColumnInfoEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERKNS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.217") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #25 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !203
  %i.d = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.f, ptr %i.a, align 8, !tbaa !46
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8, !tbaa !70
  %i.i = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.i, ptr %i.c, align 8, !tbaa !205
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNSt8__detail9_Map_baseIN6duckdb13ColumnBindingESt4pairIKS2_mESaIS5_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS2_:bb.a
  store i64 0, ptr %i.aq, align 8, !tbaa !358
  %i.ar = invoke ptr @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.v, i64 noundef %i.s, ptr noundef nonnull %i.ao, i64 noundef 1)
          to label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22: ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #23
  resume { ptr, i32 } %i.as

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i, %.loopexit
  %.pn = phi ptr [ %i.ar, %.loopexit ], [ %i.ab, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_mENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  ret ptr %.1
}

declare void @_ZN6duckdb25BoundComparisonExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(104), i8 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb26BoundConjunctionExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(112), i8 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

declare void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112), i64 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20CorrelatedColumnInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 80
  %i.e = ashr i64 %i.d, 2                         ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = load i64, ptr %2, align 8, !tbaa !352    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 4 uses
  %i.j = mul nuw nsw i64 %i.e, 320
  %scevgep = getelementptr i8, ptr %0, i64 %i.j   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.052 = phi i64 [ %i.e, %.lr.ph ], [ %i.am, %bb.f ] ; 2 uses
  %.sroa.032.051 = phi ptr [ %0, %.lr.ph ], [ %i.al, %bb.f ] ; 13 uses
  %i.k = load i64, ptr %.sroa.032.051, align 8, !tbaa !352
  %i.l = icmp eq i64 %i.k, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, %i.i
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !352
  %i.s = icmp eq i64 %i.r, %i.g
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 88
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.u, %i.i
  %i.w = select i1 %i.s, i1 %i.v, i1 false
  br i1 %i.w, label %.loopexit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 160
  %i.y = load i64, ptr %i.x, align 8, !tbaa !352
  %i.z = icmp eq i64 %i.y, %i.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 168
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp eq i64 %i.ab, %i.i
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %.loopexit.loopexit.split.loop.exit65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 240
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !352
  %i.ag = icmp eq i64 %i.af, %i.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 248
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %i.ai, %i.i
  %i.ak = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %i.ak, label %.loopexit.loopexit.split.loop.exit67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 320
  %i.am = add nsw i64 %.052, -1
  %i.an = icmp sgt i64 %.052, 1
  br i1 %i.an, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !970

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre62 = ptrtoint ptr %scevgep to i64
  %.pre63 = sub i64 %i.a, %.pre62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi64 = phi i64 [ %.pre63, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.032.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.ao = sdiv exact i64 %.pre-phi64, 80
  switch i64 %i.ao, label %.loopexit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge58
  ]

._crit_edge._crit_edge58:                         ; preds = %._crit_edge
  %.pre59 = load i64, ptr %2, align 8, !tbaa !352
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre61 = load i64, ptr %.phi.trans.insert60, align 8
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %2, align 8, !tbaa !352
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre57 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ap = load i64, ptr %.sroa.032.0.lcssa, align 8, !tbaa !352
  %i.aq = load i64, ptr %2, align 8, !tbaa !352   ; 2 uses
  %i.ar = icmp eq i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 8
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = icmp eq i64 %i.at, %i.av
  %i.ax = select i1 %i.ar, i1 %i.aw, i1 false
  br i1 %i.ax, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 80
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.az = phi i64 [ %i.av, %bb.h ], [ %.pre57, %._crit_edge._crit_edge ] ; 2 uses
  %i.ba = phi i64 [ %i.aq, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.032.1 = phi ptr [ %i.ay, %bb.h ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge ] ; 4 uses
  %i.bb = load i64, ptr %.sroa.032.1, align 8, !tbaa !352
  %i.bc = icmp eq i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 8
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = icmp eq i64 %i.be, %i.az
  %i.bg = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %i.bg, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 80
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge58, %bb.j
  %i.bi = phi i64 [ %i.az, %bb.j ], [ %.pre61, %._crit_edge._crit_edge58 ]
  %i.bj = phi i64 [ %i.ba, %bb.j ], [ %.pre59, %._crit_edge._crit_edge58 ]
  %.sroa.032.2 = phi ptr [ %i.bh, %bb.j ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge58 ] ; 3 uses
  %i.bk = load i64, ptr %.sroa.032.2, align 8, !tbaa !352
  %i.bl = icmp eq i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.2, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = icmp eq i64 %i.bn, %i.bi
  %i.bp = select i1 %i.bl, i1 %i.bo, i1 false
  %spec.select = select i1 %i.bp, ptr %.sroa.032.2, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 80
  br label %.loopexit

.loopexit.loopexit.split.loop.exit65:             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 160
  br label %.loopexit

.loopexit.loopexit.split.loop.exit67:             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 240
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit65, %.loopexit.loopexit.split.loop.exit67, %bb.k, %._crit_edge, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.032.1, %bb.i ], [ %spec.select, %bb.k ], [ %1, %._crit_edge ], [ %.sroa.032.0.lcssa, %bb.g ], [ %i.bs, %.loopexit.loopexit.split.loop.exit67 ], [ %i.bq, %.loopexit.loopexit.split.loop.exit ], [ %i.br, %.loopexit.loopexit.split.loop.exit65 ], [ %.sroa.032.051, %bb.b ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

declare void @_ZN6duckdb23BoundOperatorExpressionC1ENS_14ExpressionTypeENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(112), i8 noundef zeroext, ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb19BoundCaseExpressionC1ENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEES5_S5_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !837  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !971    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %10

10:                                               ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %10
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !203
  %i.k = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.m, ptr %i.a, align 8, !tbaa !46
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !70
  %i.p = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.p, ptr %i.j, align 8, !tbaa !205
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !205
  store i8 %i.r, ptr %i.q, align 1, !tbaa !205
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !204
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %13, %bb.e ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i.i, align 8, !tbaa !203, !alias.scope !972, !noalias !975
  %i.x = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !70, !alias.scope !975, !noalias !972 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !204, !alias.scope !975, !noalias !972 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !977
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.x, ptr %.012.i.i.i.i, align 8, !tbaa !70, !alias.scope !972, !noalias !975
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !205, !alias.scope !975, !noalias !972
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !205, !alias.scope !972, !noalias !975
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !204, !alias.scope !975, !noalias !972
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !204, !alias.scope !972, !noalias !975
  store ptr %i.y, ptr %.0911.i.i.i.i, align 8, !tbaa !70, !alias.scope !975, !noalias !972
  store i64 0, ptr %i.ag, align 8, !tbaa !204, !alias.scope !975, !noalias !972
  store i8 0, ptr %i.y, align 8, !tbaa !205, !alias.scope !975, !noalias !972
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !978

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %13, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33
  %.012.i.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i.i28, align 8, !tbaa !203, !alias.scope !979, !noalias !982
  %i.am = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !70, !alias.scope !982, !noalias !979 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !204, !alias.scope !982, !noalias !979 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !984
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i.i28, align 8, !tbaa !70, !alias.scope !979, !noalias !982
  %i.at = load i64, ptr %i.an, align 8, !tbaa !205, !alias.scope !982, !noalias !979
  store i64 %i.at, ptr %i.al, align 8, !tbaa !205, !alias.scope !979, !noalias !982
  %.phi.trans.insert.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %.pre.i.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i.i31, align 8, !tbaa !204, !alias.scope !982, !noalias !979
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !204, !alias.scope !979, !noalias !982
  store ptr %i.an, ptr %.0911.i.i.i.i29, align 8, !tbaa !70, !alias.scope !982, !noalias !979
  store i64 0, ptr %i.av, align 8, !tbaa !204, !alias.scope !982, !noalias !979
  store i8 0, ptr %i.an, align 8, !tbaa !205, !alias.scope !982, !noalias !979
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27, !llvm.loop !978

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %13, ptr %0, align 8, !tbaa !971
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !837
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %13, i64 %7
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !838
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = call ptr @__cxa_begin_catch(ptr %i.bd) #22 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %13) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bb

bb.l:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #27
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN6duckdb6BinderE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt10_HashtableISt17reference_wrapperIN6duckdb15LogicalOperatorEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE", !12, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!12 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!13 = !{!"any p2 pointer", !9, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!16 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !9, i64 0}
!17 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !18, i64 0, !14, i64 8}
!18 = !{!"float", !5, i64 0}
!19 = !{!11, !14, i64 8}
!20 = !{!17, !18, i64 0}
!21 = !{!22, !12, i64 0}
!22 = !{!"_ZTSSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE", !12, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!23 = !{!22, !14, i64 8}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN6duckdb17CorrelatedColumnsE", !9, i64 0}
!26 = !{!27, !37, i64 240}
!27 = !{!"_ZTSN6duckdb21FlattenDependentJoinsE", !8, i64 0, !28, i64 8, !14, i64 24, !14, i64 32, !29, i64 40, !30, i64 96, !30, i64 152, !25, i64 208, !31, i64 216, !37, i64 240, !37, i64 241, !38, i64 248}
!28 = !{!"_ZTSN6duckdb13ColumnBindingE", !14, i64 0, !14, i64 8}
!29 = !{!"_ZTSSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE", !11, i64 0}
!30 = !{!"_ZTSSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEE", !22, i64 0}
!31 = !{!"_ZTSN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEE", !32, i64 0}
!32 = !{!"_ZTSSt6vectorIN6duckdb11LogicalTypeESaIS1_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !9, i64 0}
!37 = !{!"bool", !5, i64 0}
!38 = !{!"_ZTSN6duckdb12optional_ptrINS_21FlattenDependentJoinsELb1EEE", !39, i64 0}
!39 = !{!"p1 _ZTSN6duckdb21FlattenDependentJoinsE", !9, i64 0}
!40 = !{!27, !37, i64 241}
!41 = !{!39, !39, i64 0}
!42 = !{!43, !44, i64 8}
!43 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20CorrelatedColumnInfoESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSN6duckdb20CorrelatedColumnInfoE", !9, i64 0}
!45 = !{!43, !44, i64 0}
!46 = !{!14, !14, i64 0}
!47 = !{!35, !36, i64 8}
!48 = !{!35, !36, i64 16}
!49 = !{!27, !25, i64 208}
!50 = !{}
!51 = !{i64 8}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!22, !16, i64 16}
!55 = !{!15, !16, i64 0}
!56 = distinct !{!56, !53}
!57 = !{!11, !16, i64 16}
!58 = distinct !{!58, !53}
!59 = !{!60, !14, i64 24}
!60 = !{!"_ZTSN6duckdb17CorrelatedColumnsE", !61, i64 0, !14, i64 24}
!61 = !{!"_ZTSN6duckdb6vectorINS_20CorrelatedColumnInfoELb1ESaIS1_EEE", !62, i64 0}
!62 = !{!"_ZTSSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN6duckdb20CorrelatedColumnInfoESaIS1_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20CorrelatedColumnInfoESaIS1_EE12_Vector_implE", !43, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 _ZTSN6duckdb15LogicalOperatorE", !9, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"vtable pointer", !6, i64 0}
!69 = distinct !{null, null}
!70 = !{!71, !73, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !72, i64 0, !14, i64 8, !5, i64 16}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !73, i64 0}
!73 = !{!"p1 omnipotent char", !9, i64 0}
!74 = distinct !{!74, !53}
!75 = !{!76, !77, i64 8}
!76 = !{!"_ZTSN6duckdb15LogicalOperatorE", !77, i64 8, !78, i64 16, !84, i64 40, !31, i64 64, !14, i64 88, !37, i64 96}
!77 = !{!"_ZTSN6duckdb19LogicalOperatorTypeE", !5, i64 0}
!78 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !79, i64 0}
!79 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!83 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEE", !9, i64 0}
!84 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !85, i64 0}
!85 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEE", !9, i64 0}
!90 = !{!38, !39, i64 0}
!91 = !{!11, !14, i64 24}
!92 = !{!93, !66, i64 0}
!93 = !{!"_ZTSSt17reference_wrapperIN6duckdb15LogicalOperatorEE", !66, i64 0}
!94 = distinct !{!94, !53}
!95 = !{!16, !16, i64 0}
!96 = !{!97, !14, i64 0}
!97 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !14, i64 0}
!98 = distinct !{!98, !53}
!99 = !{!100, !37, i64 8}
!100 = !{!"_ZTSSt4pairIKSt17reference_wrapperIN6duckdb15LogicalOperatorEEbE", !93, i64 0, !37, i64 8}
!101 = !{i8 0, i8 2}
!102 = distinct !{null, null, null, null, null, null}
!103 = !{!27, !8, i64 0}
!104 = !{!105, !37, i64 321}
!105 = !{!"_ZTSN6duckdb20LogicalDependentJoinE", !106, i64 0, !135, i64 280, !60, i64 288, !143, i64 320, !37, i64 321, !37, i64 322, !37, i64 323, !37, i64 324, !84, i64 328, !84, i64 352, !31, i64 376, !31, i64 400, !144, i64 424}
!106 = !{!"_ZTSN6duckdb21LogicalComparisonJoinE", !107, i64 0, !121, i64 184, !31, i64 208, !84, i64 232, !37, i64 256, !37, i64 257, !127, i64 264, !135, i64 272}
!107 = !{!"_ZTSN6duckdb11LogicalJoinE", !76, i64 0, !108, i64 97, !14, i64 104, !109, i64 112, !109, i64 136, !115, i64 160}
!108 = !{!"_ZTSN6duckdb8JoinTypeE", !5, i64 0}
!109 = !{!"_ZTSN6duckdb6vectorImLb1ESaImEEE", !110, i64 0}
!110 = !{!"_ZTSSt6vectorImSaImEE", !111, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseImSaImEE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !113, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!114 = !{!"p1 long", !9, i64 0}
!115 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !116, i64 0}
!116 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE", !117, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE", !118, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !119, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!120 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEE", !9, i64 0}
!121 = !{!"_ZTSN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEE", !122, i64 0}
!122 = !{!"_ZTSSt6vectorIN6duckdb13JoinConditionESaIS1_EE", !123, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseIN6duckdb13JoinConditionESaIS1_EE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIN6duckdb13JoinConditionESaIS1_EE12_Vector_implE", !125, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIN6duckdb13JoinConditionESaIS1_EE17_Vector_impl_dataE", !126, i64 0, !126, i64 8, !126, i64 16}
!126 = !{!"p1 _ZTSN6duckdb13JoinConditionE", !9, i64 0}
!127 = !{!"_ZTSN6duckdb10unique_ptrINS_22JoinFilterPushdownInfoESt14default_deleteIS1_ELb1EEE", !128, i64 0}
!128 = !{!"_ZTSSt10unique_ptrIN6duckdb22JoinFilterPushdownInfoESt14default_deleteIS1_EE", !129, i64 0}
!129 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb22JoinFilterPushdownInfoESt14default_deleteIS1_ELb1ELb1EE", !130, i64 0}
!130 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb22JoinFilterPushdownInfoESt14default_deleteIS1_EE", !131, i64 0}
!131 = !{!"_ZTSSt5tupleIJPN6duckdb22JoinFilterPushdownInfoESt14default_deleteIS1_EEE", !132, i64 0}
!132 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb22JoinFilterPushdownInfoESt14default_deleteIS1_EEE", !133, i64 0}
!133 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb22JoinFilterPushdownInfoELb0EE", !134, i64 0}
!134 = !{!"p1 _ZTSN6duckdb22JoinFilterPushdownInfoE", !9, i64 0}
!135 = !{!"_ZTSN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEE", !136, i64 0}
!136 = !{!"_ZTSSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EE", !137, i64 0}
!137 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb10ExpressionESt14default_deleteIS1_ELb1ELb1EE", !138, i64 0}
end_hunk_6
