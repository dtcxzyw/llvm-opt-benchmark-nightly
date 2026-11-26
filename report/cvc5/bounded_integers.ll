Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/bounded_integers?download=true
inline.NumInlined: 5448
inline.NumDeleted: 1912
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers15BoundedIntegers14checkOwnershipENS0_12NodeTemplateILb1EEE:bb.a
  br i1 %i.bvk, label %.critedge.i1130, label %bb.rq

bb.rq:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i1124.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bvj, ptr %.0811.i.i.i.i1123, ptr %.012.i.i.i.i1122
  %.19.i.i.i.i1124.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1124.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bvl = load ptr, ptr %.19.i.i.i.i1124.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %i.bvm = load i64, ptr %i.bvl, align 8
  %i.bvn = and i64 %i.bvm, 1099511627775
  %i.bvo = icmp samesign ult i64 %i.bve, %i.bvn
  br i1 %i.bvo, label %.critedge.i1130, label %bb.rz

.critedge.i1130:                                  ; preds = %bb.rq, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i, %bb.ro
  %.08.lcssa.i.i.i11.i1131 = phi ptr [ %.19.i.i.i.i1124, %bb.rq ], [ %.19.i.i.i.i1124, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i ], [ %i.bvb, %bb.ro ]
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #25
  store ptr %111, ptr %62, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.bri, ptr %3, align 8, !tbaa !400
  %i.bvp = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc2489 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc2489:                                       ; preds = %.critedge.i1130
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bri, ptr noundef nonnull %i.bvp, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 1 dereferenceable(1) %63)
          to label %.noexc2490 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2490:                                       ; preds = %.noexc2489
  store ptr %i.bvp, ptr %i.cs, align 8, !tbaa !403
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 32 ; 3 uses
  %i.bvr = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.bri, ptr %.08.lcssa.i.i.i11.i1131, ptr noundef nonnull align 8 dereferenceable(8) %i.bvq)
          to label %bb.rr unwind label %bb.ru     ; 2 uses

bb.rr:                                            ; preds = %.noexc2490
  %i.bvs = extractvalue { ptr, ptr } %i.bvr, 0    ; 2 uses
  %i.bvt = extractvalue { ptr, ptr } %i.bvr, 1    ; 4 uses
  %.not.i2484 = icmp eq ptr %i.bvt, null
  br i1 %.not.i2484, label %bb.rv, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %.not.i.i.i2485 = icmp ne ptr %i.bvs, null
  %i.bvu = icmp eq ptr %i.bvt, %i.bvb
  %or.cond.i.i.i2486 = select i1 %.not.i.i.i2485, i1 true, i1 %i.bvu
  br i1 %or.cond.i.i.i2486, label %.thread.i2487, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvt, i64 32
  %i.bvw = load ptr, ptr %i.bvq, align 8, !tbaa !44
  %i.bvx = load i64, ptr %i.bvw, align 8
  %i.bvy = and i64 %i.bvx, 1099511627775
  %i.bvz = load ptr, ptr %i.bvv, align 8, !tbaa !44
  %i.bwa = load i64, ptr %i.bvz, align 8
  %i.bwb = and i64 %i.bwa, 1099511627775
  %i.bwc = icmp samesign ult i64 %i.bvy, %i.bwb
  br label %.thread.i2487

.thread.i2487:                                    ; preds = %bb.rt, %bb.rs
  %i.bwd = phi i1 [ %i.bwc, %bb.rt ], [ true, %bb.rs ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bwd, ptr noundef nonnull %i.bvp, ptr noundef nonnull %i.bvt, ptr noundef nonnull align 8 dereferenceable(32) %i.bvb) #25
  %i.bwe = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1086, i64 80 ; 2 uses
  %i.bwf = load i64, ptr %i.bwe, align 8, !tbaa !353
  %i.bwg = add i64 %i.bwf, 1
  store i64 %i.bwg, ptr %i.bwe, align 8, !tbaa !353
  br label %.noexc1132

bb.ru:                                            ; preds = %.noexc2490
  %i.bwh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body2401

bb.rv:                                            ; preds = %bb.rr
  %i.bwi = load ptr, ptr %i.bvq, align 8, !tbaa !44 ; 3 uses
  %i.bwj = load i64, ptr %i.bwi, align 8          ; 3 uses
  %i.bwk = and i64 %i.bwj, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bwk, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, label %bb.rw, !prof !46

bb.rw:                                            ; preds = %bb.rv
  %i.bwl = add i64 %i.bwj, 1152920405095219200
  %i.bwm = and i64 %i.bwl, 1152920405095219200    ; 2 uses
  %i.bwn = and i64 %i.bwj, -1152920405095219201
  %i.bwo = or disjoint i64 %i.bwm, %i.bwn
  store i64 %i.bwo, ptr %i.bwi, align 8
  %i.bwp = icmp eq i64 %i.bwm, 0
  br i1 %i.bwp, label %bb.rx, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, !prof !46

bb.rx:                                            ; preds = %bb.rw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bwi)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i unwind label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.bwq = landingpad { ptr, i32 }
          catch ptr null
  %i.bwr = extractvalue { ptr, i32 } %i.bwq, 0
  call void @__clang_call_terminate(ptr %i.bwr) #27
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i: ; preds = %bb.rx, %bb.rw, %bb.rv
  call void @_ZdlPvm(ptr noundef nonnull %i.bvp, i64 noundef 48) #28
  br label %.noexc1132

.noexc1132:                                       ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, %.thread.i2487
  %.sroa.0.010.i2488 = phi ptr [ %i.bvp, %.thread.i2487 ], [ %i.bvs, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #25
  br label %bb.rz

bb.rz:                                            ; preds = %.noexc1132, %bb.rq
  %.sroa.06.0.i1129 = phi ptr [ %.sroa.0.010.i2488, %.noexc1132 ], [ %.19.i.i.i.i1124, %bb.rq ]
  %i.bws = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1129, i64 40
  %i.bwt = load i8, ptr %i.bws, align 1, !tbaa !340, !range !297, !noundef !256
  %i.bwu = zext nneg i8 %i.bwt to i64
  %i.bwv = load ptr, ptr %i.buy, align 8, !tbaa !44 ; 5 uses
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 16
  %i.bwx = load ptr, ptr %i.bww, align 8, !tbaa !51
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwx, i64 80
  %i.bwz = load ptr, ptr %i.bwy, align 8, !tbaa !467 ; 2 uses
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwz, i64 64 ; 3 uses
  %i.bxb = load i64, ptr @_ZN4cvc58internal4expr9AttributeINS0_6theory22BoundIntLitAttributeIdEmE4s_idE, align 8, !tbaa !468 ; 5 uses
  %i.bxc = load i64, ptr %i.bwv, align 8
  %i.bxd = and i64 %i.bxc, 1099511627775          ; 4 uses
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bwz, i64 72
  %i.bxf = load i64, ptr %i.bxe, align 8, !tbaa !470 ; 2 uses
  %i.bxg = urem i64 %i.bxd, %i.bxf                ; 3 uses
  %i.bxh = load ptr, ptr %i.bxa, align 8, !tbaa !471
  %i.bxi = getelementptr inbounds nuw [8 x i8], ptr %i.bxh, i64 %i.bxg
  %i.bxj = load ptr, ptr %i.bxi, align 8, !tbaa !328 ; 2 uses
  %.not.i.i.i2498 = icmp eq ptr %i.bxj, null
  br i1 %.not.i.i.i2498, label %.loopexit.i2500, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.bxk = load ptr, ptr %i.bxj, align 8, !tbaa !309 ; 4 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bxk, i64 8
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxk, i64 40
  %i.bxn = load i64, ptr %i.bxm, align 8, !tbaa !473
  %i.bxo = icmp eq i64 %i.bxd, %i.bxn
  %i.bxp = load ptr, ptr %i.bxl, align 8
  %i.bxq = icmp eq ptr %i.bwv, %i.bxp
  %i.bxr = select i1 %i.bxo, i1 %i.bxq, i1 false
  br i1 %i.bxr, label %.noexc1133, label %.lr.ph.i.i.i2499

bb.sb:                                            ; preds = %bb.sc
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxx, i64 8
  %i.bxt = icmp eq i64 %i.bxd, %i.bxz
  %i.bxu = load ptr, ptr %i.bxs, align 8
  %i.bxv = icmp eq ptr %i.bwv, %i.bxu
  %i.bxw = select i1 %i.bxt, i1 %i.bxv, i1 false
  br i1 %i.bxw, label %.noexc1133, label %.lr.ph.i.i.i2499, !llvm.loop !704

.lr.ph.i.i.i2499:                                 ; preds = %bb.sa, %bb.sb
  %.020.i.i.i = phi ptr [ %i.bxx, %bb.sb ], [ %i.bxk, %bb.sa ]
  %i.bxx = load ptr, ptr %.020.i.i.i, align 8, !tbaa !309 ; 5 uses
  %.not18.i.i.i = icmp eq ptr %i.bxx, null
  br i1 %.not18.i.i.i, label %.loopexit.i2500, label %bb.sc

bb.sc:                                            ; preds = %.lr.ph.i.i.i2499
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxx, i64 40
  %i.bxz = load i64, ptr %i.bxy, align 8, !tbaa !473 ; 2 uses
  %i.bya = urem i64 %i.bxz, %i.bxf
  %.not19.i.i.i = icmp eq i64 %i.bya, %i.bxg
  br i1 %.not19.i.i.i, label %bb.sb, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !704

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.sc
  br label %.loopexit.i2500, !llvm.loop !704

.loopexit.i2500:                                  ; preds = %.lr.ph.i.i.i2499, %..loopexit_crit_edge21.i.i.i, %bb.rz
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.bxa, ptr %2, align 8, !tbaa !748
  %i.byb = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc2501 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc2501:                                       ; preds = %.loopexit.i2500
  store ptr null, ptr %i.byb, align 8, !tbaa !309
  %i.byc = getelementptr inbounds nuw i8, ptr %i.byb, i64 8
  store ptr %i.bwv, ptr %i.byc, align 8, !tbaa !754
  %i.byd = getelementptr inbounds nuw i8, ptr %i.byb, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.byd, i8 0, i64 24, i1 false)
  store ptr %i.byb, ptr %i.ct, align 8, !tbaa !479
  %i.bye = invoke ptr @_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashImE5IdMapEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.bxa, i64 noundef %i.bxg, i64 noundef %i.bxd, ptr noundef nonnull %i.byb, i64 noundef 1)
          to label %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashImE5IdMapEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i unwind label %bb.sd

_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashImE5IdMapEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %.noexc2501
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.noexc1133

bb.sd:                                            ; preds = %.noexc2501
  %i.byf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashImE5IdMapEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body2401

.noexc1133:                                       ; preds = %bb.sb, %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashImE5IdMapEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i, %bb.sa
  %.pn.i = phi ptr [ %i.bye, %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashImE5IdMapEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.bxk, %bb.sa ], [ %i.bxx, %bb.sb ] ; 4 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16 ; 3 uses
  %i.byg = load ptr, ptr %.1.i, align 8, !tbaa !755 ; 9 uses
  %i.byh = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24 ; 6 uses
  %i.byi = load ptr, ptr %i.byh, align 8, !tbaa !755 ; 9 uses
  %i.byj = ptrtoint ptr %i.byi to i64
  %i.byk = ptrtoint ptr %i.byg to i64             ; 4 uses
  %i.byl = sub i64 %i.byj, %i.byk                 ; 2 uses
  %i.bym = ashr exact i64 %i.byl, 4               ; 5 uses
  %i.byn = icmp sgt i64 %i.bym, 0
  br i1 %i.byn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES3_ZN4cvc58internal4expr4attr8AttrHashImE5IdMapixEmEUlRKS3_SH_E_ET_SJ_SJ_RKT0_T1_.exit.i.i.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i: ; preds = %.noexc1133, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i
  %.016.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ], [ %i.bym, %.noexc1133 ] ; 2 uses
  %.sroa.011.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.1.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ], [ %i.byg, %.noexc1133 ] ; 2 uses
  %i.byo = lshr i64 %.016.i.i.i.i.i.i.i, 1        ; 3 uses
  %i.byp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i.i.i.i.i.i, i64 %i.byo ; 2 uses
  %i.byq = load i64, ptr %i.byp, align 8, !tbaa !757
  %i.byr = icmp ult i64 %i.byq, %i.bxb            ; 2 uses
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byp, i64 16
  %i.byt = xor i64 %i.byo, -1
  %i.byu = add nsw i64 %.016.i.i.i.i.i.i.i, %i.byt
  %.sroa.011.1.i.i.i.i.i.i.i = select i1 %i.byr, ptr %i.bys, ptr %.sroa.011.015.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i = select i1 %i.byr, i64 %i.byu, i64 %i.byo ; 2 uses
  %i.byv = icmp sgt i64 %.1.i.i.i.i.i.i.i, 0
  br i1 %i.byv, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES3_ZN4cvc58internal4expr4attr8AttrHashImE5IdMapixEmEUlRKS3_SH_E_ET_SJ_SJ_RKT0_T1_.exit.i.i.i.i.i, !llvm.loop !705

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES3_ZN4cvc58internal4expr4attr8AttrHashImE5IdMapixEmEUlRKS3_SH_E_ET_SJ_SJ_RKT0_T1_.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, %.noexc1133
  %.sroa.011.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.byg, %.noexc1133 ], [ %.sroa.011.1.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ] ; 7 uses
  %i.byw = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, %i.byi ; 2 uses
  br i1 %i.byw, label %.critedge.i.i.i.i.i, label %bb.se

bb.se:                                            ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES3_ZN4cvc58internal4expr4attr8AttrHashImE5IdMapixEmEUlRKS3_SH_E_ET_SJ_SJ_RKT0_T1_.exit.i.i.i.i.i
  %i.byx = load i64, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !757
  %.not.i.i.i.i.i = icmp eq i64 %i.byx, %i.bxb
  br i1 %.not.i.i.i.i.i, label %bb.sk, label %.critedge.i.i.i.i.i.thread

.critedge.i.i.i.i.i:                              ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES3_ZN4cvc58internal4expr4attr8AttrHashImE5IdMapixEmEUlRKS3_SH_E_ET_SJ_SJ_RKT0_T1_.exit.i.i.i.i.i
  %147 = ptrtoint ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i to i64
  %148 = sub i64 %147, %i.byk                     ; 2 uses
  %i.byy = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %i.byz = load ptr, ptr %i.byy, align 8, !tbaa !480
  %.not.i2493 = icmp eq ptr %i.byi, %i.byz
  br i1 %.not.i2493, label %bb.sh, label %bb.sf

.critedge.i.i.i.i.i.thread:                       ; preds = %bb.se
  %i.bza = ptrtoint ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.bzb = sub i64 %i.bza, %i.byk                 ; 3 uses
  %i.bzc = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %i.bzd = load ptr, ptr %i.bzc, align 8, !tbaa !480
  %.not.i24932771 = icmp eq ptr %i.byi, %i.bzd
  br i1 %.not.i24932771, label %bb.sh, label %bb.sg

bb.sf:                                            ; preds = %.critedge.i.i.i.i.i
  store i64 %i.bxb, ptr %i.byi, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.byi, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bze = load ptr, ptr %i.byh, align 8, !tbaa !758
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 16
  store ptr %i.bzf, ptr %i.byh, align 8, !tbaa !758
  br label %.noexc1134

bb.sg:                                            ; preds = %.critedge.i.i.i.i.i.thread
  %i.bzg = getelementptr inbounds i8, ptr %i.byg, i64 %i.bzb ; 2 uses
  %i.bzh = getelementptr inbounds i8, ptr %i.byi, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.byi, ptr noundef nonnull align 8 dereferenceable(16) %i.bzh, i64 16, i1 false)
  %i.bzi = load ptr, ptr %i.byh, align 8, !tbaa !758 ; 4 uses
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzi, i64 16
  store ptr %i.bzj, ptr %i.byh, align 8, !tbaa !758
  %i.bzk = getelementptr inbounds i8, ptr %i.bzi, i64 -16 ; 3 uses
  %i.bzl = ptrtoint ptr %i.bzk to i64
  %i.bzm = sub i64 %i.bzl, %i.bza
  %i.bzn = ashr exact i64 %i.bzm, 4               ; 5 uses
  %i.bzo = icmp sgt i64 %i.bzn, 0
  br i1 %i.bzo, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZNSt6vectorISt4pairImmESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.sg
  %xtraiter = and i64 %i.bzn, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.prol = phi i64 [ %i.bzv, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bzn, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.069.i.i.i.i.i.i.i.prol = phi ptr [ %i.bzq, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bzi, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i.i.i.prol = phi ptr [ %i.bzp, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bzk, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.bzp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.bzq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.bzr = load i64, ptr %i.bzp, align 8, !tbaa !468
  store i64 %i.bzr, ptr %i.bzq, align 8, !tbaa !757
  %i.bzs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -8
  %i.bzt = load i64, ptr %i.bzs, align 8, !tbaa !468
  %i.bzu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.bzt, ptr %i.bzu, align 8, !tbaa !759
  %i.bzv = add nsw i64 %.010.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !706

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.i.i.unr = phi i64 [ %i.bzn, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bzv, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.unr = phi ptr [ %i.bzi, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bzq, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.unr = phi ptr [ %i.bzk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bzp, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bzw = icmp ult i64 %i.bzn, 4
  br i1 %i.bzw, label %_ZNSt6vectorISt4pairImmESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i = phi i64 [ %i.cav, %.lr.ph.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i = phi ptr [ %i.caq, %.lr.ph.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i = phi ptr [ %i.cap, %.lr.ph.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bzx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -16
  %i.bzy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -16
  %i.bzz = load i64, ptr %i.bzx, align 8, !tbaa !468
  store i64 %i.bzz, ptr %i.bzy, align 8, !tbaa !757
  %i.caa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -8
  %i.cab = load i64, ptr %i.caa, align 8, !tbaa !468
  %i.cac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -8
  store i64 %i.cab, ptr %i.cac, align 8, !tbaa !759
  %i.cad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -32
  %i.cae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -32
  %i.caf = load i64, ptr %i.cad, align 8, !tbaa !468
  store i64 %i.caf, ptr %i.cae, align 8, !tbaa !757
  %i.cag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -24
  %i.cah = load i64, ptr %i.cag, align 8, !tbaa !468
  %i.cai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -24
  store i64 %i.cah, ptr %i.cai, align 8, !tbaa !759
  %i.caj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -48
  %i.cak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -48
  %i.cal = load i64, ptr %i.caj, align 8, !tbaa !468
  store i64 %i.cal, ptr %i.cak, align 8, !tbaa !757
  %i.cam = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -40
  %i.can = load i64, ptr %i.cam, align 8, !tbaa !468
  %i.cao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -40
  store i64 %i.can, ptr %i.cao, align 8, !tbaa !759
  %i.cap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.caq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.car = load i64, ptr %i.cap, align 8, !tbaa !468
  store i64 %i.car, ptr %i.caq, align 8, !tbaa !757
  %i.cas = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -56
  %i.cat = load i64, ptr %i.cas, align 8, !tbaa !468
  %i.cau = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -56
  store i64 %i.cat, ptr %i.cau, align 8, !tbaa !759
  %i.cav = add nsw i64 %.010.i.i.i.i.i.i.i, -4
  %i.caw = icmp sgt i64 %.010.i.i.i.i.i.i.i, 4
  br i1 %i.caw, label %.lr.ph.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit.i, !llvm.loop !707

_ZNSt6vectorISt4pairImmESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.sg
  store i64 %i.bxb, ptr %i.bzg, align 8, !tbaa !757
  %i.cax = getelementptr inbounds nuw i8, ptr %i.bzg, i64 8
  store i64 0, ptr %i.cax, align 8, !tbaa !759
  br label %.noexc1134

bb.sh:                                            ; preds = %.critedge.i.i.i.i.i.thread, %.critedge.i.i.i.i.i
  %i.cay = phi ptr [ %i.bzc, %.critedge.i.i.i.i.i.thread ], [ %i.byy, %.critedge.i.i.i.i.i ] ; 2 uses
  %i.caz = phi i64 [ %i.bzb, %.critedge.i.i.i.i.i.thread ], [ %148, %.critedge.i.i.i.i.i ] ; 3 uses
  %i.cba = getelementptr inbounds i8, ptr %i.byg, i64 %i.caz
  %i.cbb = icmp eq i64 %i.byl, 9223372036854775792
  br i1 %i.cbb, label %bb.si, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.si:                                            ; preds = %bb.sh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
          to label %.noexc2496 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2496:                                       ; preds = %bb.si
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.sh
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bym, i64 1)
  %i.cbc = add nsw i64 %.sroa.speculated.i.i.i, %i.bym ; 2 uses
  %i.cbd = icmp ult i64 %i.cbc, %i.bym
  %i.cbe = call i64 @llvm.umin.i64(i64 %i.cbc, i64 576460752303423487)
  %i.cbf = select i1 %i.cbd, i64 576460752303423487, i64 %i.cbe ; 3 uses
  %.not.i.i.i2494 = icmp ne i64 %i.cbf, 0
  call void @llvm.assume(i1 %.not.i.i.i2494)
  %i.cbg = shl nuw nsw i64 %i.cbf, 4
  %i.cbh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cbg) #26
          to label %.noexc2497 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc2497:                                       ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbh, i64 %i.caz ; 2 uses
  store i64 %i.bxb, ptr %i.cbi, align 8
  %.sroa.6.0..sroa_idx2761 = getelementptr inbounds nuw i8, ptr %i.cbi, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx2761, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.byg, %.sroa.011.0.lcssa.i.i.i.i.i.i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc2497, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cbk, %.lr.ph.i.i.i.i.i ], [ %i.cbh, %.noexc2497 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cbj, %.lr.ph.i.i.i.i.i ], [ %i.byg, %.noexc2497 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !761
  %i.cbj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.cbk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i2495 = icmp eq ptr %i.cbj, %.sroa.011.0.lcssa.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i2495, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !711

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc2497
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cbh, %.noexc2497 ], [ %i.cbk, %.lr.ph.i.i.i.i.i ]
  %i.cbl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  br i1 %i.byw, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i17.i.i

.lr.ph.i.i.i17.i.i:                               ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, %.lr.ph.i.i.i17.i.i
  %.012.i.i.i18.i.i = phi ptr [ %i.cbn, %.lr.ph.i.i.i17.i.i ], [ %i.cbl, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ] ; 2 uses
  %.0911.i.i.i19.i.i = phi ptr [ %i.cbm, %.lr.ph.i.i.i17.i.i ], [ %i.cba, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19.i.i, i64 16, i1 false), !alias.scope !762
  %i.cbm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i.i, i64 16 ; 2 uses
  %i.cbn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i.i, i64 16 ; 2 uses
  %.not.i.i.i20.i.i = icmp eq ptr %i.cbm, %i.byi
  br i1 %.not.i.i.i20.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i17.i.i, !llvm.loop !711

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i17.i.i, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %.0.lcssa.i.i.i21.i.i = phi ptr [ %i.cbl, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ], [ %i.cbn, %.lr.ph.i.i.i17.i.i ]
  %.not.i23.i.i = icmp eq ptr %i.byg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.sj

bb.sj:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.cbo = load ptr, ptr %i.cay, align 8, !tbaa !480
  %i.cbp = ptrtoint ptr %i.cbo to i64
  %i.cbq = sub i64 %i.cbp, %i.byk
  call void @_ZdlPvm(ptr noundef nonnull %i.byg, i64 noundef %i.cbq) #28
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.sj, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.cbh, ptr %.1.i, align 8, !tbaa !481
  store ptr %.0.lcssa.i.i.i21.i.i, ptr %i.byh, align 8, !tbaa !758
  %i.cbr = getelementptr inbounds nuw [16 x i8], ptr %i.cbh, i64 %i.cbf
  store ptr %i.cbr, ptr %i.cay, align 8, !tbaa !480
  br label %.noexc1134

.noexc1134:                                       ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %_ZNSt6vectorISt4pairImmESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit.i, %bb.sf
  %i.cbs = phi i64 [ %148, %bb.sf ], [ %i.bzb, %_ZNSt6vectorISt4pairImmESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_.exit.i ], [ %i.caz, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.cbt = load ptr, ptr %.1.i, align 8, !tbaa !481
  %i.cbu = getelementptr inbounds i8, ptr %i.cbt, i64 %i.cbs
  br label %bb.sk

bb.sk:                                            ; preds = %.noexc1134, %bb.se
  %.sroa.08.0.i.i.i.i.i = phi ptr [ %i.cbu, %.noexc1134 ], [ %.sroa.011.0.lcssa.i.i.i.i.i.i.i, %bb.se ]
  %i.cbv = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i.i.i.i, i64 8
  store i64 %i.bwu, ptr %i.cbv, align 8, !tbaa !468
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc2399, %.critedge.i903, %.critedge.i1101, %.critedge.i1116, %.loopexit.i2500, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.noexc2489, %.critedge.i1130, %.critedge.i1087, %.critedge.i1060, %.critedge.i395, %bb.eo, %bb.er, %.critedge.i367, %.critedge.i381, %.critedge.i410, %bb.mb, %bb.gg, %bb.by, %bb.ah, %.critedge.i729, %bb.jx, %bb.ka, %.critedge.i699, %.critedge.i714, %.critedge.i744, %.critedge.i317, %.critedge.i, %bb.si
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body2401

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076.thread: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i1073, %bb.qe, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076, %bb.sk
  br i1 %i.boj, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1048, label %.critedge265, !llvm.loop !715

.critedge265:                                     ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076.thread, %bb.bb, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i331, %bb.bu, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.bs, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit334, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit295
  %.2161 = phi i1 [ %.01593782, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit295 ], [ %.01593782, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i331 ], [ %.01593782, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ %.01593782, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit334 ], [ %.01593782, %bb.bb ], [ %.01593782, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit ], [ %.01593782, %bb.bs ], [ %.01593782, %bb.bu ], [ true, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit1076.thread ] ; 2 uses
  %i.cbw = load ptr, ptr %111, align 8, !tbaa !44 ; 3 uses
  %i.cbx = load i64, ptr %i.cbw, align 8          ; 3 uses
  %i.cby = and i64 %i.cbx, 1152920405095219200
  %.not.i.i1135 = icmp eq i64 %i.cby, 1152920405095219200
  br i1 %.not.i.i1135, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1137, label %bb.sl, !prof !46

bb.sl:                                            ; preds = %.critedge265
  %i.cbz = add i64 %i.cbx, 1152920405095219200
  %i.cca = and i64 %i.cbz, 1152920405095219200    ; 2 uses
  %i.ccb = and i64 %i.cbx, -1152920405095219201
  %i.ccc = or disjoint i64 %i.cca, %i.ccb
  store i64 %i.ccc, ptr %i.cbw, align 8
  %i.ccd = icmp eq i64 %i.cca, 0
  br i1 %i.ccd, label %bb.sm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1137, !prof !46

bb.sm:                                            ; preds = %bb.sl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cbw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1137 unwind label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.cce = landingpad { ptr, i32 }
          catch ptr null
  %i.ccf = extractvalue { ptr, i32 } %i.cce, 0
  call void @__clang_call_terminate(ptr %i.ccf) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1137: ; preds = %.critedge265, %bb.sl, %bb.sm
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #25
  %i.ccg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02715.03781) #31 ; 2 uses
  %.not2790 = icmp eq ptr %i.ccg, %i.aj
  br i1 %.not2790, label %._crit_edge, label %.lr.ph, !llvm.loop !716

.body2401:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2474, %bb.ra, %bb.qt, %bb.sd, %bb.ru, %bb.ql, %bb.qb, %bb.iq, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2349, %bb.jm, %bb.ix, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2337, %bb.cv, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2271, %bb.dx, %bb.dc, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i, %bb.bp, %bb.bh, %bb.mr, %bb.lt, %.body2298, %.body2368, %bb.nd, %bb.cq, %.body, %.body2410, %bb.cn
  %.pn255.pn.pn.pn = phi { ptr, i32 } [ %i.bpj, %bb.qb ], [ %i.pk, %bb.cn ], [ %.pn222, %bb.nd ], [ %i.aqe, %bb.jm ], [ %.pn234.pn.pn, %.body2368 ], [ %i.ux, %bb.dx ], [ %.pn232, %.body2298 ], [ %.pn230, %bb.lt ], [ %i.kn, %bb.bh ], [ %.pn226.pn, %.body2410 ], [ %i.bbc, %bb.mr ], [ %i.bsi, %bb.qt ], [ %i.lr, %bb.bp ], [ %.pn246.pn.pn.pn, %.body ], [ %.pn240, %bb.cq ], [ %i.brd, %bb.ql ], [ %i.byf, %bb.sd ], [ %i.aqx, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2349 ], [ %i.btj, %bb.ra ], [ %i.qq, %bb.cv ], [ %i.rr, %bb.dc ], [ %i.sk, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ], [ %i.bwh, %bb.ru ], [ %i.vq, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2271 ], [ %i.amv, %bb.iq ], [ %i.anw, %bb.ix ], [ %i.aop, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2337 ], [ %i.buc, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit.i2474 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.cch = load ptr, ptr %111, align 8, !tbaa !44 ; 3 uses
  %i.cci = load i64, ptr %i.cch, align 8          ; 3 uses
  %i.ccj = and i64 %i.cci, 1152920405095219200
  %.not.i.i1138 = icmp eq i64 %i.ccj, 1152920405095219200
  br i1 %.not.i.i1138, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1140, label %bb.so, !prof !46

bb.so:                                            ; preds = %.body2401
  %i.cck = add i64 %i.cci, 1152920405095219200
  %i.ccl = and i64 %i.cck, 1152920405095219200    ; 2 uses
  %i.ccm = and i64 %i.cci, -1152920405095219201
  %i.ccn = or disjoint i64 %i.ccl, %i.ccm
  store i64 %i.ccn, ptr %i.cch, align 8
  %i.cco = icmp eq i64 %i.ccl, 0
  br i1 %i.cco, label %bb.sp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1140, !prof !46

bb.sp:                                            ; preds = %bb.so
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cch)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1140 unwind label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.ccp = landingpad { ptr, i32 }
          catch ptr null
  %i.ccq = extractvalue { ptr, i32 } %i.ccp, 0
  call void @__clang_call_terminate(ptr %i.ccq) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1140: ; preds = %bb.sp, %bb.so, %.body2401, %bb.cm
  %.pn255.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pj, %bb.cm ], [ %.pn255.pn.pn.pn, %.body2401 ], [ %.pn255.pn.pn.pn, %bb.so ], [ %.pn255.pn.pn.pn, %bb.sp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #25
  br label %bb.wz

.preheader:                                       ; preds = %.preheader.preheader, %bb.wt
  %indvars.iv3944 = phi i64 [ %indvars.iv.next3945, %bb.wt ], [ 0, %.preheader.preheader ] ; 5 uses
  %.3162 = phi i1 [ %.5164, %bb.wt ], [ false, %.preheader.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.ccr = load ptr, ptr %1, align 8, !tbaa !44, !noalias !763 ; 2 uses
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 8
  %i.cct = load i64, ptr %i.ccs, align 8, !noalias !763
  %i.ccu = trunc i64 %i.cct to i32
  %i.ccv = and i32 %i.ccu, 1023                   ; 2 uses
  %i.ccw = icmp eq i32 %i.ccv, 1023
  %i.ccx = select i1 %i.ccw, i32 -1, i32 %i.ccv
  %i.ccy = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ccx)
          to label %.noexc1142 unwind label %bb.sy, !noalias !763

.noexc1142:                                       ; preds = %.preheader
  %i.ccz = icmp eq i32 %i.ccy, 2
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccr, i64 24
  %i.cdb = zext i1 %i.ccz to i64
  %i.cdc = getelementptr inbounds nuw [8 x i8], ptr %i.cda, i64 %i.cdb
  %i.cdd = load ptr, ptr %i.cdc, align 8, !tbaa !52, !noalias !763 ; 9 uses
  store ptr %i.cdd, ptr %126, align 8, !tbaa !44, !alias.scope !763
  %i.cde = load i64, ptr %i.cdd, align 8, !noalias !763 ; 3 uses
  %i.cdf = lshr i64 %i.cde, 40
  %i.cdg = trunc nuw nsw i64 %i.cdf to i32
  %i.cdh = and i32 %i.cdg, 1048575                ; 3 uses
  %i.cdi = icmp samesign ult i32 %i.cdh, 1048574
  br i1 %i.cdi, label %bb.sr, label %bb.ss, !prof !45

bb.sr:                                            ; preds = %.noexc1142
  %i.cdj = add nuw nsw i32 %i.cdh, 1
  %i.cdk = zext nneg i32 %i.cdj to i64
  %i.cdl = shl nuw nsw i64 %i.cdk, 40
  %i.cdm = and i64 %i.cde, -1152920405095219201
  %i.cdn = or i64 %i.cdl, %i.cdm
  store i64 %i.cdn, ptr %i.cdd, align 8, !noalias !763
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1144

bb.ss:                                            ; preds = %.noexc1142
  %i.cdo = icmp eq i32 %i.cdh, 1048574
  br i1 %i.cdo, label %bb.st, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1144, !prof !46

bb.st:                                            ; preds = %bb.ss
  %i.cdp = or i64 %i.cde, 1152920405095219200
  store i64 %i.cdp, ptr %i.cdd, align 8, !noalias !763
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cdd)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1144 unwind label %bb.sy, !noalias !763

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1144: ; preds = %bb.ss, %bb.sr, %bb.st
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdd, i64 8 ; 2 uses
  %i.cdr = load i64, ptr %i.cdq, align 8
  %i.cds = trunc i64 %i.cdr to i32
  %i.cdt = and i32 %i.cds, 1023                   ; 2 uses
  %i.cdu = icmp eq i32 %i.cdt, 1023
  %i.cdv = select i1 %i.cdu, i32 -1, i32 %i.cdt
  %i.cdw = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.cdv)
          to label %bb.su unwind label %bb.sz

bb.su:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1144
  %i.cdx = icmp eq i32 %i.cdw, 2
  %i.cdy = load i64, ptr %i.cdq, align 8
  %i.cdz = lshr i64 %i.cdy, 32
  %i.cea = and i64 %i.cdz, 67108863
  %i.ceb = sext i1 %i.cdx to i64
  %i.cec = add nsw i64 %i.cea, %i.ceb
  %i.ced = and i64 %i.cec, 4294967295
  %i.cee = icmp samesign ugt i64 %i.ced, %indvars.iv3944
  %i.cef = load i64, ptr %i.cdd, align 8          ; 3 uses
  %i.ceg = and i64 %i.cef, 1152920405095219200
  %.not.i.i1146 = icmp eq i64 %i.ceg, 1152920405095219200
  br i1 %.not.i.i1146, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1148, label %bb.sv, !prof !46

bb.sv:                                            ; preds = %bb.su
  %i.ceh = add i64 %i.cef, 1152920405095219200
  %i.cei = and i64 %i.ceh, 1152920405095219200    ; 2 uses
  %i.cej = and i64 %i.cef, -1152920405095219201
  %i.cek = or disjoint i64 %i.cei, %i.cej
  store i64 %i.cek, ptr %i.cdd, align 8
  %i.cel = icmp eq i64 %i.cei, 0
  br i1 %i.cel, label %bb.sw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1148, !prof !46

bb.sw:                                            ; preds = %bb.sv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cdd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1148 unwind label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %i.cem = landingpad { ptr, i32 }
          catch ptr null
  %i.cen = extractvalue { ptr, i32 } %i.cem, 0
  call void @__clang_call_terminate(ptr %i.cen) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1148: ; preds = %bb.su, %bb.sv, %bb.sw
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #25
  br i1 %i.cee, label %bb.tb, label %.loopexit2801

bb.sy:                                            ; preds = %bb.st, %.preheader
  %i.ceo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ta

bb.sz:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit1144
  %i.cep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %126) #25
  br label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %bb.sy
  %.pn172 = phi { ptr, i32 } [ %i.cep, %bb.sz ], [ %i.ceo, %bb.sy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #25
  br label %bb.wz

bb.tb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1148
  %i.ceq = load ptr, ptr %i.cv, align 8, !tbaa !350 ; 2 uses
  %.not10.i.i.i.i1149 = icmp eq ptr %i.ceq, null
end_hunk_0
