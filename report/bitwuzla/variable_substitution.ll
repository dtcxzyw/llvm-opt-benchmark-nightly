Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/variable_substitution?download=true
inline.NumInlined: 4599
inline.NumDeleted: 1879
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZNK4bzla10preprocess4pass24PassVariableSubstitution22remove_indirect_cyclesERSt13unordered_mapINS_4NodeES4_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S4_EEE:bb.a
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

bb.bb:                                            ; preds = %bb.ak
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit571:                                     ; preds = %bb.an
  %lpad.loopexit573 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit.split-lp572.loopexit:                   ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i
  %lpad.loopexit576 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit.split-lp572.loopexit.split-lp:          ; preds = %bb.ao
  %lpad.loopexit.split-lp577 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit592:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit594 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit.split-lp593:                            ; preds = %bb.au
  %lpad.loopexit.split-lp595 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit597:                                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i116
  %lpad.loopexit599 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit.split-lp598:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp600 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

bb.bc:                                            ; preds = %bb.al
  %i.gh = invoke noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %bb.bd unwind label %.loopexit587 ; 4 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gi = invoke noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %bb.be unwind label %.loopexit587 ; 4 uses

bb.be:                                            ; preds = %bb.bd
  %i.gj = ptrtoint ptr %.sroa.24.1 to i64         ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.0452.1 to i64       ; 2 uses
  %i.gl = sub i64 %i.gj, %i.gk
  %.not.i253 = icmp eq ptr %i.gh, %i.gi
  br i1 %.not.i253, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit130, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = ptrtoint ptr %i.gh to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 3 uses
  %i.gp = ashr exact i64 %i.go, 3                 ; 2 uses
  %i.gq = ptrtoint ptr %.sroa.62.1 to i64         ; 2 uses
  %i.gr = sub i64 %i.gq, %i.gj
  %.not54.i = icmp ult i64 %i.gr, %i.go
  br i1 %.not54.i, label %bb.bg, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bf, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i ], [ %.sroa.24.1, %bb.bf ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i ], [ %i.gh, %bb.bf ] ; 2 uses
  store ptr %.0810.i.i.i.i.i, ptr %.011.i.i.i.i.i, align 8, !tbaa !124
  %i.gs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.gs, %i.gi
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !22

_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.24.1, i64 %i.go
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit130

bb.bg:                                            ; preds = %bb.bf
  %i.gv = ashr exact i64 %i.gl, 3                 ; 4 uses
  %i.gw = sub nsw i64 1152921504606846975, %i.gv
  %i.gx = icmp ult i64 %i.gw, %i.gp
  br i1 %i.gx, label %bb.bh, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #25
          to label %.noexc260 unwind label %.loopexit.split-lp588

.noexc260:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bg
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.gv, i64 %i.gp)
  %i.gy = add nsw i64 %.sroa.speculated.i.i, %i.gv ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gv
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 1152921504606846975)
  %i.hb = select i1 %i.gz, i64 1152921504606846975, i64 %i.ha ; 3 uses
  %.not.i.i259 = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i259, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.hc = shl nuw nsw i64 %i.hb, 3
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #24
          to label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i unwind label %.loopexit587

_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.bi, %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.he = phi ptr [ null, %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.hd, %bb.bi ] ; 4 uses
  %.not11.i.i.i.i.i69.i = icmp eq ptr %.sroa.0452.1, %.sroa.24.1
  br i1 %.not11.i.i.i.i.i69.i, label %.lr.ph.i.i.i.i76.i.preheader, label %.lr.ph.i.i.i.i.i70.i

.lr.ph.i.i.i.i.i70.i:                             ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i70.i
  %.013.i.i.i.i.i71.i = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i70.i ], [ %i.he, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i70.i ], [ %.sroa.0452.1, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.hf = load i64, ptr %.sroa.08.012.i.i.i.i.i72.i, align 8
  store i64 %i.hf, ptr %.013.i.i.i.i.i71.i, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72.i, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i73.i = icmp eq ptr %i.hg, %.sroa.24.1
  br i1 %.not.i.i.i.i.i73.i, label %.lr.ph.i.i.i.i76.i.preheader, label %.lr.ph.i.i.i.i.i70.i, !llvm.loop !23

.lr.ph.i.i.i.i76.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.i70.i, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i
  %.011.i.i.i.i77.i.ph = phi ptr [ %i.he, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i ], [ %i.hh, %.lr.ph.i.i.i.i.i70.i ]
  br label %.lr.ph.i.i.i.i76.i

.lr.ph.i.i.i.i76.i:                               ; preds = %.lr.ph.i.i.i.i76.i.preheader, %.lr.ph.i.i.i.i76.i
  %.011.i.i.i.i77.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i76.i ], [ %.011.i.i.i.i77.i.ph, %.lr.ph.i.i.i.i76.i.preheader ] ; 2 uses
  %.0810.i.i.i.i78.i = phi ptr [ %i.hi, %.lr.ph.i.i.i.i76.i ], [ %i.gh, %.lr.ph.i.i.i.i76.i.preheader ] ; 2 uses
  store ptr %.0810.i.i.i.i78.i, ptr %.011.i.i.i.i77.i, align 8, !tbaa !124
  %i.hi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i78.i, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i77.i, i64 8 ; 2 uses
  %.not.i.i.i.i79.i = icmp eq ptr %i.hi, %i.gi
  br i1 %.not.i.i.i.i79.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit88.i, label %.lr.ph.i.i.i.i76.i, !llvm.loop !22

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit88.i: ; preds = %.lr.ph.i.i.i.i76.i
  %.not.i89.i = icmp eq ptr %.sroa.0452.1, null
  br i1 %.not.i89.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit88.i
  %i.hk = sub i64 %i.gq, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0452.1, i64 noundef %i.hk) #27
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.bj, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN4bzla4NodeEES5_SaIS4_EET0_T_S8_S7_RT1_.exit88.i
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hb
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit130

.loopexit587:                                     ; preds = %bb.bc, %bb.bd, %bb.bi
  %lpad.loopexit589 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit.split-lp588:                            ; preds = %bb.bh
  %lpad.loopexit.split-lp590 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit581:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i, %_ZNKSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit.i
  %.sroa.043.0.ph.i = phi ptr [ %i.by, %_ZNKSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit.i ], [ %.sroa.035.0.i, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 32) #27
  %i.hm = getelementptr inbounds i8, ptr %.sroa.10.1, i64 -8 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !112
  %i.ho = ptrtoint ptr %.sroa.24.1 to i64
  %i.hp = ptrtoint ptr %.sroa.0452.1 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 3
  %i.hs = icmp eq i64 %i.hn, %i.hr
  br i1 %i.hs, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.loopexit581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %.1, ptr %i.a, align 8, !tbaa !112
  %i.ht = invoke { ptr, i8 } @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_lEEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_lEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.bl ; 0 uses

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_lEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.bk
  %i.hu = add nsw i64 %.1, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit130

bb.bl:                                            ; preds = %bb.bk
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

bb.bm:                                            ; preds = %.loopexit581
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.043.0.ph.i, i64 16 ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 8, !tbaa !375, !range !114, !noundef !63
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit130, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i8 1, ptr %i.hw, align 8, !tbaa !375
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit130

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit130: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i, %bb.ar, %.preheader570, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i, %.noexc108, %bb.bm, %bb.bn, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_lEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i, %bb.be, %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE4findERS7_.exit, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i127, %bb.aw
  %.sroa.17.4 = phi ptr [ %.sroa.17.1, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %.sroa.17.8, %bb.aw ], [ %.sroa.17.1, %bb.bm ], [ %.sroa.17.1, %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE4findERS7_.exit ], [ %.sroa.17.8, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i127 ], [ %.sroa.17.1, %.preheader570 ], [ %.sroa.17.1, %bb.be ], [ %.sroa.17.1, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_lEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit ], [ %.sroa.17.1, %bb.bn ], [ %.sroa.17.1, %.noexc108 ], [ %.sroa.17.1, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i ], [ %.sroa.17.1, %bb.ar ], [ %.sroa.17.1, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i ] ; 3 uses
  %.sroa.10.4 = phi ptr [ %.sroa.10.1, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %.sroa.10.5, %bb.aw ], [ %.sroa.10.1, %bb.bm ], [ %.sroa.10.1, %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE4findERS7_.exit ], [ %.sroa.10.5, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i127 ], [ %.sroa.10.1, %.preheader570 ], [ %.sroa.10.1, %bb.be ], [ %i.hm, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_lEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit ], [ %.sroa.10.1, %bb.bn ], [ %.sroa.10.1, %.noexc108 ], [ %.sroa.10.1, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i ], [ %.sroa.10.1, %bb.ar ], [ %.sroa.10.1, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i ] ; 2 uses
  %.sroa.0437.4 = phi ptr [ %.sroa.0437.1, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %.sroa.0437.8, %bb.aw ], [ %.sroa.0437.1, %bb.bm ], [ %.sroa.0437.1, %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE4findERS7_.exit ], [ %.sroa.0437.8, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i127 ], [ %.sroa.0437.1, %.preheader570 ], [ %.sroa.0437.1, %bb.be ], [ %.sroa.0437.1, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_lEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit ], [ %.sroa.0437.1, %bb.bn ], [ %.sroa.0437.1, %.noexc108 ], [ %.sroa.0437.1, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i ], [ %.sroa.0437.1, %bb.ar ], [ %.sroa.0437.1, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i ] ; 3 uses
  %.sroa.62.3 = phi ptr [ %i.hl, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %.sroa.62.1, %bb.aw ], [ %.sroa.62.1, %bb.bm ], [ %.sroa.62.1, %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE4findERS7_.exit ], [ %i.ge, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i127 ], [ %.sroa.62.1, %.preheader570 ], [ %.sroa.62.1, %bb.be ], [ %.sroa.62.1, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_lEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit ], [ %.sroa.62.1, %bb.bn ], [ %.sroa.62.1, %.noexc108 ], [ %.sroa.62.1, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i ], [ %.sroa.62.1, %bb.ar ], [ %.sroa.62.1, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i ] ; 3 uses
  %.sroa.24.3 = phi ptr [ %i.hj, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %i.fo, %bb.aw ], [ %i.at, %bb.bm ], [ %.sroa.24.1, %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE4findERS7_.exit ], [ %i.gb, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i127 ], [ %.sroa.24.1, %.preheader570 ], [ %.sroa.24.1, %bb.be ], [ %i.at, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_lEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit ], [ %i.at, %bb.bn ], [ %.sroa.24.1, %.noexc108 ], [ %i.gu, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i ], [ %.sroa.24.1, %bb.ar ], [ %.sroa.24.1, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i ] ; 4 uses
  %.sroa.0452.3 = phi ptr [ %i.he, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %.sroa.0452.1, %bb.aw ], [ %.sroa.0452.1, %bb.bm ], [ %.sroa.0452.1, %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE4findERS7_.exit ], [ %i.fv, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i127 ], [ %.sroa.0452.1, %.preheader570 ], [ %.sroa.0452.1, %bb.be ], [ %.sroa.0452.1, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_lEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit ], [ %.sroa.0452.1, %bb.bn ], [ %.sroa.0452.1, %.noexc108 ], [ %.sroa.0452.1, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i ], [ %.sroa.0452.1, %bb.ar ], [ %.sroa.0452.1, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i ] ; 4 uses
  %.3 = phi i64 [ %.1, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %.1, %bb.aw ], [ %.1, %bb.bm ], [ %.1, %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE4findERS7_.exit ], [ %.1, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i127 ], [ %.1, %.preheader570 ], [ %.1, %bb.be ], [ %i.hu, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_lEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit ], [ %.1, %bb.bn ], [ %.1, %.noexc108 ], [ %.1, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i ], [ %.1, %bb.ar ], [ %.1, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i ] ; 2 uses
  %i.hz = icmp eq ptr %.sroa.0452.3, %.sroa.24.3
  br i1 %i.hz, label %.loopexit602, label %bb.h, !llvm.loop !355

.loopexit564:                                     ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE6insertIPS3_vEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENSA_IPKS4_S6_EET_SG_.exit152
  %.sroa.0412.0 = load ptr, ptr %.sroa.0412.01037, align 8, !tbaa !128 ; 2 uses
  %.not519 = icmp eq ptr %.sroa.0412.0, null
  br i1 %.not519, label %._crit_edge1039, label %bb.bo, !llvm.loop !365

._crit_edge1039:                                  ; preds = %.loopexit564
  %.pre1380 = load ptr, ptr %i.p, align 8, !tbaa !168 ; 2 uses
  %.not5201042 = icmp eq ptr %.pre1380, null
  br i1 %.not5201042, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit, label %.lr.ph1045

.lr.ph1045:                                       ; preds = %._crit_edge1039
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.dt

bb.bo:                                            ; preds = %.lr.ph1038, %.loopexit564
  %.sroa.0412.01037 = phi ptr [ %.sroa.0412.01032, %.lr.ph1038 ], [ %.sroa.0412.0, %.loopexit564 ] ; 2 uses
  %.sroa.0452.51036 = phi ptr [ %.sroa.0452.0.lcssa, %.lr.ph1038 ], [ %.sroa.0452.7, %.loopexit564 ] ; 8 uses
  %.sroa.24.41035 = phi ptr [ %.sroa.24.0.lcssa, %.lr.ph1038 ], [ %.sroa.24.6, %.loopexit564 ] ; 8 uses
  %.sroa.62.51034 = phi ptr [ %.sroa.62.0.lcssa, %.lr.ph1038 ], [ %.sroa.62.7, %.loopexit564 ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0412.01037, i64 16 ; 2 uses
  %.not.i.i133 = icmp eq ptr %.sroa.24.41035, %.sroa.62.51034
  br i1 %.not.i.i133, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.if = ptrtoint ptr %i.ie to i64
  store i64 %i.if, ptr %.sroa.24.41035, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit148

bb.bq:                                            ; preds = %bb.bo
  %i.ig = ptrtoint ptr %.sroa.24.41035 to i64
  %i.ih = ptrtoint ptr %.sroa.0452.51036 to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 4 uses
  %i.ij = icmp eq i64 %i.ii, 9223372036854775800
  br i1 %i.ij, label %bb.br, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i134

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #25
          to label %.noexc146 unwind label %.loopexit.split-lp566

.noexc146:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i134: ; preds = %bb.bq
  %i.ik = ashr exact i64 %i.ii, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i135 = call i64 @llvm.umax.i64(i64 %i.ik, i64 1)
  %i.il = add nsw i64 %.sroa.speculated.i.i.i.i135, %i.ik ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.ik
  %i.in = call i64 @llvm.umin.i64(i64 %i.il, i64 1152921504606846975)
  %i.io = select i1 %i.im, i64 1152921504606846975, i64 %i.in ; 3 uses
  %.not.i.i.i.i136 = icmp ne i64 %i.io, 0
  call void @llvm.assume(i1 %.not.i.i.i.i136)
  %i.ip = shl nuw nsw i64 %i.io, 3
  %i.iq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #24
          to label %.noexc147 unwind label %.loopexit565 ; 5 uses

.noexc147:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i134
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ii
  %i.is = ptrtoint ptr %i.ie to i64
  store i64 %i.is, ptr %i.ir, align 8
  %.not10.i.i.i.i.i.i137 = icmp eq ptr %.sroa.0452.51036, %.sroa.24.41035
  br i1 %.not10.i.i.i.i.i.i137, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i142, label %.lr.ph.i.i.i.i.i.i138

.lr.ph.i.i.i.i.i.i138:                            ; preds = %.noexc147, %.lr.ph.i.i.i.i.i.i138
  %.012.i.i.i.i.i.i139 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i138 ], [ %i.iq, %.noexc147 ] ; 2 uses
  %.0911.i.i.i.i.i.i140 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i138 ], [ %.sroa.0452.51036, %.noexc147 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.it = load i64, ptr %.0911.i.i.i.i.i.i140, align 8, !alias.scope !381, !noalias !380
  store i64 %i.it, ptr %.012.i.i.i.i.i.i139, align 8, !alias.scope !380, !noalias !381
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i140, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i139, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i141 = icmp eq ptr %i.iu, %.sroa.24.41035
  br i1 %.not.i.i.i.i.i.i141, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i142, label %.lr.ph.i.i.i.i.i.i138, !llvm.loop !21

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i142: ; preds = %.lr.ph.i.i.i.i.i.i138, %.noexc147
  %.0.lcssa.i.i.i.i.i.i143 = phi ptr [ %i.iq, %.noexc147 ], [ %i.iv, %.lr.ph.i.i.i.i.i.i138 ]
  %.not.i23.i.i.i144 = icmp eq ptr %.sroa.0452.51036, null
  br i1 %.not.i23.i.i.i144, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i145, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i142
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0452.51036, i64 noundef %i.ii) #27
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i145

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i145: ; preds = %bb.bs, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i142
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.io
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit148

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit148: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i145, %bb.bp
  %.sroa.62.13 = phi ptr [ %i.iw, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i145 ], [ %.sroa.62.51034, %bb.bp ]
  %.0.lcssa.i.i.i.i.i.i143.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i143, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i145 ], [ %.sroa.24.41035, %bb.bp ]
  %.sroa.0452.13 = phi ptr [ %i.iq, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i145 ], [ %.sroa.0452.51036, %bb.bp ]
  %.sroa.24.9 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i143.pn, i64 8
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE6insertIPS3_vEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENSA_IPKS4_S6_EET_SG_.exit152, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit148
  %.sroa.62.6 = phi ptr [ %.sroa.62.13, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit148 ], [ %.sroa.62.7, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE6insertIPS3_vEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENSA_IPKS4_S6_EET_SG_.exit152 ] ; 13 uses
  %.sroa.24.5 = phi ptr [ %.sroa.24.9, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit148 ], [ %.sroa.24.6, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE6insertIPS3_vEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENSA_IPKS4_S6_EET_SG_.exit152 ] ; 7 uses
  %.sroa.0452.6 = phi ptr [ %.sroa.0452.13, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit148 ], [ %.sroa.0452.7, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE6insertIPS3_vEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENSA_IPKS4_S6_EET_SG_.exit152 ] ; 17 uses
  %i.ix = getelementptr inbounds i8, ptr %.sroa.24.5, i64 -8 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !124 ; 10 uses
  %i.iz = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %.noexc292 unwind label %bb.de ; 11 uses

.noexc292:                                        ; preds = %bb.bt
  store ptr null, ptr %i.iz, align 8, !tbaa !128
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 4 uses
  store ptr %i.iy, ptr %i.ja, align 8, !tbaa !124
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store i8 0, ptr %i.jb, align 8, !tbaa !375
  %i.jc = load i64, ptr %i.y, align 8, !tbaa !376
  %.not.not.i262 = icmp eq i64 %i.jc, 0
  br i1 %.not.not.i262, label %.preheader553, label %.critedge.i263

.preheader553:                                    ; preds = %.noexc292, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i289
  %.sroa.035.0.in.i286 = phi ptr [ %.sroa.035.0.i287, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i289 ], [ %i.j, %.noexc292 ]
  %.sroa.035.0.i287 = load ptr, ptr %.sroa.035.0.in.i286, align 8, !tbaa !128 ; 4 uses
  %.not.i288 = icmp eq ptr %.sroa.035.0.i287, null
  br i1 %.not.i288, label %.critedge.loopexit.i290, label %bb.bu

bb.bu:                                            ; preds = %.preheader553
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.035.0.i287, i64 8
  %i.je = load ptr, ptr %i.ja, align 8, !tbaa !124
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !124
  %i.jg = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull align 8 dereferenceable(8) %i.jf)
          to label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i289 unwind label %bb.bv

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i289: ; preds = %bb.bu
  br i1 %i.jg, label %.loopexit554, label %.preheader553, !llvm.loop !359

bb.bv:                                            ; preds = %bb.bu
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i264

.critedge.loopexit.i290:                          ; preds = %.preheader553
  %.pre.i291 = load ptr, ptr %i.ja, align 8, !tbaa !124
  br label %.critedge.i263

.critedge.i263:                                   ; preds = %.critedge.loopexit.i290, %.noexc292
  %i.ji = phi ptr [ %.pre.i291, %.critedge.loopexit.i290 ], [ %i.iy, %.noexc292 ]
  %i.jj = invoke noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ji)
          to label %bb.bw unwind label %bb.cb     ; 4 uses

bb.bw:                                            ; preds = %.critedge.i263
  %i.jk = load i64, ptr %i.i, align 8, !tbaa !211
  %i.jl = urem i64 %i.jj, %i.jk                   ; 3 uses
  %i.jm = load i64, ptr %i.y, align 8, !tbaa !376
  %.not56.i266 = icmp eq i64 %i.jm, 0
  br i1 %.not56.i266, label %.critedge28.i275, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jn = load ptr, ptr %3, align 8, !tbaa !210
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jl
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i267 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i267, label %.critedge28.i275, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !128 ; 2 uses
  %.phi.trans.insert.i.i.i268 = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %.pre.i.i.i269 = load i64, ptr %.phi.trans.insert.i.i.i268, align 8, !tbaa !166
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %bb.by
  %i.jr = phi i64 [ %.pre.i.i.i269, %bb.by ], [ %i.ka, %bb.ca ]
  %.015.i.i.i270 = phi ptr [ %i.jp, %bb.by ], [ %.0.i.i.i271, %bb.ca ]
  %.0.i.i.i271 = phi ptr [ %i.jq, %bb.by ], [ %i.jx, %bb.ca ] ; 3 uses
  %i.js = icmp eq i64 %i.jj, %i.jr
  br i1 %i.js, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i280, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i272

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i280: ; preds = %bb.bz
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i.i.i271, i64 8
  %i.ju = load ptr, ptr %i.ja, align 8, !tbaa !124
  %i.jv = load ptr, ptr %i.jt, align 8, !tbaa !124
  %i.jw = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull align 8 dereferenceable(8) %i.jv)
          to label %.noexc.i281 unwind label %bb.cc

.noexc.i281:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i280
  br i1 %i.jw, label %_ZNKSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit.i282, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i272

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i272: ; preds = %.noexc.i281, %bb.bz
  %i.jx = load ptr, ptr %.0.i.i.i271, align 8, !tbaa !128 ; 3 uses
  %.not18.i.i.i273 = icmp eq ptr %i.jx, null
  br i1 %.not18.i.i.i273, label %.critedge28.i275, label %bb.ca

bb.ca:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i272
  %i.jy = load i64, ptr %i.i, align 8, !tbaa !211
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !166 ; 2 uses
  %i.kb = urem i64 %i.ka, %i.jy
  %.not19.i.i.i274 = icmp eq i64 %i.kb, %i.jl
  br i1 %.not19.i.i.i274, label %bb.bz, label %.critedge28.i275, !llvm.loop !360

_ZNKSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit.i282: ; preds = %.noexc.i281
end_hunk_0
begin_hunk_1_@_ZNK4bzla10preprocess4pass24PassVariableSubstitution22remove_indirect_cyclesERSt13unordered_mapINS_4NodeES4_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S4_EEE:bb.a
  br i1 %.not.i.i.i.i154, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread, label %bb.di

bb.di:                                            ; preds = %.noexc166
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !128 ; 2 uses
  %.phi.trans.insert.i.i.i.i155 = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %.pre.i.i.i.i156 = load i64, ptr %.phi.trans.insert.i.i.i.i155, align 8, !tbaa !166
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dk, %bb.di
  %i.nv = phi i64 [ %.pre.i.i.i.i156, %bb.di ], [ %i.oc, %bb.dk ]
  %.015.i.i.i.i157 = phi ptr [ %i.nt, %bb.di ], [ %.0.i.i.i.i158, %bb.dk ]
  %.0.i.i.i.i158 = phi ptr [ %i.nu, %bb.di ], [ %i.nz, %bb.dk ] ; 3 uses
  %i.nw = icmp eq i64 %i.no, %i.nv
  br i1 %i.nw, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i: ; preds = %bb.dj
  %i.nx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i158, i64 8
  %i.ny = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull align 8 dereferenceable(24) %i.nx)
          to label %.noexc167 unwind label %.loopexit.split-lp546.loopexit

.noexc167:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i
  br i1 %i.ny, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i: ; preds = %.noexc167, %bb.dj
  %i.nz = load ptr, ptr %.0.i.i.i.i158, align 8, !tbaa !128 ; 3 uses
  %.not18.i.i.i.i159 = icmp eq ptr %i.nz, null
  br i1 %.not18.i.i.i.i159, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread, label %bb.dk

bb.dk:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i
  %i.oa = load i64, ptr %i.d, align 8, !tbaa !208
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !166 ; 2 uses
  %i.od = urem i64 %i.oc, %i.oa
  %.not19.i.i.i.i160 = icmp eq i64 %i.od, %i.nq
  br i1 %.not19.i.i.i.i160, label %bb.dj, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread, !llvm.loop !24

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit: ; preds = %.noexc167
  %i.oe = load ptr, ptr %.015.i.i.i.i157, align 8, !tbaa !128
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread511

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i, %bb.dk, %.preheader544, %.noexc166, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !112
  %i.og = invoke noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %bb.dl unwind label %bb.dm     ; 2 uses

bb.dl:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread
  %i.oh = invoke noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %.preheader543 unwind label %bb.dn ; 2 uses

.preheader543:                                    ; preds = %bb.dl
  %.not1028 = icmp eq ptr %i.og, %i.oh
  br i1 %.not1028, label %._crit_edge1031, label %.lr.ph1030

._crit_edge1031:                                  ; preds = %bb.dr, %.preheader543
  %i.oi = invoke { ptr, i8 } @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_RlEEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_RlEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.ds ; 0 uses

.loopexit545:                                     ; preds = %bb.dg
  %lpad.loopexit547 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit.split-lp546.loopexit:                   ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i
  %lpad.loopexit549 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

.loopexit.split-lp546.loopexit.split-lp:          ; preds = %bb.dh
  %lpad.loopexit.split-lp550 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

bb.dm:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp537

bb.dn:                                            ; preds = %bb.dl
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp537

.lr.ph1030:                                       ; preds = %.preheader543, %bb.dr
  %.0831029 = phi ptr [ %i.pk, %bb.dr ], [ %i.og, %.preheader543 ] ; 4 uses
  %i.ol = load i64, ptr %i.z, align 8, !tbaa !215
  %.not.not.i.i169 = icmp eq i64 %i.ol, 0
  br i1 %.not.not.i.i169, label %.preheader535, label %bb.do

.preheader535:                                    ; preds = %.lr.ph1030, %.noexc184
  %.sroa.06.0.in.i.i181 = phi ptr [ %.sroa.06.0.i.i182, %.noexc184 ], [ %i.e, %.lr.ph1030 ]
  %.sroa.06.0.i.i182 = load ptr, ptr %.sroa.06.0.in.i.i181, align 8, !tbaa !128, !nonnull !63, !noundef !63 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i182, i64 8
  %i.on = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %.0831029, ptr noundef nonnull align 8 dereferenceable(24) %i.om)
          to label %.noexc184 unwind label %.loopexit536

.noexc184:                                        ; preds = %.preheader535
  br i1 %i.on, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit187, label %.preheader535, !llvm.loop !369

bb.do:                                            ; preds = %.lr.ph1030
  %i.oo = invoke noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %.0831029)
          to label %.noexc185 unwind label %.loopexit.split-lp537.loopexit.split-lp ; 2 uses

.noexc185:                                        ; preds = %bb.do
  %i.op = load i64, ptr %i.d, align 8, !tbaa !208 ; 2 uses
  %i.oq = urem i64 %i.oo, %i.op                   ; 2 uses
  %i.or = load ptr, ptr %2, align 8, !tbaa !207
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.oq
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !164, !nonnull !63, !noundef !63 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !128 ; 2 uses
  %.phi.trans.insert.i.i.i.i171 = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  %.pre.i.i.i.i172 = load i64, ptr %.phi.trans.insert.i.i.i.i171, align 8, !tbaa !166
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175, %.noexc185
  %i.ov = phi i64 [ %i.op, %.noexc185 ], [ %i.pa, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175 ]
  %i.ow = phi i64 [ %.pre.i.i.i.i172, %.noexc185 ], [ %i.pd, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175 ]
  %.015.i.i.i.i173 = phi ptr [ %i.ot, %.noexc185 ], [ %.0.i.i.i.i174, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175 ]
  %.0.i.i.i.i174 = phi ptr [ %i.ou, %.noexc185 ], [ %i.pb, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175 ] ; 3 uses
  %i.ox = icmp eq i64 %i.oo, %i.ow
  br i1 %i.ox, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i179, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i179: ; preds = %bb.dp
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i174, i64 8
  %i.oz = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %.0831029, ptr noundef nonnull align 8 dereferenceable(24) %i.oy)
          to label %.noexc186 unwind label %.loopexit.split-lp537.loopexit

.noexc186:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i179
  br i1 %i.oz, label %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i180, label %.noexc186._ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175_crit_edge

.noexc186._ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175_crit_edge: ; preds = %.noexc186
  %.pre1378 = load i64, ptr %i.d, align 8, !tbaa !208
  br label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175: ; preds = %.noexc186._ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175_crit_edge, %bb.dp
  %i.pa = phi i64 [ %.pre1378, %.noexc186._ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i175_crit_edge ], [ %i.ov, %bb.dp ] ; 2 uses
  %i.pb = load ptr, ptr %.0.i.i.i.i174, align 8, !tbaa !128, !nonnull !63, !noundef !63 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !166 ; 2 uses
  %i.pe = urem i64 %i.pd, %i.pa
  %.not19.i.i.i.i177 = icmp eq i64 %i.pe, %i.oq
  call void @llvm.assume(i1 %.not19.i.i.i.i177)
  br label %bb.dp

_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i180: ; preds = %.noexc186
  %i.pf = load ptr, ptr %.015.i.i.i.i173, align 8, !tbaa !128
  br label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit187

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit187: ; preds = %.noexc184, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i180
  %.sroa.06.1.i.i178 = phi ptr [ %i.pf, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i180 ], [ %.sroa.06.0.i.i182, %.noexc184 ]
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i178, i64 16
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !217 ; 2 uses
  %i.pi = load i64, ptr %i.b, align 8, !tbaa !112
  %i.pj = icmp sgt i64 %i.ph, %i.pi
  br i1 %i.pj, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit187
  store i64 %i.ph, ptr %i.b, align 8, !tbaa !112
  br label %bb.dr

.loopexit536:                                     ; preds = %.preheader535
  %lpad.loopexit538 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp537

.loopexit.split-lp537.loopexit:                   ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i179
  %lpad.loopexit540 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp537

.loopexit.split-lp537.loopexit.split-lp:          ; preds = %bb.do
  %lpad.loopexit.split-lp541 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp537

bb.dr:                                            ; preds = %bb.dq, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit187
  %i.pk = getelementptr inbounds nuw i8, ptr %.0831029, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.pk, %i.oh
  br i1 %.not, label %._crit_edge1031, label %.lr.ph1030

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_RlEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit: ; preds = %._crit_edge1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread511

bb.ds:                                            ; preds = %._crit_edge1031
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp537

.loopexit.split-lp537:                            ; preds = %.loopexit536, %.loopexit.split-lp537.loopexit.split-lp, %.loopexit.split-lp537.loopexit, %bb.dm, %bb.dn, %bb.ds
  %.pn87.pn.pn = phi { ptr, i32 } [ %i.pl, %bb.ds ], [ %i.oj, %bb.dm ], [ %i.ok, %bb.dn ], [ %lpad.loopexit538, %.loopexit536 ], [ %lpad.loopexit540, %.loopexit.split-lp537.loopexit ], [ %lpad.loopexit.split-lp541, %.loopexit.split-lp537.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit246

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread511: ; preds = %.noexc165, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE7emplaceIJRS7_RlEEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit
  store i8 1, ptr %i.ni, align 8, !tbaa !375
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE6insertIPS3_vEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENSA_IPKS4_S6_EET_SG_.exit152

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE6insertIPS3_vEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENSA_IPKS4_S6_EET_SG_.exit152: ; preds = %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i306, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread511, %.loopexit554, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i354, %bb.cy
  %.sroa.62.7 = phi ptr [ %.sroa.62.6, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread511 ], [ %.sroa.62.6, %bb.cy ], [ %i.ng, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i354 ], [ %.sroa.62.6, %.loopexit554 ], [ %.sroa.62.6, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i306 ] ; 11 uses
  %.sroa.24.6 = phi ptr [ %i.ix, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread511 ], [ %.sroa.24.5, %bb.cy ], [ %i.ne, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i354 ], [ %i.ix, %.loopexit554 ], [ %i.mp, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i306 ] ; 3 uses
  %.sroa.0452.7 = phi ptr [ %.sroa.0452.6, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.thread511 ], [ %.sroa.0452.6, %bb.cy ], [ %i.mz, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE13_M_deallocateEPS4_m.exit.i354 ], [ %.sroa.0452.6, %.loopexit554 ], [ %.sroa.0452.6, %_ZSt22__uninitialized_copy_aIPKN4bzla4NodeEPSt17reference_wrapperIS2_ES5_ET0_T_S8_S7_RSaIT1_E.exit.i306 ] ; 12 uses
  %i.pm = icmp eq ptr %.sroa.0452.7, %.sroa.24.6
  br i1 %i.pm, label %.loopexit564, label %bb.bt, !llvm.loop !365

bb.dt:                                            ; preds = %.lr.ph1045, %.critedge102
  %.sroa.0397.01043 = phi ptr [ %.pre1380, %.lr.ph1045 ], [ %.sroa.0397.1, %.critedge102 ] ; 8 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0397.01043, i64 8 ; 4 uses
  %i.po = load i64, ptr %i.ia, align 8, !tbaa !215
  %.not.not.i.i188 = icmp eq i64 %i.po, 0
  br i1 %.not.not.i.i188, label %.preheader526, label %bb.dv

.preheader526:                                    ; preds = %bb.dt, %.noexc203
  %.sroa.06.0.in.i.i200 = phi ptr [ %.sroa.06.0.i.i201, %.noexc203 ], [ %i.e, %bb.dt ]
  %.sroa.06.0.i.i201 = load ptr, ptr %.sroa.06.0.in.i.i200, align 8, !tbaa !128 ; 4 uses
  %.not.i.i202 = icmp eq ptr %.sroa.06.0.i.i201, null
  br i1 %.not.i.i202, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit206, label %bb.du

bb.du:                                            ; preds = %.preheader526
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i201, i64 8
  %i.pq = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.pn, ptr noundef nonnull align 8 dereferenceable(24) %i.pp)
          to label %.noexc203 unwind label %.loopexit527

.noexc203:                                        ; preds = %bb.du
  br i1 %i.pq, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit206, label %.preheader526, !llvm.loop !369

bb.dv:                                            ; preds = %bb.dt
  %i.pr = invoke noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.pn)
          to label %.noexc204 unwind label %.loopexit.split-lp528.loopexit.split-lp ; 2 uses

.noexc204:                                        ; preds = %bb.dv
  %i.ps = load i64, ptr %i.d, align 8, !tbaa !208
  %i.pt = urem i64 %i.pr, %i.ps                   ; 2 uses
  %i.pu = load ptr, ptr %2, align 8, !tbaa !207
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.pt
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i.i189 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i.i189, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit206, label %bb.dw

bb.dw:                                            ; preds = %.noexc204
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !128 ; 2 uses
  %.phi.trans.insert.i.i.i.i190 = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  %.pre.i.i.i.i191 = load i64, ptr %.phi.trans.insert.i.i.i.i190, align 8, !tbaa !166
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dy, %bb.dw
  %i.py = phi i64 [ %.pre.i.i.i.i191, %bb.dw ], [ %i.qf, %bb.dy ]
  %.015.i.i.i.i192 = phi ptr [ %i.pw, %bb.dw ], [ %.0.i.i.i.i193, %bb.dy ]
  %.0.i.i.i.i193 = phi ptr [ %i.px, %bb.dw ], [ %i.qc, %bb.dy ] ; 3 uses
  %i.pz = icmp eq i64 %i.pr, %i.py
  br i1 %i.pz, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i198, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i194

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i198: ; preds = %bb.dx
  %i.qa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i193, i64 8
  %i.qb = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.pn, ptr noundef nonnull align 8 dereferenceable(24) %i.qa)
          to label %.noexc205 unwind label %.loopexit.split-lp528.loopexit

.noexc205:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i198
  br i1 %i.qb, label %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i199, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i194

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i194: ; preds = %.noexc205, %bb.dx
  %i.qc = load ptr, ptr %.0.i.i.i.i193, align 8, !tbaa !128 ; 3 uses
  %.not18.i.i.i.i195 = icmp eq ptr %i.qc, null
  br i1 %.not18.i.i.i.i195, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit206, label %bb.dy

bb.dy:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i194
  %i.qd = load i64, ptr %i.d, align 8, !tbaa !208
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !166 ; 2 uses
  %i.qg = urem i64 %i.qf, %i.qd
  %.not19.i.i.i.i196 = icmp eq i64 %i.qg, %i.pt
  br i1 %.not19.i.i.i.i196, label %bb.dx, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit206, !llvm.loop !24

_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i199: ; preds = %.noexc205
  %i.qh = load ptr, ptr %.015.i.i.i.i192, align 8, !tbaa !128
  br label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit206

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit206: ; preds = %bb.dy, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i194, %.noexc203, %.preheader526, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i199, %.noexc204
  %.sroa.06.1.i.i197 = phi ptr [ null, %.noexc204 ], [ null, %.preheader526 ], [ %i.qh, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i199 ], [ %.sroa.06.0.i.i201, %.noexc203 ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i194 ], [ null, %bb.dy ] ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0397.01043, i64 16 ; 4 uses
  %i.qj = load i64, ptr %i.ia, align 8, !tbaa !215
  %.not.not.i.i207 = icmp eq i64 %i.qj, 0
  br i1 %.not.not.i.i207, label %.preheader, label %bb.dz

.preheader:                                       ; preds = %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit206, %.noexc222
  %.sroa.06.0.in.i.i219 = phi ptr [ %.sroa.06.0.i.i220, %.noexc222 ], [ %i.e, %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit206 ]
  %.sroa.06.0.i.i220 = load ptr, ptr %.sroa.06.0.in.i.i219, align 8, !tbaa !128, !nonnull !63, !noundef !63 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i220, i64 8
  %i.ql = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.qi, ptr noundef nonnull align 8 dereferenceable(24) %i.qk)
          to label %.noexc222 unwind label %.loopexit

.noexc222:                                        ; preds = %.preheader
  br i1 %i.ql, label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit225, label %.preheader, !llvm.loop !369

bb.dz:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit206
  %i.qm = invoke noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.qi)
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc223:                                        ; preds = %bb.dz
  %i.qn = load i64, ptr %i.d, align 8, !tbaa !208 ; 2 uses
  %i.qo = urem i64 %i.qm, %i.qn                   ; 2 uses
  %i.qp = load ptr, ptr %2, align 8, !tbaa !207
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %i.qo
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !164, !nonnull !63, !noundef !63 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !128 ; 2 uses
  %.phi.trans.insert.i.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %.pre.i.i.i.i210 = load i64, ptr %.phi.trans.insert.i.i.i.i209, align 8, !tbaa !166
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213, %.noexc223
  %i.qt = phi i64 [ %i.qn, %.noexc223 ], [ %i.qy, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213 ]
  %i.qu = phi i64 [ %.pre.i.i.i.i210, %.noexc223 ], [ %i.rb, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213 ]
  %.015.i.i.i.i211 = phi ptr [ %i.qr, %.noexc223 ], [ %.0.i.i.i.i212, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213 ]
  %.0.i.i.i.i212 = phi ptr [ %i.qs, %.noexc223 ], [ %i.qz, %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213 ] ; 3 uses
  %i.qv = icmp eq i64 %i.qm, %i.qu
  br i1 %i.qv, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i217, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i217: ; preds = %bb.ea
  %i.qw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i212, i64 8
  %i.qx = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.qi, ptr noundef nonnull align 8 dereferenceable(24) %i.qw)
          to label %.noexc224 unwind label %.loopexit.split-lp.loopexit

.noexc224:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i217
  br i1 %i.qx, label %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i218, label %.noexc224._ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213_crit_edge

.noexc224._ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213_crit_edge: ; preds = %.noexc224
  %.pre1381 = load i64, ptr %i.d, align 8, !tbaa !208
  br label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213: ; preds = %.noexc224._ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213_crit_edge, %bb.ea
  %i.qy = phi i64 [ %.pre1381, %.noexc224._ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i213_crit_edge ], [ %i.qt, %bb.ea ] ; 2 uses
  %i.qz = load ptr, ptr %.0.i.i.i.i212, align 8, !tbaa !128, !nonnull !63, !noundef !63 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !166 ; 2 uses
  %i.rc = urem i64 %i.rb, %i.qy
  %.not19.i.i.i.i215 = icmp eq i64 %i.rc, %i.qo
  call void @llvm.assume(i1 %.not19.i.i.i.i215)
  br label %bb.ea

_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i218: ; preds = %.noexc224
  %i.rd = load ptr, ptr %.015.i.i.i.i211, align 8, !tbaa !128
  br label %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit225

_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit225: ; preds = %.noexc222, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i218
  %.sroa.06.1.i.i216 = phi ptr [ %i.rd, %_ZNKSt10_HashtableIN4bzla4NodeESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS3_m.exit.i.i.i218 ], [ %.sroa.06.0.i.i220, %.noexc222 ] ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i216, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i216, i64 16
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !217
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i197, i64 8
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i197, i64 16
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !217
  %i.rk = icmp sgt i64 %i.rg, %i.rj
  br i1 %i.rk, label %bb.eb, label %bb.eu

bb.eb:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeElSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit225
  %i.rl = load i64, ptr %i.ib, align 8, !tbaa !154 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0397.01043, i64 24
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !166
  %i.ro = urem i64 %i.rn, %i.rl                   ; 3 uses
  %i.rp = load ptr, ptr %1, align 8, !tbaa !153   ; 3 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.ro ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !164 ; 4 uses
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %bb.eb
  %.0.i.i.i.i226 = phi ptr [ %i.rr, %bb.eb ], [ %i.rs, %bb.ec ] ; 4 uses
  %i.rs = load ptr, ptr %.0.i.i.i.i226, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i.i227 = icmp eq ptr %i.rs, %.sroa.0397.01043
  br i1 %.not.i.i.i.i227, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb1EEE.exit.i.i.i, label %bb.ec, !llvm.loop !370

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb1EEE.exit.i.i.i: ; preds = %bb.ec
  %i.rt = icmp eq ptr %.0.i.i.i.i226, %i.rr
  %i.ru = load ptr, ptr %.sroa.0397.01043, align 8, !tbaa !128 ; 4 uses
  %.not18.i.i.i.i228 = icmp eq ptr %i.ru, null    ; 2 uses
  br i1 %i.rt, label %bb.ed, label %bb.ei

bb.ed:                                            ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNS6_10_Hash_nodeIS4_Lb1EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i228, label %._crit_edge.i.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !166
  %i.rx = urem i64 %i.rw, %i.rl                   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.rx, %i.ro
  br i1 %.not9.i.i.i.i.i, label %bb.el, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.rx
  store ptr %i.rr, ptr %i.ry, align 8, !tbaa !164
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ef, %bb.ed
  %i.rz = icmp eq ptr %i.p, %i.rr
  br i1 %i.rz, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.ru, ptr %i.p, align 8, !tbaa !168
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.rq, align 8, !tbaa !164
  br label %bb.el
end_hunk_1
