Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/inputhandler?download=true
inline.NumInlined: 1164
inline.NumDeleted: 481
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN15MyEventReceiver17reloadKeybindingsEv:._crit_edge.i.i

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %bb.gz
  %.1.i690 = phi i64 [ %.031.i, %bb.hb ], [ %i.aoe, %bb.ha ], [ %i.aoe, %bb.gz ]
  %.not.i691 = icmp eq ptr %i.anz, null
  br i1 %.not.i691, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %bb.hc, %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
  %i.aom = load ptr, ptr %i.wv, align 8, !tbaa !41 ; 2 uses
  %i.aon = icmp eq ptr %i.aom, %i.xg
  br i1 %i.aon, label %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i, label %bb.hd

bb.hd:                                            ; preds = %._crit_edge.i
  %i.aoo = load i64, ptr %i.xa, align 8, !tbaa !42
  %i.aop = shl i64 %i.aoo, 3
  call void @_ZdlPvm(ptr noundef %i.aom, i64 noundef %i.aop) #20
  br label %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i

.loopexit:                                        ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK8KeyPressN7KeyType1TEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.he

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i, %.noexc7.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.he

bb.he:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aoq = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.aor = call ptr @__cxa_begin_catch(ptr %i.aoq) #19 ; 0 uses
  store i64 %i.anm, ptr %i.xe, align 8, !tbaa !57
  invoke void @__cxa_rethrow() #23
          to label %bb.hh unwind label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aos = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit23.i.i.i.body unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aot = landingpad { ptr, i32 }
          catch ptr null
  %i.aou = extractvalue { ptr, i32 } %i.aot, 0
  call void @__clang_call_terminate(ptr %i.aou) #22
  unreachable

bb.hh:                                            ; preds = %bb.he
  unreachable

_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i: ; preds = %bb.hd, %._crit_edge.i
  store i64 %i.ans, ptr %i.xa, align 8, !tbaa !42
  store ptr %.0.i.i, ptr %i.wv, align 8, !tbaa !41
  %i.aov = urem i64 %i.alt, %i.ans
  br label %bb.hi

bb.hi:                                            ; preds = %.noexc686._crit_edge, %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i
  %i.aow = phi ptr [ %.0.i.i, %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i ], [ %.pre837, %.noexc686._crit_edge ] ; 2 uses
  %.0.i = phi i64 [ %i.aov, %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i ], [ %i.alv, %.noexc686._crit_edge ]
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %.0.i ; 3 uses
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !47 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aoy, null
  br i1 %.not.i.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !39
  store ptr %i.aoz, ptr %i.ani, align 8, !tbaa !39
  %i.apa = load ptr, ptr %i.aox, align 8, !tbaa !47
  store ptr %i.ani, ptr %i.apa, align 8, !tbaa !39
  br label %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit

bb.hk:                                            ; preds = %bb.hi
  %i.apb = load ptr, ptr %i.ww, align 8, !tbaa !38 ; 3 uses
  store ptr %i.apb, ptr %i.ani, align 8, !tbaa !39
  store ptr %i.ani, ptr %i.ww, align 8, !tbaa !38
  %.not11.i.i = icmp eq ptr %i.apb, null
  br i1 %.not11.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 8
  %i.apd = load i64, ptr %i.xa, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.apc, align 4 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i, 32
  %i.ape = and i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i, 255
  %i.apf = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 4294967295
  %i.apg = add nuw nsw i64 %i.ape, %i.apf
  %i.aph = urem i64 %i.apg, %i.apd
  %i.api = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %i.aph
  store ptr %i.ani, ptr %i.api, align 8, !tbaa !47
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  store ptr %i.ww, ptr %i.aox, align 8, !tbaa !47
  br label %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit

_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit: ; preds = %bb.hj, %bb.hm
  %i.apj = load i64, ptr %i.xf, align 8, !tbaa !58
  %i.apk = add i64 %i.apj, 1
  store i64 %i.apk, ptr %i.xf, align 8, !tbaa !58
  br label %_ZNSt13unordered_mapI8KeyPressN7KeyType1TESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixERS8_.exit.i

_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit23.i.i.i: ; preds = %_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.thread.i.i.i
  %i.apl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit23.i.i.i.body

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit682, %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit23.i.i.i.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body687, %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit23.i.i.i.body ], [ %.pn168.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit682 ], [ %.pn166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656 ], [ %.pn164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653 ], [ %.pn162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650 ], [ %.pn160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647 ], [ %.pn158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644 ], [ %.pn156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641 ], [ %.pn154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638 ], [ %.pn152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ], [ %i.afu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632 ], [ %.pn148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629 ], [ %.pn146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626 ], [ %.pn144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623 ], [ %.pn142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620 ], [ %.pn140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ %.pn138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614 ], [ %.pn136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611 ], [ %.pn134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608 ], [ %.pn132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605 ], [ %.pn130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602 ], [ %.pn128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599 ], [ %.pn126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596 ], [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %.pn122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590 ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587 ], [ %i.acd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584 ], [ %.pn116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581 ], [ %.pn114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578 ], [ %i.abm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575 ], [ %i.abh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ %.pn108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569 ], [ %i.aaw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566 ], [ %i.aar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563 ], [ %i.aam, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560 ], [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557 ], [ %i.aab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554 ], [ %i.zw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551 ], [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548 ], [ %i.zl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545 ], [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542 ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539 ], [ %i.yv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536 ], [ %i.yq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533 ], [ %i.yl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530 ], [ %i.yg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527 ], [ %i.yb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524 ], [ %i.xw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521 ], [ %i.xr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518 ], [ %i.xm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515 ], [ %i.xh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit23.i.i.i.body: ; preds = %bb.hf, %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit23.i.i.i
  %eh.lpad-body687 = phi { ptr, i32 } [ %i.apl, %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit23.i.i.i ], [ %i.aos, %bb.hf ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ani, i64 noundef 24) #20
  br label %common.resume

_ZNSt13unordered_mapI8KeyPressN7KeyType1TESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixERS8_.exit.i: ; preds = %.split.split.split.us.i, %.split.split.us.split.i, %.split.us.split.i, %.split.split.split.us.preheader.i, %.split.split.us.split.preheader.i, %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit
  %.pn.i.i.i = phi ptr [ %i.ani, %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit ], [ %i.amq, %.split.split.us.split.i ], [ %.0.us.i, %.split.us.split.i ], [ %i.amb, %.split.split.split.us.preheader.i ], [ %i.amb, %.split.split.us.split.preheader.i ], [ %i.anc, %.split.split.split.us.i ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  store i32 %i.alp, ptr %.1.i.i.i, align 4, !tbaa !61
  br label %_ZN15MyEventReceiver12listenForKeyE8KeyPressN7KeyType1TE.exit

_ZN15MyEventReceiver12listenForKeyE8KeyPressN7KeyType1TE.exit: ; preds = %.lr.ph, %_ZNSt13unordered_mapI8KeyPressN7KeyType1TESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixERS8_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.apm = getelementptr inbounds nuw i8, ptr %.sroa.0695.0811, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.apm, %i.aln
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_Z13clearKeyCachev() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_Z13getKeySettingRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !19
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.61) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !30
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !24
  %i.g = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.g, ptr %i.b, align 8, !tbaa !23
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !23
  store i8 %i.i, ptr %i.h, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !22
  %i.l = load ptr, ptr %0, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI8KeyPressSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %1, align 8, !tbaa !27     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = load ptr, ptr %0, align 8, !tbaa !27     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 3 uses
  %i.o = add i64 %i.d, -8
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -8
  %i.r = add i64 %i.q, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.r, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !27       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI8KeyPressSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #20
  br label %_ZNSt12_Vector_baseI8KeyPressSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI8KeyPressSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !28
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK8KeyPressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 8
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !200

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK8KeyPressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 8
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK8KeyPressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.c, align 4
  store i64 %i.ad, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK8KeyPressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.aa, 8
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !200

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIP8KeyPressS1_ET0_T_S3_S2_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.aa, 8
  br i1 %i.af, label %bb.n, label %_ZSt4copyIP8KeyPressS1_ET0_T_S3_S2_.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %i.c, align 4
  store i64 %i.ag, ptr %i.i, align 4
  br label %_ZSt4copyIP8KeyPressS1_ET0_T_S3_S2_.exit

_ZSt4copyIP8KeyPressS1_ET0_T_S3_S2_.exit:         ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !27
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !29  ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !27
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK8KeyPressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP8KeyPressS1_ET0_T_S3_S2_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIP8KeyPressS1_ET0_T_S3_S2_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIP8KeyPressS1_ET0_T_S3_S2_.exit ] ; 2 uses
  %i.ap = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.ap, ptr %.011.i.i.i.i, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK8KeyPressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !199

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK8KeyPressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIP8KeyPressS1_ET0_T_S3_S2_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseI8KeyPressSaIS0_EE13_M_deallocateEPS0_m.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK8KeyPressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @_ZN8KeyPress13getSpecialKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN15MyEventReceiver10setKeyDownE8KeyPressb(ptr noundef nonnull align 8 dereferenceable(2144) %0, i64 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.KeyPress, align 8            ; 7 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 3 uses
  %i.b = call ptr @_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.d = and i64 %.sroa.2.0.extract.shift.i.i.i.i, 255
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.f = add nuw nsw i64 %i.d, %i.e               ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %i.i = urem i64 %i.f, %i.h                      ; 2 uses
  %i.j = call noundef ptr @_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS2_m(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(8) %3, i64 noundef %i.f) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.thread.i.i, label %_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.i.i

_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.thread.i.i, label %_ZNSt13unordered_mapI8KeyPressN7KeyType1TESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixERS8_.exit

_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.thread.i.i: ; preds = %_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.i.i, %bb.b
  %i.l = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 5 uses
  store ptr null, ptr %i.l, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %3, align 8
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !56
  %i.p = invoke ptr @_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.i, i64 noundef %i.f, ptr noundef nonnull %i.l, i64 noundef 1)
          to label %_ZNSt13unordered_mapI8KeyPressN7KeyType1TESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit23.i.i

_ZNSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit23.i.i: ; preds = %_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.thread.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #20
  resume { ptr, i32 } %i.q

_ZNSt13unordered_mapI8KeyPressN7KeyType1TESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixERS8_.exit: ; preds = %_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.i.i, %_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.thread.i.i
  %.pn.i.i = phi ptr [ %i.k, %_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.i.i ], [ %i.p, %_ZNKSt10_HashtableI8KeyPressSt4pairIKS0_N7KeyType1TEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit.thread.i.i ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.r = load i32, ptr %.1.i.i, align 4, !tbaa !61 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt13unordered_mapI8KeyPressN7KeyType1TESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixERS8_.exit
  %i.t = call { ptr, i8 } @_ZNSt8_Rb_treeI8KeyPressS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE16_M_insert_uniqueIRKS0_EESt4pairISt17_Rb_tree_iteratorIS0_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt13unordered_mapI8KeyPressN7KeyType1TESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixERS8_.exit
  %i.u = call noundef i64 @_ZNSt8_Rb_treeI8KeyPressS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE5eraseERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = zext i32 %i.r to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %.not16.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not16.not.i, label %_ZNK15MyEventReceiver12checkKeyDownEN7KeyType1TE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1976
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.011.017.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ad = call ptr @_ZNKSt8_Rb_treeI8KeyPressS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE4findERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.011.017.i)
  %.not15.not.i.not = icmp ne ptr %i.ad, %i.ac    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ae, %i.aa
  %or.cond = select i1 %.not15.not.i.not, i1 true, i1 %.not.not.i
  br i1 %or.cond, label %_ZNK15MyEventReceiver12checkKeyDownEN7KeyType1TE.exit, label %bb.f

_ZNK15MyEventReceiver12checkKeyDownEN7KeyType1TE.exit: ; preds = %bb.f, %bb.e
  %.not.lcssa.i = phi i1 [ false, %bb.e ], [ %.not15.not.i.not, %bb.f ]
  call void @_ZN15MyEventReceiver10setKeyDownEN7KeyType1TEb(ptr noundef nonnull align 8 dereferenceable(2144) %0, i32 noundef %i.r, i1 noundef zeroext %.not.lcssa.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK15MyEventReceiver12checkKeyDownEN7KeyType1TE.exit
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15MyEventReceiver10setKeyDownEN7KeyType1TEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2144) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.b = zext i32 %1 to i64                       ; 6 uses
  %i.c = lshr i64 %i.b, 6                         ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30   ; 3 uses
  %i.f = and i64 %i.b, 63
  %i.g = shl nuw i64 1, %i.f                      ; 6 uses
  %i.h = and i64 %i.e, %i.g
  %.not12 = icmp eq i64 %i.h, 0                   ; 2 uses
  %i.i = icmp ugt i32 %1, 80                      ; 4 uses
  br i1 %2, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not12, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
end_hunk_0
