Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sort-builtins?download=true
inline.NumInlined: 1749
inline.NumDeleted: 910
begin_hunk_0_@_ZN2v88internal14BuiltinsSorter12SortBuiltinsEPKcRKSt6vectorIjSaIjEE:bb.a
  store ptr %i.ff, ptr %i.cw, align 8
  store ptr %i.cw, ptr %i.ab, align 8
  %.not11.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not11.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i64, ptr %i.aa, align 8
  %i.fi = load i32, ptr %i.fg, align 4
  %i.fj = sext i32 %i.fi to i64
  %i.fk = urem i64 %i.fj, %i.fh
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fk
  store ptr %i.cw, ptr %i.fl, align 8
  %.pre.i = load ptr, ptr %4, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fm = phi ptr [ %.pre.i, %bb.ag ], [ %i.fa, %bb.af ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.0.i18.i
  store ptr %i.ab, ptr %i.fn, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.fo = load i64, ptr %i.ai, align 8
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr %i.ai, align 8
  br label %bb.aj

_ZNKSt10_HashtableIN2v88internal7BuiltinES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit.i: ; preds = %bb.q, %bb.o, %bb.p
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 16) #21
  br label %bb.aj

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.e
  store ptr %i.bf, ptr %0, align 8
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #19
  unreachable

bb.aj:                                            ; preds = %bb.ai, %_ZNKSt10_HashtableIN2v88internal7BuiltinES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit.i
  %i.fq = add nuw i64 %.033, 1                    ; 2 uses
  %i.fr = load ptr, ptr %i.ar, align 8
  %i.fs = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2
  %i.fx = icmp ult i64 %i.fq, %i.fw
  br i1 %i.fx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !50

bb.ak:                                            ; preds = %.preheader
  %i.fy = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal7BuiltinES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.fz, %.lr.ph.i.i.i.i ], [ %i.fy, %bb.ak ] ; 2 uses
  %i.fz = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #21
  %.not.i.i.i.i15 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i15, label %_ZNSt10_HashtableIN2v88internal7BuiltinES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !51

_ZNSt10_HashtableIN2v88internal7BuiltinES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ak
  %i.ga = load ptr, ptr %4, align 8
  %i.gb = load i64, ptr %i.aa, align 8
  %i.gc = shl i64 %i.gb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ga, i8 0, i64 %i.gc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.gd = load ptr, ptr %4, align 8               ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.z
  br i1 %i.ge, label %_ZNSt13unordered_setIN2v88internal7BuiltinESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt10_HashtableIN2v88internal7BuiltinES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.gf = load i64, ptr %i.aa, align 8
  %i.gg = shl i64 %i.gf, 3
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #21
  br label %_ZNSt13unordered_setIN2v88internal7BuiltinESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit

_ZNSt13unordered_setIN2v88internal7BuiltinESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN2v88internal7BuiltinES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.02035 = phi i32 [ %i.gi, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.gh = call noundef zeroext i1 @_ZN2v88internal24AddBuiltinIfNotProcessedENS0_7BuiltinERSt6vectorIS1_SaIS1_EERSt13unordered_setIS1_St4hashIS1_ESt8equal_toIS1_ES3_E(i32 noundef %.02035, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %4) ; 0 uses
  %i.gi = add nuw nsw i32 %.02035, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.gi, 2141
  br i1 %exitcond.not, label %bb.ak, label %.preheader, !llvm.loop !52
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_St13unordered_mapIS2_NS1_15CallProbabilityESt4hashIS2_ESt8equal_toIS2_ESaIS3_IS4_S6_EEEESaISE_ENSt8__detail10_Select1stESA_S8_NSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_St13unordered_mapIS2_NS1_15CallProbabilityESt4hashIS2_ESt8equal_toIS2_ESaIS3_IS4_S6_EEEESaISE_ENSt8__detail10_Select1stESA_S8_NSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal7BuiltinESt13unordered_mapIS5_NS4_15CallProbabilityESt4hashIS5_ESt8equal_toIS5_ESaIS2_IS6_S8_EEEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal7BuiltinESt13unordered_mapIS5_NS4_15CallProbabilityESt4hashIS5_ESt8equal_toIS5_ESaIS2_IS6_S8_EEEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_NS1_15CallProbabilityEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i ] ; 2 uses
  %i.g = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i, i64 noundef 24) #21
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_NS1_15CallProbabilityEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !6

_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_NS1_15CallProbabilityEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal7BuiltinESt13unordered_mapIS5_NS4_15CallProbabilityESt4hashIS5_ESt8equal_toIS5_ESaIS2_IS6_S8_EEEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_NS1_15CallProbabilityEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i
  %i.o = load i64, ptr %i.i, align 8
  %i.p = shl i64 %i.o, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal7BuiltinESt13unordered_mapIS5_NS4_15CallProbabilityESt4hashIS5_ESt8equal_toIS5_ESaIS2_IS6_S8_EEEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal7BuiltinESt13unordered_mapIS5_NS4_15CallProbabilityESt4hashIS5_ESt8equal_toIS5_ESaIS2_IS6_S8_EEEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i: ; preds = %bb.b, %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_NS1_15CallProbabilityEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 72) #21
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_St13unordered_mapIS2_NS1_15CallProbabilityESt4hashIS2_ESt8equal_toIS2_ESaIS3_IS4_S6_EEEESaISE_ENSt8__detail10_Select1stESA_S8_NSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !53

_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_St13unordered_mapIS2_NS1_15CallProbabilityESt4hashIS2_ESt8equal_toIS2_ESaIS3_IS4_S6_EEEESaISE_ENSt8__detail10_Select1stESA_S8_NSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal7BuiltinESt13unordered_mapIS5_NS4_15CallProbabilityESt4hashIS5_ESt8equal_toIS5_ESaIS2_IS6_S8_EEEELb0EEEEE18_M_deallocate_nodeEPSH_.exit.i.i, %bb.a
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = shl i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.t, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_St13unordered_mapIS2_NS1_15CallProbabilityESt4hashIS2_ESt8equal_toIS2_ESaIS3_IS4_S6_EEEESaISE_ENSt8__detail10_Select1stESA_S8_NSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_St13unordered_mapIS2_NS1_15CallProbabilityESt4hashIS2_ESt8equal_toIS2_ESaIS3_IS4_S6_EEEESaISE_ENSt8__detail10_Select1stESA_S8_NSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  %i.x = load i64, ptr %i.r, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #21
  br label %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_St13unordered_mapIS2_NS1_15CallProbabilityESt4hashIS2_ESt8equal_toIS2_ESaIS3_IS4_S6_EEEESaISE_ENSt8__detail10_Select1stESA_S8_NSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_St13unordered_mapIS2_NS1_15CallProbabilityESt4hashIS2_ESt8equal_toIS2_ESaIS3_IS4_S6_EEEESaISE_ENSt8__detail10_Select1stESA_S8_NSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_St13unordered_mapIS2_NS1_15CallProbabilityESt4hashIS2_ESt8equal_toIS2_ESaIS3_IS4_S6_EEEESaISE_ENSt8__detail10_Select1stESA_S8_NSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEET_SF_SF_T0_.exit"
  %i.h = icmp eq i64 %i.cq, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dp, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.ak, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load i64, ptr %i.s, align 4 ; 2 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.036.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.036.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.x
  %.val.i.i.us.i.i.i = load i32, ptr %i.w, align 4
  %.val1.i.i.us.i.i.i = load i32, ptr %i.y, align 4
  %i.z = icmp ugt i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ab = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.us.i.i.i
  %i.ac = load i64, ptr %i.aa, align 4
  store i64 %i.ac, ptr %i.ab, align 4
  %i.ad = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !55

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %.sroa.03.0.extract.trunc.i.i.us.i.i.i = trunc i64 %.sroa.03.0.copyload.us.i.i.i to i32
  br label %.lr.ph.i.i.us.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %bb.c, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i ; 2 uses
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.ae, align 4
  %i.af = icmp ugt i32 %.val.i.i.i.us.i.i.i, %.sroa.03.0.extract.trunc.i.i.us.i.i.i
  br i1 %i.af, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  %i.ah = load i64, ptr %i.ae, align 4
  store i64 %i.ah, ptr %i.ag, align 4
  %i.ai = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", !llvm.loop !56

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %.sroa.03.0.copyload.us.i.i.i, ptr %i.aj, align 4
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.ak = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !57

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bg, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.al, align 4 ; 2 uses
  %i.am = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.am, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.an = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ao
  %i.aq = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.aq
  %.val.i.i.i.i.i = load i32, ptr %i.ap, align 4
  %.val1.i.i.i.i.i = load i32, ptr %i.ar, align 4
  %i.as = icmp ugt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.as, i64 %i.aq, i64 %i.ao ; 4 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.au = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i.i
  %i.av = load i64, ptr %i.at, align 4
  store i64 %i.av, ptr %i.au, align 4
  %i.aw = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !55

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ax = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = load i64, ptr %i.q, align 4
  store i64 %i.ay, ptr %i.r, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i to i32
  %i.az = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.az, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.ba, align 4
  %i.bb = icmp ugt i32 %.val.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  br i1 %i.bb, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  %i.bd = load i64, ptr %i.ba, align 4
  store i64 %i.bd, ptr %i.bc, align 4
  %i.be = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.be, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !56

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.bf, align 4
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bg = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !57

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i26.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bh, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_RT0_.exit.i.i" ]
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.bh, align 4 ; 2 uses
  %i.bi = load i64, ptr %.fr27, align 4
  store i64 %i.bi, ptr %i.bh, align 4
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bj, %i.a                     ; 3 uses
  %i.bl = ashr exact i64 %i.bk, 3                 ; 3 uses
  %i.bm = add nsw i64 %i.bl, -1
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = icmp sgt i64 %i.bl, 2
  br i1 %i.bo, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.036.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bp = shl i64 %.036.i.i.i20.i, 1              ; 2 uses
  %i.bq = add i64 %i.bp, 2                        ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bq
  %i.bs = or disjoint i64 %i.bp, 1                ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bs
  %.val.i.i.i.i21.i = load i32, ptr %i.br, align 4
  %.val1.i.i.i.i22.i = load i32, ptr %i.bt, align 4
  %i.bu = icmp ugt i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.bu, i64 %i.bs, i64 %i.bq ; 4 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i23.i
  %i.bw = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i20.i
  %i.bx = load i64, ptr %i.bv, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %i.by = icmp slt i64 %spec.select.i.i.i23.i, %i.bn
  br i1 %i.by, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !55

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.bz = and i64 %i.bk, 8
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.cb = add nsw i64 %i.bl, -2
  %i.cc = ashr exact i64 %i.cb, 1
  %i.cd = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.cc
  br i1 %i.cd, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.ce = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i12.i
  %i.ci = load i64, ptr %i.cg, align 4
  store i64 %i.ci, ptr %i.ch, align 4
  br label %.lr.ph.i.i.preheader.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.1.i11.i.i.i = phi i64 [ %i.cf, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.h ]
  %.sroa.03.0.extract.trunc.i.i12.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i32
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.i, %.lr.ph.i.i.preheader.i.i.i
  %.010.i.i.i.i15.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.1.i11.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i17.i = load i32, ptr %i.cj, align 4
  %i.ck = icmp ugt i32 %.val.i.i.i.i.i17.i, %.sroa.03.0.extract.trunc.i.i12.i.i.i
  br i1 %i.ck, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.cl = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  %i.cm = load i64, ptr %i.cj, align 4
  store i64 %i.cm, ptr %i.cl, align 4
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i, !llvm.loop !56

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.cn = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i18.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cn, align 4
  %i.co = icmp sgt i64 %i.bk, 8
  br i1 %i.co, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !58

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2445 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02544 = phi i64 [ %i.cq, %bb.b ], [ %2, %.lr.ph ]
  %i.cp = phi i64 [ %i.dq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cq = add nsw i64 %.02544, -1                 ; 3 uses
  %i.cr = lshr i64 %i.cp, 1
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.cr ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %storemerge2445, i64 -8 ; 5 uses
  %.val.i.i.i = load i32, ptr %i.f, align 4       ; 3 uses
  %.val1.i.i.i = load i32, ptr %i.cs, align 4     ; 3 uses
  %i.cu = icmp ugt i32 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i32, ptr %i.ct, align 4   ; 4 uses
  br i1 %i.cu, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.cv = icmp ugt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cw = load i64, ptr %.fr27, align 4
  %i.cx = load i64, ptr %i.cs, align 4
  store i64 %i.cx, ptr %.fr27, align 4
  store i64 %i.cw, ptr %i.cs, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cy = icmp ugt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.cz = load i64, ptr %.fr27, align 4           ; 2 uses
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = load i64, ptr %i.ct, align 4
  store i64 %i.da, ptr %.fr27, align 4
  store i64 %i.cz, ptr %i.ct, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.db = load i64, ptr %i.f, align 4
  store i64 %i.db, ptr %.fr27, align 4
  store i64 %i.cz, ptr %i.f, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.dc = icmp ugt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dd = load <2 x i64>, ptr %.fr27, align 4
  %i.de = shufflevector <2 x i64> %i.dd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.de, ptr %.fr27, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.df = icmp ugt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.dg = load i64, ptr %.fr27, align 4           ; 2 uses
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = load i64, ptr %i.ct, align 4
  store i64 %i.dh, ptr %.fr27, align 4
  store i64 %i.dg, ptr %i.ct, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.di = load i64, ptr %i.cs, align 4
  store i64 %i.di, ptr %.fr27, align 4
  store i64 %i.dg, ptr %i.cs, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.dk, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2445, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %.fr27, align 4  ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.dk, %bb.t ] ; 9 uses
  %.val.i.i14.i = load i32, ptr %.sroa.014.1.i.i, align 4
  %i.dj = icmp ugt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.dj, label %bb.t, label %.preheader.i.i, !llvm.loop !59

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %.val1.i11.i.i = load i32, ptr %.sroa.0.1.i.i, align 4
  %i.dl = icmp ugt i32 %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.dl, label %.preheader.i.i, label %bb.u, !llvm.loop !60

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEET_SF_SF_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.dm = load i64, ptr %.sroa.014.1.i.i, align 4
  %i.dn = load i64, ptr %.sroa.0.1.i.i, align 4
  store i64 %i.dn, ptr %.sroa.014.1.i.i, align 4
  store i64 %i.dm, ptr %.sroa.0.1.i.i, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !61

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2445, i64 noundef %i.cq)
  %i.do = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.dp = sub i64 %i.do, %i.a                     ; 2 uses
  %i.dq = ashr exact i64 %i.dp, 3                 ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, 16
  br i1 %i.dr, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !54

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal14BuiltinsSorter18BuiltinDensitySlotESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18InitializeClustersEvE3$_0EEEvT_SF_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEET_SG_SG_T0_.exit"
  %i.h = icmp eq i64 %i.cz, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dw, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.an, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = load ptr, ptr %i.z, align 8
  %.val.i.i.us.i.i.i = load i32, ptr %i.aa, align 8
  %.val1.i.i.us.i.i.i = load i32, ptr %i.ab, align 8
  %i.ac = icmp ugt i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ag, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !63

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %.val.val.i.i.us.i.i.i = load i32, ptr %i.t, align 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.ai, align 8
  %i.aj = icmp ugt i32 %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.aj, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", !llvm.loop !64

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.am, align 8
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.an = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !65

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bm, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ar = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.as
  %i.au = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.au
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = load ptr, ptr %i.av, align 8
  %.val.i.i.i.i.i = load i32, ptr %i.aw, align 8
  %.val1.i.i.i.i.i = load i32, ptr %i.ax, align 8
  %i.ay = icmp ugt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ay, i64 %i.au, i64 %i.as ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !63

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load ptr, ptr %i.q, align 8
  store ptr %i.be, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %.val.val.i.i.i.i.i = load i32, ptr %i.ap, align 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.bh, align 8
  %i.bi = icmp ugt i32 %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bi, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bh, ptr %i.bj, align 8
  %i.bk = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !64

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.ap, ptr %i.bl, align 8
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bm = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !65

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bn, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_RT0_.exit.i.i" ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = load ptr, ptr %.fr29, align 8
  store ptr %i.bp, ptr %i.bn, align 8
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 3 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 3 uses
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = lshr i64 %i.bt, 1
  %i.bv = icmp sgt i64 %i.bs, 2
  br i1 %i.bv, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bw = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.bx = add i64 %i.bw, 2                        ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bx
  %i.bz = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bz
  %i.cb = load ptr, ptr %i.by, align 8
  %i.cc = load ptr, ptr %i.ca, align 8
  %.val.i.i.i.i21.i = load i32, ptr %i.cb, align 8
  %.val1.i.i.i.i22.i = load i32, ptr %i.cc, align 8
  %i.cd = icmp ugt i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cd, i64 %i.bz, i64 %i.bx ; 4 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = icmp slt i64 %spec.select.i.i.i23.i, %i.bu
  br i1 %i.ch, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !63

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.ci = and i64 %i.br, 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.ck = add nsw i64 %i.bs, -2
  %i.cl = ashr exact i64 %i.ck, 1
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cl
  br i1 %i.cm, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cn = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.cq, ptr %i.cr, align 8
  br label %.lr.ph.i.i.i.i13.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i.preheader

.lr.ph.i.i.i.i13.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i14.i.ph = phi i64 [ %.0.lcssa.i.i.i11.i, %bb.h ], [ %i.co, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %.lr.ph.i.i.i.i13.i.preheader, %bb.i
  %.010.i.i.i.i14.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i14.i.ph, %.lr.ph.i.i.i.i13.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i56.i.i.i
  %.val.val.i.i.i.i16.i = load i32, ptr %i.bo, align 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.val.i.i.i.i.i17.i = load i32, ptr %i.ct, align 8
  %i.cu = icmp ugt i32 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i16.i
  br i1 %i.cu, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i13.i
  %i.cv = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i14.i
  store ptr %i.ct, ptr %i.cv, align 8
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i, !llvm.loop !64

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i13.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i14.i, %.lr.ph.i.i.i.i13.i ], [ 0, %bb.i ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bo, ptr %i.cw, align 8
  %i.cx = icmp sgt i64 %i.br, 8
  br i1 %i.cx, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !66

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.cz, %bb.b ], [ %2, %.lr.ph ]
  %i.cy = phi i64 [ %i.dx, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cz = add nsw i64 %.02752, -1                 ; 3 uses
  %i.da = lshr i64 %i.cy, 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dd = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.de = load ptr, ptr %i.db, align 8            ; 3 uses
  %.val.i.i.i = load i32, ptr %i.dd, align 8      ; 3 uses
  %.val1.i.i.i = load i32, ptr %i.de, align 8     ; 3 uses
  %i.df = icmp ugt i32 %.val.i.i.i, %.val1.i.i.i
  %i.dg = load ptr, ptr %i.dc, align 8            ; 3 uses
  %.val1.i27.i.i = load i32, ptr %i.dg, align 8   ; 4 uses
  br i1 %i.df, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph54
  %i.dh = icmp ugt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.di = load ptr, ptr %.fr29, align 8
  store ptr %i.de, ptr %.fr29, align 8
  store ptr %i.di, ptr %i.db, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dj = icmp ugt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dk = load ptr, ptr %.fr29, align 8           ; 2 uses
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.dg, ptr %.fr29, align 8
  store ptr %i.dk, ptr %i.dc, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store ptr %i.dd, ptr %.fr29, align 8
  store ptr %i.dk, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph54
  %i.dl = icmp ugt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = load ptr, ptr %.fr29, align 8
  store ptr %i.dd, ptr %.fr29, align 8
  store ptr %i.dm, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.dn = icmp ugt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.do = load ptr, ptr %.fr29, align 8           ; 2 uses
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.dg, ptr %.fr29, align 8
  store ptr %i.do, ptr %i.dc, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store ptr %i.de, ptr %.fr29, align 8
  store ptr %i.do, ptr %i.db, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.ds, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %i.dp = load ptr, ptr %.fr29, align 8
  %.val1.i.i13.i = load i32, ptr %i.dp, align 8   ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.ds, %bb.t ] ; 8 uses
  %i.dq = load ptr, ptr %.sroa.014.1.i.i, align 8 ; 2 uses
  %.val.i.i14.i = load i32, ptr %i.dq, align 8
  %i.dr = icmp ugt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.dr, label %bb.t, label %.preheader.i.i, !llvm.loop !67

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.dt = load ptr, ptr %.sroa.0.1.i.i, align 8   ; 2 uses
  %.val1.i11.i.i = load i32, ptr %i.dt, align 8
  %i.du = icmp ugt i32 %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.du, label %.preheader.i.i, label %bb.u, !llvm.loop !68

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEET_SG_SG_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store ptr %i.dt, ptr %.sroa.014.1.i.i, align 8
  store ptr %i.dq, ptr %.sroa.0.1.i.i, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !69

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2653, i64 noundef %i.cz)
  %i.dv = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.dw = sub i64 %i.dv, %i.a                     ; 2 uses
  %i.dx = ashr exact i64 %i.dw, 3                 ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, 16
  br i1 %i.dy, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !62

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_SG_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN2v88internal7ClusterESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14BuiltinsSorter12SortClustersEvE3$_0EEEvT_SG_RT0_.exit.i.i"
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN2v88internal7BuiltinESt4pairIKS3_PNS2_7ClusterEESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.a, %i.k
  br i1 %i.l, label %.loopexit30, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.a, %i.p
  br i1 %i.m, label %.loopexit30, label %.lr.ph.i.i, !llvm.loop !9

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = urem i64 %i.q, %i.d
  %.not19.i.i = icmp eq i64 %i.r, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !9

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.s = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %1, align 4
  store i32 %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 noundef %i.x, i64 noundef %i.z, i64 noundef 1) #22 ; 2 uses
  %i.ab = extractvalue { i8, i64 } %i.aa, 0
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ad = extractvalue { i8, i64 } %i.aa, 1
  tail call void @_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad)
  %i.ae = load i64, ptr %i.c, align 8
  %i.af = urem i64 %i.b, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0.i19 = phi i64 [ %i.af, %bb.e ], [ %i.e, %.loopexit ] ; 2 uses
  %i.ag = load ptr, ptr %0, align 8               ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.0.i19
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8
  store ptr %i.aj, ptr %i.s, align 8
  store ptr %i.s, ptr %i.ai, align 8
  br label %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  store ptr %i.al, ptr %i.s, align 8
  store ptr %i.s, ptr %i.ak, align 8
  %.not11.i.i = icmp eq ptr %i.al, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.c, align 8
  %i.ao = load i32, ptr %i.am, align 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = urem i64 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq
  store ptr %i.s, ptr %i.ar, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = phi ptr [ %.pre, %bb.i ], [ %i.ag, %bb.h ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i19
  store ptr %i.ak, ptr %i.at, align 8
  br label %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.au = load i64, ptr %i.y, align 8
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.y, align 8
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.s, %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal7BuiltinEPNS4_7ClusterEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal7BuiltinEPNS4_7ClusterEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal7BuiltinEPNS4_7ClusterEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal7BuiltinEPNS4_7ClusterEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIN2v88internal7BuiltinESt4pairIKS2_PNS1_7ClusterEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.02530, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.02530, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
end_hunk_0
