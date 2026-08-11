inline.NumInlined: 3818
inline.NumDeleted: 1898
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12rebuildGraphEPKjjRSt6vectorIjSaIjEES9_:bb.a
  %i.aih = shl i64 %n.vec1715, 2                  ; 2 uses
  %i.aii = getelementptr i8, ptr %i.ahw, i64 %i.aih
  %i.aij = getelementptr i8, ptr %i.ahx, i64 %i.aih
  br label %vector.body1716

vector.body1716:                                  ; preds = %vector.body1716, %vector.ph1714
  %index1717 = phi i64 [ 0, %vector.ph1714 ], [ %index.next1722, %vector.body1716 ] ; 2 uses
  %i.aik = shl i64 %index1717, 2                  ; 2 uses
  %next.gep1718 = getelementptr i8, ptr %i.ahw, i64 %i.aik ; 2 uses
  %next.gep1719 = getelementptr i8, ptr %i.ahx, i64 %i.aik ; 2 uses
  %i.ail = getelementptr i8, ptr %next.gep1719, i64 16
  %wide.load1720 = load <4 x i32>, ptr %next.gep1719, align 4, !tbaa !16
  %wide.load1721 = load <4 x i32>, ptr %i.ail, align 4, !tbaa !16
  %i.aim = getelementptr i8, ptr %next.gep1718, i64 16
  store <4 x i32> %wide.load1720, ptr %next.gep1718, align 4, !tbaa !16
  store <4 x i32> %wide.load1721, ptr %i.aim, align 4, !tbaa !16
  %index.next1722 = add nuw i64 %index1717, 8     ; 2 uses
  %i.ain = icmp eq i64 %index.next1722, %n.vec1715
  br i1 %i.ain, label %middle.block1723, label %vector.body1716, !llvm.loop !312

middle.block1723:                                 ; preds = %vector.body1716
  %cmp.n1724 = icmp eq i64 %i.aif, %n.vec1715
  br i1 %cmp.n1724, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686, label %.lr.ph.i.i.i.i.i.i.i.i682.preheader2002

.lr.ph.i.i.i.i.i.i.i.i682.preheader2002:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i682.preheader, %middle.block1723
  %.013.i.i.i.i.i.i.i.i683.ph = phi ptr [ %i.ahw, %.lr.ph.i.i.i.i.i.i.i.i682.preheader ], [ %i.aii, %middle.block1723 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i684.ph = phi ptr [ %i.ahx, %.lr.ph.i.i.i.i.i.i.i.i682.preheader ], [ %i.aij, %middle.block1723 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i682

.lr.ph.i.i.i.i.i.i.i.i682:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i682.preheader2002, %.lr.ph.i.i.i.i.i.i.i.i682
  %.013.i.i.i.i.i.i.i.i683 = phi ptr [ %i.aiq, %.lr.ph.i.i.i.i.i.i.i.i682 ], [ %.013.i.i.i.i.i.i.i.i683.ph, %.lr.ph.i.i.i.i.i.i.i.i682.preheader2002 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i684 = phi ptr [ %i.aip, %.lr.ph.i.i.i.i.i.i.i.i682 ], [ %.sroa.08.012.i.i.i.i.i.i.i.i684.ph, %.lr.ph.i.i.i.i.i.i.i.i682.preheader2002 ] ; 2 uses
  %i.aio = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i684, align 4, !tbaa !16
  store i32 %i.aio, ptr %.013.i.i.i.i.i.i.i.i683, align 4, !tbaa !16
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i684, i64 4 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i683, i64 4
  %.not.i.i.i.i.i.i.i.i685 = icmp eq ptr %i.aip, %i.aia
  br i1 %.not.i.i.i.i.i.i.i.i685, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686, label %.lr.ph.i.i.i.i.i.i.i.i682, !llvm.loop !313

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686: ; preds = %.lr.ph.i.i.i.i.i.i.i.i682, %middle.block1723, %bb.bp
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahi, i64 24
  %.not.i.i.i.i687 = icmp eq ptr %i.ahx, %i.air
  br i1 %.not.i.i.i.i687, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689, label %bb.bq

bb.bq:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686
  call void @_ZdlPv(ptr noundef %i.ahx) #17
  %.pre2.pre.i.i.i688 = load i32, ptr %i.ahk, align 8, !tbaa !286
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689: ; preds = %bb.bq, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686
  %.pre2.i.i.i690 = phi i32 [ %i.ahy, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686 ], [ %.pre2.pre.i.i.i688, %bb.bq ]
  store ptr %i.ahw, ptr %i.ahj, align 8, !tbaa !288
  store i32 %.09.i.i.i.i679, ptr %i.ahm, align 4, !tbaa !287
  br label %_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit691

_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit691: ; preds = %._crit_edge.i.i.i677, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689
  %i.ais = phi i32 [ %i.ahl, %._crit_edge.i.i.i677 ], [ %.pre2.i.i.i690, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689 ]
  %i.ait = phi ptr [ %.pre.i.i.i678, %._crit_edge.i.i.i677 ], [ %i.ahw, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689 ]
  %i.aiu = shl i32 %i.ahd, 4
  %i.aiv = or disjoint i32 %i.aiu, 7              ; 2 uses
  %i.aiw = zext i32 %i.ais to i64
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %i.aiw
  store i32 %i.aiv, ptr %i.aix, align 4, !tbaa !16
  %i.aiy = load i32, ptr %i.ahk, align 8, !tbaa !286
  %i.aiz = add i32 %i.aiy, 1
  store i32 %i.aiz, ptr %i.ahk, align 8, !tbaa !286
  call void @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE9recordUseENS0_4BcOpES4_(ptr noundef nonnull align 8 dereferenceable(456) %i.ahe, i32 %i.aiv, i32 %.sroa.2329.0.copyload)
  %i.aja = load i32, ptr %i.a, align 4, !tbaa !128
  %i.ajb = lshr i32 %i.aja, 8
  %i.ajc = trunc i32 %i.ajb to i8                 ; 3 uses
  %i.ajd = load ptr, ptr %0, align 8, !tbaa !230, !nonnull !208, !align !239 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 400 ; 2 uses
  %.0.copyload.i.i.i.i = load i32, ptr %5, align 4 ; 6 uses
  %.0.insert.ext.i.i.i.i = zext i32 %.0.copyload.i.i.i.i to i64 ; 4 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajd, i64 408
  %i.ajg = load i64, ptr %i.ajf, align 8, !tbaa !25 ; 2 uses
  %i.ajh = urem i64 %.0.insert.ext.i.i.i.i, %i.ajg ; 3 uses
  %i.aji = load ptr, ptr %i.aje, align 8, !tbaa !17
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.aji, i64 %i.ajh
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i692 = icmp eq ptr %i.ajk, null
  br i1 %.not.i.i.i.i692, label %.loopexit.i.i, label %bb.br

bb.br:                                            ; preds = %_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit691
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !315 ; 4 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  %i.ajo = load i64, ptr %i.ajn, align 8, !tbaa !316
  %i.ajp = icmp eq i64 %i.ajo, %.0.insert.ext.i.i.i.i
  %i.ajq = load i32, ptr %i.ajm, align 8
  %i.ajr = icmp eq i32 %.0.copyload.i.i.i.i, %i.ajq
  %i.ajs = select i1 %i.ajp, i1 %i.ajr, i1 false
  br i1 %i.ajs, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit, label %.lr.ph.i.i.i.i693

bb.bs:                                            ; preds = %bb.bt
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  %i.aju = icmp eq i64 %i.aka, %.0.insert.ext.i.i.i.i
  %i.ajv = load i32, ptr %i.ajt, align 8
  %i.ajw = icmp eq i32 %.0.copyload.i.i.i.i, %i.ajv
  %i.ajx = select i1 %i.aju, i1 %i.ajw, i1 false
  br i1 %i.ajx, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit, label %.lr.ph.i.i.i.i693, !llvm.loop !318

.lr.ph.i.i.i.i693:                                ; preds = %bb.br, %bb.bs
  %.020.i.i.i.i = phi ptr [ %i.ajy, %bb.bs ], [ %i.ajl, %bb.br ]
  %i.ajy = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !315 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ajy, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i693
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 16
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !316 ; 2 uses
  %i.akb = urem i64 %i.aka, %i.ajg
  %.not19.i.i.i.i = icmp eq i64 %i.akb, %i.ajh
  br i1 %.not19.i.i.i.i, label %bb.bs, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !318

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.bt
  br label %.loopexit.i.i, !llvm.loop !318

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i693, %..loopexit_crit_edge21.i.i.i.i, %_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit691
  %i.akc = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 5 uses
  store ptr null, ptr %i.akc, align 8, !tbaa !315
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  store i32 %.0.copyload.i.i.i.i, ptr %i.akd, align 8, !tbaa !16
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 12
  store i8 0, ptr %i.ake, align 4, !tbaa !319
  %i.akf = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.aje, i64 noundef %i.ajh, i64 noundef %.0.insert.ext.i.i.i.i, ptr noundef nonnull %i.akc, i64 noundef 1)
          to label %.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge: ; preds = %.loopexit.i.i
  %.pre1224 = load i32, ptr %i.a, align 4, !tbaa !128
  %.sroa.0326.0.copyload.pre = load i32, ptr %5, align 4, !tbaa !16
  %.pre1228 = lshr i32 %.pre1224, 8
  %.pre1229 = trunc i32 %.pre1228 to i8
  br label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit

common.resume:                                    ; preds = %bb.gc, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i872, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i828, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i725, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.akg, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.aqy, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i725 ], [ %i.bht, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i828 ], [ %i.bpq, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i872 ], [ %i.cir, %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.pn, %bb.gc ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.akg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.akc, i64 noundef 24) #19
  br label %common.resume

_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit: ; preds = %bb.bs, %.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge, %bb.br
  %.pre-phi1230 = phi i8 [ %.pre1229, %.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge ], [ %i.ajc, %bb.br ], [ %i.ajc, %bb.bs ]
  %.sroa.0326.0.copyload = phi i32 [ %.sroa.0326.0.copyload.pre, %.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge ], [ %.0.copyload.i.i.i.i, %bb.br ], [ %.0.copyload.i.i.i.i, %bb.bs ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.akf, %.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge ], [ %i.ajl, %bb.br ], [ %i.ajy, %bb.bs ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i8 %i.ajc, ptr %.1.i.i, align 1, !tbaa !16
  %i.akh = load ptr, ptr %0, align 8, !tbaa !230, !nonnull !208, !align !239 ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 128 ; 3 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akh, i64 136 ; 4 uses
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !321 ; 5 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akh, i64 144 ; 2 uses
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !322
  %.not.i.i694 = icmp eq ptr %i.akk, %i.akm
  br i1 %.not.i.i694, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0326.0.copyload to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.akk, align 4
  %i.akn = load ptr, ptr %i.akj, align 8, !tbaa !321
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 8 ; 2 uses
  store ptr %i.ako, ptr %i.akj, align 8, !tbaa !321
  %.pre.i695 = load ptr, ptr %i.aki, align 8, !tbaa !323
  br label %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj.exit

bb.bv:                                            ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit
  %i.akp = load ptr, ptr %i.aki, align 8, !tbaa !323 ; 7 uses
  %i.akq = ptrtoint ptr %i.akk to i64             ; 2 uses
  %i.akr = ptrtoint ptr %i.akp to i64             ; 3 uses
  %i.aks = sub i64 %i.akq, %i.akr                 ; 4 uses
  %i.akt = icmp eq i64 %i.aks, 9223372036854775800
  br i1 %i.akt, label %bb.bw, label %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bv
  %i.aku = ashr exact i64 %i.aks, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aku, i64 1)
  %i.akv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aku ; 2 uses
  %i.akw = icmp ult i64 %i.akv, %i.aku
  %i.akx = call i64 @llvm.umin.i64(i64 %i.akv, i64 1152921504606846975)
  %i.aky = select i1 %i.akw, i64 1152921504606846975, i64 %i.akx ; 3 uses
  %.not.i.i.i.i696 = icmp ne i64 %i.aky, 0
  call void @llvm.assume(i1 %.not.i.i.i.i696)
  %i.akz = shl nuw nsw i64 %i.aky, 3
  %i.ala = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akz) #20 ; 9 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.aks
  %.sroa.0.0.insert.ext2.i = zext i32 %.sroa.0326.0.copyload to i64
  store i64 %.sroa.0.0.insert.ext2.i, ptr %i.alb, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.akp, %i.akk
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.alc = ptrtoaddr ptr %i.ala to i64
  %11 = add i64 %i.akq, -8
  %12 = sub i64 %11, %i.akr                       ; 2 uses
  %i.ald = lshr i64 %12, 3
  %i.ale = add nuw nsw i64 %i.ald, 1              ; 2 uses
  %min.iters.check1696 = icmp ult i64 %12, 24
  %i.alf = sub i64 %i.akr, %i.alc
  %diff.check1694 = icmp ugt i64 %i.alf, -32
  %or.cond1960 = or i1 %min.iters.check1696, %diff.check1694
  br i1 %or.cond1960, label %.lr.ph.i.i.i.i.i.i.preheader2001, label %vector.ph1697

vector.ph1697:                                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec1698 = and i64 %i.ale, 4611686018427387900 ; 3 uses
  %i.alg = shl i64 %n.vec1698, 3                  ; 2 uses
  %i.alh = getelementptr i8, ptr %i.ala, i64 %i.alg ; 2 uses
  %i.ali = getelementptr i8, ptr %i.akp, i64 %i.alg
  br label %vector.body1699

vector.body1699:                                  ; preds = %vector.body1699, %vector.ph1697
  %index1700 = phi i64 [ 0, %vector.ph1697 ], [ %index.next1705, %vector.body1699 ] ; 2 uses
  %i.alj = shl i64 %index1700, 3                  ; 2 uses
  %next.gep1701 = getelementptr i8, ptr %i.ala, i64 %i.alj ; 2 uses
  %next.gep1702 = getelementptr i8, ptr %i.akp, i64 %i.alj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.alk = getelementptr i8, ptr %next.gep1702, i64 16
  %wide.load1703 = load <2 x i64>, ptr %next.gep1702, align 4, !alias.scope !327, !noalias !324
  %wide.load1704 = load <2 x i64>, ptr %i.alk, align 4, !alias.scope !327, !noalias !324
  %i.all = getelementptr i8, ptr %next.gep1701, i64 16
  store <2 x i64> %wide.load1703, ptr %next.gep1701, align 4, !alias.scope !324, !noalias !327
  store <2 x i64> %wide.load1704, ptr %i.all, align 4, !alias.scope !324, !noalias !327
  %index.next1705 = add nuw i64 %index1700, 4     ; 2 uses
  %i.alm = icmp eq i64 %index.next1705, %n.vec1698
  br i1 %i.alm, label %middle.block1706, label %vector.body1699, !llvm.loop !329

middle.block1706:                                 ; preds = %vector.body1699
  %cmp.n1707 = icmp eq i64 %i.ale, %n.vec1698
  br i1 %cmp.n1707, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader2001

.lr.ph.i.i.i.i.i.i.preheader2001:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block1706
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ala, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.alh, %middle.block1706 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.akp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ali, %middle.block1706 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader2001, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.alp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader2001 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.alo, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader2001 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.aln = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !327, !noalias !324
  store i64 %i.aln, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !324, !noalias !327
  %i.alo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.alo, %i.akk
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !330

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block1706, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ala, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.alh, %middle.block1706 ], [ %i.alp, %.lr.ph.i.i.i.i.i.i ]
  %i.alq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.akp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.akp, i64 noundef %i.aks) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.bx, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ala, ptr %i.aki, align 8, !tbaa !323
  store ptr %i.alq, ptr %i.akj, align 8, !tbaa !321
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.ala, i64 %i.aky
  store ptr %i.alr, ptr %i.akl, align 8, !tbaa !322
  br label %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj.exit

_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj.exit: ; preds = %bb.bu, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.als = phi ptr [ %.pre.i695, %bb.bu ], [ %i.ala, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.alt = phi ptr [ %i.ako, %bb.bu ], [ %i.alq, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.alu = ptrtoint ptr %i.alt to i64
  %i.alv = ptrtoint ptr %i.als to i64
  %i.alw = sub i64 %i.alu, %i.alv
  %i.alx = trunc i64 %i.alw to i32
  %i.aly = shl i32 %i.alx, 1
  %i.alz = and i32 %i.aly, -16
  %i.ama = add i32 %i.alz, -11
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %.pre-phi1230, i32 %i.ama)
  %i.amb = load i32, ptr %i.a, align 4, !tbaa !128
  %i.amc = lshr i32 %i.amb, 8
  %i.amd = trunc i32 %i.amc to i8
  %i.ame = add i8 %i.amd, 1
  %i.amf = load ptr, ptr %0, align 8, !tbaa !230, !nonnull !208, !align !239
  %.sroa.0324.0.copyload = load i32, ptr %5, align 4, !tbaa !16
  %i.amg = call i32 @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %i.amf, i32 %.sroa.0324.0.copyload, i32 noundef 1)
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %i.ame, i32 %i.amg)
  br label %.loopexit1058

bb.by:                                            ; preds = %bb.z, %bb.z
  %i.amh = load i32, ptr %i.a, align 4, !tbaa !128 ; 3 uses
  %i.ami = lshr i32 %i.amh, 16
  %i.amj = and i32 %i.ami, 255                    ; 4 uses
  %i.amk = add nsw i32 %i.amj, -1
  %i.aml = lshr i32 %i.amh, 24
  %i.amm = add nsw i32 %i.aml, -1                 ; 3 uses
  %.sroa.2316.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %.pre1218, i32 %.sroa.2316.0.copyload, i32 noundef %i.amk)
  %.sroa.0312.0.copyload = load ptr, ptr %6, align 8, !tbaa !285
  %.sroa.2313.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0312.0.copyload, i32 %.sroa.2313.0.copyload, i32 noundef %i.amm)
  %i.amn = icmp eq i32 %i.fx, 87
  br i1 %i.amn, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %.sroa.0309.0.copyload = load ptr, ptr %6, align 8, !tbaa !285
  %.sroa.2310.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.amo = load i32, ptr %i.b, align 4, !tbaa !128
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0309.0.copyload, i32 %.sroa.2310.0.copyload, i32 noundef %i.amo)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sroa.0306.0.copyload = load ptr, ptr %6, align 8, !tbaa !285
  %.sroa.2307.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.amp = load i32, ptr %i.a, align 4, !tbaa !128
  %i.amq = lshr i32 %i.amp, 8
  %i.amr = trunc i32 %i.amq to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0306.0.copyload, i32 %.sroa.2307.0.copyload, i8 noundef zeroext %i.amr)
  %.not531.not1139 = icmp samesign ugt i32 %i.amj, 1
  br i1 %.not531.not1139, label %.lr.ph1142, label %._crit_edge1143

._crit_edge1143:                                  ; preds = %bb.ca
  %i.ams = icmp eq i32 %i.amj, 0
  br i1 %i.ams, label %bb.cb, label %._crit_edge1143.thread

.lr.ph1142:                                       ; preds = %bb.ca, %.lr.ph1142
  %.05111140 = phi i32 [ %i.amx, %.lr.ph1142 ], [ 1, %bb.ca ] ; 2 uses
  %.sroa.0300.0.copyload = load ptr, ptr %6, align 8, !tbaa !285
  %.sroa.2301.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.amt = load i32, ptr %i.a, align 4, !tbaa !128
  %i.amu = lshr i32 %i.amt, 8
  %i.amv = add nuw nsw i32 %i.amu, %.05111140
  %i.amw = trunc i32 %i.amv to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0300.0.copyload, i32 %.sroa.2301.0.copyload, i8 noundef zeroext %i.amw)
  %i.amx = add nuw nsw i32 %.05111140, 1          ; 2 uses
  %exitcond1215.not = icmp eq i32 %i.amx, %i.amj
  br i1 %exitcond1215.not, label %._crit_edge1143.thread, label %.lr.ph1142, !llvm.loop !331

bb.cb:                                            ; preds = %._crit_edge1143
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %.sroa.0297.0.copyload = load i32, ptr %i.ar, align 8, !tbaa !16
  %i.amy = load i32, ptr %i.a, align 4, !tbaa !128
  %i.amz = lshr i32 %i.amy, 8
  %i.ana = trunc i32 %i.amz to i8
  %i.anb = add i8 %i.ana, 1
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE20findProducersUpToTopENS0_4BcOpEh(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.202") align 8 %8, ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %.sroa.0297.0.copyload, i8 noundef zeroext %i.anb)
  %i.anc = load ptr, ptr %8, align 8, !tbaa !284  ; 3 uses
  %i.and = load ptr, ptr %i.ck, align 8, !tbaa !284 ; 2 uses
  %.not10551144 = icmp eq ptr %i.anc, %i.and
  br i1 %.not10551144, label %._crit_edge1148, label %.lr.ph1147

._crit_edge1148.loopexit:                         ; preds = %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit713
  %.pre1223 = load ptr, ptr %8, align 8, !tbaa !332
  br label %._crit_edge1148

._crit_edge1148:                                  ; preds = %._crit_edge1148.loopexit, %bb.cb
  %i.ane = phi ptr [ %.pre1223, %._crit_edge1148.loopexit ], [ %i.anc, %bb.cb ] ; 3 uses
  %.not.i.i.i697 = icmp eq ptr %i.ane, null
  br i1 %.not.i.i.i697, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge1148
  %i.anf = load ptr, ptr %i.cl, align 8, !tbaa !333
  %i.ang = ptrtoint ptr %i.anf to i64
  %i.anh = ptrtoint ptr %i.ane to i64
  %i.ani = sub i64 %i.ang, %i.anh
  call void @_ZdlPvm(ptr noundef nonnull %i.ane, i64 noundef %i.ani) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %._crit_edge1148, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %._crit_edge1143.thread

.lr.ph1147:                                       ; preds = %bb.cb, %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit713
  %.sroa.01015.01145 = phi ptr [ %i.apd, %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit713 ], [ %i.anc, %bb.cb ] ; 2 uses
  %i.anj = load ptr, ptr %0, align 8, !tbaa !230, !nonnull !208, !align !239
  %.sroa.0293.0.copyload = load ptr, ptr %6, align 8, !tbaa !285
  %.sroa.2294.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16 ; 2 uses
  %.sroa.0292.0.copyload = load i32, ptr %.sroa.01015.01145, align 4, !tbaa !16 ; 2 uses
  %i.ank = lshr i32 %.sroa.2294.0.copyload, 4
  %i.anl = zext nneg i32 %i.ank to i64
  %i.anm = load ptr, ptr %.sroa.0293.0.copyload, align 8, !tbaa !264
  %i.ann = getelementptr inbounds nuw [80 x i8], ptr %i.anm, i64 %i.anl ; 4 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 8 ; 3 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ann, i64 16 ; 5 uses
  %i.anq = load i32, ptr %i.anp, align 8, !tbaa !286 ; 6 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ann, i64 20 ; 2 uses
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !287
  %i.ant = icmp eq i32 %i.anq, %i.ans
  br i1 %i.ant, label %bb.cd, label %._crit_edge.i.i698

._crit_edge.i.i698:                               ; preds = %.lr.ph1147
  %.pre.i.i699 = load ptr, ptr %i.ano, align 8, !tbaa !288
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i

bb.cd:                                            ; preds = %.lr.ph1147
  %i.anu = add i32 %i.anq, 1
  %i.anv = lshr i32 %i.anq, 1
  %i.anw = add i32 %i.anv, %i.anq                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEEC2ERKS3_:bb.a
  %i.al = icmp ugt i64 %i.ak, 230584300921369395
  br i1 %i.al, label %.noexc.i.i51, label %_ZNSt15__new_allocatorIN4Luau8Bytecode9BcVmConstEE8allocateEmPKv.exit.i.i.i.i, !prof !431

.noexc.i.i51:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc52 unwind label %bb.ar

.noexc52:                                         ; preds = %.noexc.i.i51
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode9BcVmConstEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #20
          to label %.noexc53 unwind label %bb.ar

.noexc53:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode9BcVmConstEE8allocateEmPKv.exit.i.i.i.i, %bb.e
  %i.an = phi ptr [ null, %bb.e ], [ %i.am, %_ZNSt15__new_allocatorIN4Luau8Bytecode9BcVmConstEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.an, ptr %i.ac, align 8, !tbaa !131
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !130
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !132
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !526 ; 2 uses
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !526 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not7.i.i.i.i.i, label %.loopexit138, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc53, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.an, %.noexc53 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.ar, %.noexc53 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !139
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.as
  br i1 %.not.i.i.i.i.i, label %.loopexit138, label %.lr.ph.i.i.i.i.i, !llvm.loop !527

.loopexit138:                                     ; preds = %.lr.ph.i.i.i.i.i, %.noexc53
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %.noexc53 ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !130
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !528 ; 2 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !390 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %.not.i.i.i.i54 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i54, label %.noexc57, label %bb.g

bb.g:                                             ; preds = %.loopexit138
  %i.bd = icmp ugt i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %.noexc.i.i55, label %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcImmEE8allocateEmPKv.exit.i.i.i.i, !prof !431

.noexc.i.i55:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc56 unwind label %bb.as

.noexc56:                                         ; preds = %.noexc.i.i55
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode5BcImmEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #20
          to label %.noexc57 unwind label %bb.as

.noexc57:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcImmEE8allocateEmPKv.exit.i.i.i.i, %.loopexit138
  %i.bf = phi ptr [ null, %.loopexit138 ], [ %i.be, %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcImmEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !390
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !528
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !391
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !529 ; 3 uses
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !529
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, 8
  br i1 %i.bo, label %bb.h, label %bb.i, !prof !432

bb.h:                                             ; preds = %.noexc57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bf, ptr align 4 %i.bj, i64 %i.bn, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc57
  %i.bp = icmp eq i64 %i.bn, 8
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = load i64, ptr %i.bj, align 4
  store i64 %i.bq, ptr %i.bf, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.br = getelementptr inbounds i8, ptr %i.bf, i64 %i.bn
  store ptr %i.br, ptr %i.bg, align 8, !tbaa !528
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !387 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !386 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %.not.i.i.i.i58 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i.i.i.i58, label %.noexc62, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = sdiv exact i64 %i.bz, 56
  %i.cb = icmp ugt i64 %i.ca, 164703072086692425
  br i1 %i.cb, label %.noexc.i.i60, label %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcPhiEE8allocateEmPKv.exit.i.i.i.i, !prof !431

.noexc.i.i60:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc61 unwind label %bb.at

.noexc61:                                         ; preds = %.noexc.i.i60
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode5BcPhiEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #20
          to label %.noexc62 unwind label %bb.at

.noexc62:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcPhiEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.cd = phi ptr [ null, %bb.k ], [ %i.cc, %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcPhiEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.cd, ptr %i.bs, align 8, !tbaa !386
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !387
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bz
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !389
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !530
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !530
  %i.cj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode5BcPhiESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ch, ptr %i.ci, ptr noundef %i.cd)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %.noexc62
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %i.bs, align 8, !tbaa !386 ; 3 uses
  %.not.i.i.i59 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i59, label %.body63, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !389
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #19
  br label %.body63

bb.o:                                             ; preds = %.noexc62
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !387
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !321 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !323 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i65 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i.i.i65, label %.noexc74, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp ugt i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %.noexc.i.i72, label %_ZNSt15__new_allocatorIN4Luau8Bytecode6BcProjEE8allocateEmPKv.exit.i.i.i.i, !prof !431

.noexc.i.i72:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc73 unwind label %bb.au

.noexc73:                                         ; preds = %.noexc.i.i72
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode6BcProjEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.p
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #20
          to label %.noexc74 unwind label %bb.au

.noexc74:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode6BcProjEE8allocateEmPKv.exit.i.i.i.i, %bb.o
  %i.da = phi ptr [ null, %bb.o ], [ %i.cz, %_ZNSt15__new_allocatorIN4Luau8Bytecode6BcProjEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.da, ptr %i.cq, align 8, !tbaa !323
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.da, ptr %i.db, align 8, !tbaa !321
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !322
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !531 ; 5 uses
  %i.df = load ptr, ptr %i.cs, align 8, !tbaa !531 ; 3 uses
  %.not7.i.i.i.i.i66 = icmp eq ptr %i.de, %i.df
  br i1 %.not7.i.i.i.i.i66, label %.loopexit137, label %.lr.ph.i.i.i.i.i67.preheader

.lr.ph.i.i.i.i.i67.preheader:                     ; preds = %.noexc74
  %i.dg = ptrtoaddr ptr %i.de to i64              ; 2 uses
  %i.dh = ptrtoaddr ptr %i.da to i64
  %i.di = ptrtoaddr ptr %i.df to i64
  %3 = add i64 %i.di, -8
  %4 = sub i64 %3, %i.dg                          ; 2 uses
  %i.dj = lshr i64 %4, 3
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.dl = sub i64 %i.dg, %i.dh
  %diff.check = icmp ugt i64 %i.dl, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i67.preheader198, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i67.preheader
  %n.vec = and i64 %i.dk, 4611686018427387900     ; 3 uses
  %i.dm = shl i64 %n.vec, 3                       ; 2 uses
  %i.dn = getelementptr i8, ptr %i.da, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %i.de, i64 %i.dm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.da, i64 %i.dp ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.de, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep193, align 4
  %wide.load194 = load <2 x i64>, ptr %i.dq, align 4
  %i.dr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load194, ptr %i.dr, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !532

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %.loopexit137, label %.lr.ph.i.i.i.i.i67.preheader198

.lr.ph.i.i.i.i.i67.preheader198:                  ; preds = %.lr.ph.i.i.i.i.i67.preheader, %middle.block
  %.09.i.i.i.i.i68.ph = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i67.preheader ], [ %i.dn, %middle.block ]
  %.sroa.04.08.i.i.i.i.i69.ph = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i67.preheader ], [ %i.do, %middle.block ]
  br label %.lr.ph.i.i.i.i.i67

.lr.ph.i.i.i.i.i67:                               ; preds = %.lr.ph.i.i.i.i.i67.preheader198, %.lr.ph.i.i.i.i.i67
  %.09.i.i.i.i.i68 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i67 ], [ %.09.i.i.i.i.i68.ph, %.lr.ph.i.i.i.i.i67.preheader198 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i69 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i67 ], [ %.sroa.04.08.i.i.i.i.i69.ph, %.lr.ph.i.i.i.i.i67.preheader198 ] ; 2 uses
  %i.dt = load i64, ptr %.sroa.04.08.i.i.i.i.i69, align 4
  store i64 %i.dt, ptr %.09.i.i.i.i.i68, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i69, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i68, i64 8 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.du, %i.df
  br i1 %.not.i.i.i.i.i70, label %.loopexit137, label %.lr.ph.i.i.i.i.i67, !llvm.loop !533

.loopexit137:                                     ; preds = %.lr.ph.i.i.i.i.i67, %middle.block, %.noexc74
  %.0.lcssa.i.i.i.i.i71 = phi ptr [ %i.da, %.noexc74 ], [ %i.dn, %middle.block ], [ %i.dv, %.lr.ph.i.i.i.i.i67 ]
  store ptr %.0.lcssa.i.i.i.i.i71, ptr %i.db, align 8, !tbaa !321
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !148 ; 2 uses
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !149 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i75 = icmp eq ptr %i.dz, %i.ea
  br i1 %.not.i.i.i.i75, label %.noexc84, label %bb.q

bb.q:                                             ; preds = %.loopexit137
  %i.ee = sdiv exact i64 %i.ed, 264
  %i.ef = icmp ugt i64 %i.ee, 34937015291116575
  br i1 %i.ef, label %.noexc.i.i82, label %_ZNSt15__new_allocatorIN4Luau15BytecodeBuilder10TableShapeEE8allocateEmPKv.exit.i.i.i.i, !prof !431

.noexc.i.i82:                                     ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc83 unwind label %bb.av

.noexc83:                                         ; preds = %.noexc.i.i82
  unreachable

_ZNSt15__new_allocatorIN4Luau15BytecodeBuilder10TableShapeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.q
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #20
          to label %.noexc84 unwind label %bb.av

.noexc84:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau15BytecodeBuilder10TableShapeEE8allocateEmPKv.exit.i.i.i.i, %.loopexit137
  %i.eh = phi ptr [ null, %.loopexit137 ], [ %i.eg, %_ZNSt15__new_allocatorIN4Luau15BytecodeBuilder10TableShapeEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.eh, ptr %i.dw, align 8, !tbaa !149
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !148
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ed
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !154
  %i.el = load ptr, ptr %i.dx, align 8, !tbaa !534 ; 2 uses
  %i.em = load ptr, ptr %i.dy, align 8, !tbaa !534 ; 2 uses
  %.not7.i.i.i.i.i76 = icmp eq ptr %i.el, %i.em
  br i1 %.not7.i.i.i.i.i76, label %.loopexit136, label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %.noexc84, %.lr.ph.i.i.i.i.i77
  %.09.i.i.i.i.i78 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i77 ], [ %i.eh, %.noexc84 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i79 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i77 ], [ %i.el, %.noexc84 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %.09.i.i.i.i.i78, ptr noundef nonnull align 4 dereferenceable(264) %.sroa.04.08.i.i.i.i.i79, i64 264, i1 false), !tbaa.struct !155
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i79, i64 264 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i78, i64 264 ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.en, %i.em
  br i1 %.not.i.i.i.i.i80, label %.loopexit136, label %.lr.ph.i.i.i.i.i77, !llvm.loop !535

.loopexit136:                                     ; preds = %.lr.ph.i.i.i.i.i77, %.noexc84
  %.0.lcssa.i.i.i.i.i81 = phi ptr [ %i.eh, %.noexc84 ], [ %i.eo, %.lr.ph.i.i.i.i.i77 ]
  store ptr %.0.lcssa.i.i.i.i.i81, ptr %i.ei, align 8, !tbaa !148
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 176
  invoke void @_ZNSt6vectorIN4Luau15BytecodeBuilder10ClassShapeESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %bb.r unwind label %bb.aw

bb.r:                                             ; preds = %.loopexit136
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.et = load i64, ptr %i.es, align 8
  store i64 %i.et, ptr %i.er, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  store ptr %i.ew, ptr %i.eu, align 8, !tbaa !9
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !27 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.ez, ptr %i.b, align 8, !tbaa !101
  %i.fa = icmp ugt i64 %i.ez, 15
  br i1 %i.fa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.r
  %i.fb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc85 unwind label %bb.ax  ; 2 uses

.noexc85:                                         ; preds = %.noexc.i
  store ptr %i.fb, ptr %i.eu, align 8, !tbaa !27
  %i.fc = load i64, ptr %i.b, align 8, !tbaa !101
  store i64 %i.fc, ptr %i.ew, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc85, %bb.r
  %i.fd = phi ptr [ %i.fb, %.noexc85 ], [ %i.ew, %bb.r ] ; 2 uses
  switch i64 %i.ez, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.fe = load i8, ptr %i.ex, align 1, !tbaa !16
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !16
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr align 1 %i.ex, i64 %i.ez, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.ff = load i64, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !13
  %i.fh = load ptr, ptr %i.eu, align 8, !tbaa !27
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ff
  store i8 0, ptr %i.fi, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !106 ; 2 uses
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !107 ; 2 uses
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i86 = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i.i.i.i86, label %.noexc89, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fr = icmp ugt i64 %i.fq, 9223372036854775804
  br i1 %i.fr, label %.noexc.i.i87, label %_ZNSt15__new_allocatorI16LuauBytecodeTypeE8allocateEmPKv.exit.i.i.i.i, !prof !431

.noexc.i.i87:                                     ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc88 unwind label %bb.ay

.noexc88:                                         ; preds = %.noexc.i.i87
  unreachable

_ZNSt15__new_allocatorI16LuauBytecodeTypeE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.v
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #20
          to label %.noexc89 unwind label %bb.ay

.noexc89:                                         ; preds = %_ZNSt15__new_allocatorI16LuauBytecodeTypeE8allocateEmPKv.exit.i.i.i.i, %bb.u
  %i.ft = phi ptr [ null, %bb.u ], [ %i.fs, %_ZNSt15__new_allocatorI16LuauBytecodeTypeE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ft, ptr %i.fj, align 8, !tbaa !107
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !106
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fq
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !108
  %i.fx = load ptr, ptr %i.fk, align 8, !tbaa !396 ; 3 uses
  %i.fy = load ptr, ptr %i.fl, align 8, !tbaa !396
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fx to i64
end_hunk_1
begin_hunk_2_@_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EEC2ERKS3_:bb.a
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load10, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !552

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.i.preheader31:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %i.ab = load i64, ptr %.sroa.08.012.i.i.i.i.i.i, align 4
  store i64 %i.ab, ptr %.013.i.i.i.i.i.i, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !553

_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.k) #17
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.j, ptr %0, align 8, !tbaa !255
  store i32 %i.g, ptr %i.b, align 4, !tbaa !551
  %.pre = load i32, ptr %i.d, align 8, !tbaa !247
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i, %bb.a
  %i.ae = phi ptr [ %i.j, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.af = phi i32 [ %.pre, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !255   ; 5 uses
  %i.ah = zext i32 %i.af to i64
  %.idx = shl nuw nsw i64 %i.ah, 3                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %.not9.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit
  %i.aj = ptrtoaddr ptr %i.ag to i64
  %i.ak = ptrtoaddr ptr %i.ae to i64
  %i.al = add nsw i64 %.idx, -8                   ; 2 uses
  %i.am = lshr exact i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check15 = icmp ult i64 %i.al, 72
  %i.ao = sub i64 %i.aj, %i.ak
  %diff.check13 = icmp ugt i64 %i.ao, -32
  %or.cond29 = select i1 %min.iters.check15, i1 true, i1 %diff.check13
  br i1 %or.cond29, label %.lr.ph.i.i.i.preheader30, label %vector.ph16

vector.ph16:                                      ; preds = %.lr.ph.i.i.i.preheader
  %n.vec17 = and i64 %i.an, 4611686018427387900   ; 3 uses
  %i.ap = shl i64 %n.vec17, 3                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.ap
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph16
  %index19 = phi i64 [ 0, %vector.ph16 ], [ %index.next24, %vector.body18 ] ; 2 uses
  %i.as = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.ae, i64 %i.as ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ag, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load22 = load <2 x i64>, ptr %next.gep21, align 4
  %wide.load23 = load <2 x i64>, ptr %i.at, align 4
  %i.au = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x i64> %wide.load22, ptr %next.gep20, align 4
  store <2 x i64> %wide.load23, ptr %i.au, align 4
  %index.next24 = add nuw i64 %index19, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next24, %n.vec17
  br i1 %i.av, label %middle.block25, label %vector.body18, !llvm.loop !554

middle.block25:                                   ; preds = %vector.body18
  %cmp.n26 = icmp eq i64 %i.an, %n.vec17
  br i1 %cmp.n26, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i.preheader30

.lr.ph.i.i.i.preheader30:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block25
  %.011.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block25 ]
  %.0810.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block25 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader30, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader30 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader30 ] ; 2 uses
  %i.aw = load i64, ptr %.0810.i.i.i, align 4
  store i64 %i.aw, ptr %.011.i.i.i, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ai
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !555

_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block25
  %.pre6 = load i32, ptr %i.d, align 8, !tbaa !247
  br label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit
  %i.az = phi i32 [ %.pre6, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit ], [ 0, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit ]
  store i32 %i.az, ptr %i.a, align 8, !tbaa !247
  ret void

bb.d:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i = load i32, ptr %i.a, align 8, !tbaa !247
  %.not1.i.i = icmp eq i32 %.promoted.i.i, 0
  br i1 %.not1.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  store i32 0, ptr %i.a, align 8, !tbaa !247
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.d
  %i.bb = load ptr, ptr %0, align 8, !tbaa !255   ; 2 uses
  %.not.i = icmp eq ptr %i.bb, %i.c
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.bb) #17
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EED2Ev.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EED2Ev.exit: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit.i, %bb.e
  resume { ptr, i32 } %i.ba
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode6BcInstESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not20 = icmp eq ptr %0, %1
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.022 = phi ptr [ %i.ap, %.loopexit ], [ %2, %bb.a ] ; 10 uses
  %.sroa.08.021 = phi ptr [ %i.ao, %.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.a = load i64, ptr %.sroa.08.021, align 8
  store i64 %i.a, ptr %.022, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 8
  invoke void @_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.022, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !434  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !332  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.noexc6.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.l = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.l, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !431

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc.i.i unwind label %.loopexit.split-lp

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #20
          to label %.noexc6.i.i unwind label %.loopexit11

.noexc6.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc
  %i.n = phi ptr [ null, %.noexc ], [ %i.m, %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 8 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !332
  %i.o = getelementptr inbounds nuw i8, ptr %.022, i64 48 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !434
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %.022, i64 56
  store ptr %i.p, ptr %i.q, align 8, !tbaa !333
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !284  ; 5 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !284  ; 3 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc6.i.i
  %i.t = ptrtoaddr ptr %i.r to i64                ; 2 uses
  %i.u = ptrtoaddr ptr %i.n to i64
  %i.v = ptrtoaddr ptr %i.s to i64
  %3 = add i64 %i.v, -4
  %4 = sub i64 %3, %i.t                           ; 2 uses
  %i.w = lshr i64 %4, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.y = sub i64 %i.t, %i.u
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ac ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep59, align 4, !tbaa !16
  %wide.load60 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !16
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load60, ptr %i.ae, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader62

.lr.ph.i.i.i.i.i.i.i.preheader62:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader62, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader62 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader62 ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4, !tbaa !16
  store i32 %i.ag, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !557

.loopexit11:                                      ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit11
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit11 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.022, i64 16 ; 2 uses
  %.promoted.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !286
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  store i32 0, ptr %i.aj, align 8, !tbaa !286
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.c
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !288 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.022, i64 24
  %.not.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ak) #17
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc6.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc6.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !434
  %i.am = getelementptr inbounds nuw i8, ptr %.022, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.022, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.ao, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !558

bb.e:                                             ; preds = %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i ]
  %i.ar = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #17 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4Luau8Bytecode6BcInstEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.022)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ap, %.loopexit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.at

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #22
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !286
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 4, ptr %i.b, align 4, !tbaa !287
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !288
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !286  ; 4 uses
  %i.f = icmp ugt i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 5
  %i.h = add i32 %i.e, 4
  %.09.i.i = select i1 %i.g, i32 6, i32 %i.h      ; 2 uses
  %i.i = zext i32 %.09.i.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc unwind label %bb.d     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !288    ; 7 uses
  %i.m = load i32, ptr %i.a, align 8, !tbaa !286  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx.i.i = shl nuw nsw i64 %i.n, 2             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = ptrtoaddr ptr %i.k to i64
  %i.r = add nsw i64 %.idx.i.i, -4                ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %i.u = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.k, i64 %i.v
  %i.x = getelementptr i8, ptr %i.l, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.y ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.l, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep9, align 4, !tbaa !16
  %wide.load10 = load <4 x i32>, ptr %i.z, align 4, !tbaa !16
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load10, ptr %i.aa, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !559

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.i.preheader31:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !16
  store i32 %i.ac, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !560

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.l) #17
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.k, ptr %0, align 8, !tbaa !288
  store i32 %.09.i.i, ptr %i.b, align 4, !tbaa !287
  %.pre = load i32, ptr %i.d, align 8, !tbaa !286
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, %bb.a
  %i.af = phi ptr [ %i.k, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.ag = phi i32 [ %.pre, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !288   ; 5 uses
  %i.ai = zext i32 %i.ag to i64
  %.idx = shl nuw nsw i64 %i.ai, 2                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx
  %.not9.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit
  %i.ak = ptrtoaddr ptr %i.ah to i64
  %i.al = ptrtoaddr ptr %i.af to i64
  %i.am = add nsw i64 %.idx, -4                   ; 2 uses
  %i.an = lshr exact i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check15 = icmp ult i64 %i.am, 44
  %i.ap = sub i64 %i.ak, %i.al
  %diff.check13 = icmp ugt i64 %i.ap, -32
  %or.cond29 = select i1 %min.iters.check15, i1 true, i1 %diff.check13
  br i1 %or.cond29, label %.lr.ph.i.i.i.preheader30, label %vector.ph16

vector.ph16:                                      ; preds = %.lr.ph.i.i.i.preheader
  %n.vec17 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.aq = shl i64 %n.vec17, 2                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.af, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.aq
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph16
  %index19 = phi i64 [ 0, %vector.ph16 ], [ %index.next24, %vector.body18 ] ; 2 uses
  %i.at = shl i64 %index19, 2                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.af, i64 %i.at ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ah, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load22 = load <4 x i32>, ptr %next.gep21, align 4, !tbaa !16
  %wide.load23 = load <4 x i32>, ptr %i.au, align 4, !tbaa !16
  %i.av = getelementptr i8, ptr %next.gep20, i64 16
  store <4 x i32> %wide.load22, ptr %next.gep20, align 4, !tbaa !16
  store <4 x i32> %wide.load23, ptr %i.av, align 4, !tbaa !16
  %index.next24 = add nuw i64 %index19, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next24, %n.vec17
  br i1 %i.aw, label %middle.block25, label %vector.body18, !llvm.loop !561

middle.block25:                                   ; preds = %vector.body18
  %cmp.n26 = icmp eq i64 %i.ao, %n.vec17
  br i1 %cmp.n26, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i.preheader30

.lr.ph.i.i.i.preheader30:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block25
  %.011.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block25 ]
  %.0810.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block25 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader30, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader30 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader30 ] ; 2 uses
  %i.ax = load i32, ptr %.0810.i.i.i, align 4, !tbaa !16
  store i32 %i.ax, ptr %.011.i.i.i, align 4, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ay, %i.aj
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !562

_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block25
  %.pre6 = load i32, ptr %i.d, align 8, !tbaa !286
  br label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit
  %i.ba = phi i32 [ %.pre6, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit ], [ 0, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit ]
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !286
  ret void

bb.d:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i = load i32, ptr %i.a, align 8, !tbaa !286
  %.not1.i.i = icmp eq i32 %.promoted.i.i, 0
  br i1 %.not1.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  store i32 0, ptr %i.a, align 8, !tbaa !286
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.d
  %i.bc = load ptr, ptr %0, align 8, !tbaa !288   ; 2 uses
  %.not.i = icmp eq ptr %i.bc, %i.c
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.bc) #17
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EED2Ev.exit

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EED2Ev.exit: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i, %bb.e
  resume { ptr, i32 } %i.bb
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode5BcPhiESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.019 = phi ptr [ %i.ak, %.loopexit ], [ %2, %bb.a ] ; 9 uses
  %.sroa.08.018 = phi ptr [ %i.aj, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  invoke void @_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %.019, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.08.018)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !434  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !332  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.noexc4.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !431

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc.i.i unwind label %.loopexit.split-lp

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20
          to label %.noexc4.i.i unwind label %.loopexit11

.noexc4.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc
  %i.k = phi ptr [ null, %.noexc ], [ %i.j, %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 8 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !332
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 40 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !434
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %.019, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !333
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !284  ; 5 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !284  ; 3 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc4.i.i
  %i.q = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.r = ptrtoaddr ptr %i.k to i64
  %i.s = ptrtoaddr ptr %i.p to i64
  %3 = add i64 %i.s, -4
  %4 = sub i64 %3, %i.q                           ; 2 uses
  %i.t = lshr i64 %4, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.v = sub i64 %i.q, %i.r
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.w = shl i64 %n.vec, 2                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.k, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.z ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.o, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep44, align 4, !tbaa !16
  %wide.load45 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !16
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load45, ptr %i.ab, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.i.i.preheader47:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ] ; 2 uses
  %i.ad = load i32, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4, !tbaa !16
  store i32 %i.ad, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !564

.loopexit11:                                      ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit11
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit11 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  %.promoted.i.i.i.i = load i32, ptr %i.ag, align 8, !tbaa !286
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  store i32 0, ptr %i.ag, align 8, !tbaa !286
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.c
  %i.ah = load ptr, ptr %.019, align 8, !tbaa !288 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %.not.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ah) #17
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc4.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.k, %.noexc4.i.i ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !434
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !565

bb.e:                                             ; preds = %.lr.ph
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.e ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i ]
  %i.am = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.an = tail call ptr @__cxa_begin_catch(ptr %i.am) #17 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4Luau8Bytecode5BcPhiEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ak, %.loopexit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ao

bb.i:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #22
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSH_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not.not = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25   ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !431

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !542
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpEhELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !431

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpEhELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpEhELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpEhELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  store ptr %.0.i, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = phi ptr [ %.0.i, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !382  ; 4 uses
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.h unwind label %bb.k       ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !315
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.n, align 4
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !316  ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !tbaa !316
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.t, align 8, !tbaa !382
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = urem i64 %i.s, %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.w
end_hunk_2
begin_hunk_3_@_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh:bb.a
  tail call void @_ZdlPv(ptr noundef %i.aa) #17
  %.pre2.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !286
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i: ; preds = %bb.e, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i
  %.pre2.i.i = phi i32 [ %i.ab, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i ], [ %.pre2.pre.i.i, %bb.e ]
  store ptr %i.z, ptr %i.m, align 8, !tbaa !288
  store i32 %.09.i.i.i, ptr %i.p, align 4, !tbaa !287
  br label %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit

_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit: ; preds = %._crit_edge.i.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i
  %i.av = phi i32 [ %i.o, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i ]
  %i.aw = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.z, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i ]
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  store i32 %i.h, ptr %i.ay, align 4, !tbaa !16
  %i.az = load i32, ptr %i.n, align 8, !tbaa !286
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.n, align 8, !tbaa !286
  tail call void @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE9recordUseENS0_4BcOpES4_(ptr noundef nonnull align 8 dereferenceable(456) %i.e, i32 %i.h, i32 %2)
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.bb = load ptr, ptr %0, align 8, !tbaa !230, !nonnull !208, !align !239
  %i.bc = lshr i32 %2, 4
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = load ptr, ptr %1, align 8, !tbaa !264
  %i.bf = getelementptr inbounds nuw [80 x i8], ptr %i.be, i64 %i.bd ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !286 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 20 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !287
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.g, label %._crit_edge.i.i12

._crit_edge.i.i12:                                ; preds = %bb.f
  %.pre.i.i13 = load ptr, ptr %i.bg, align 8, !tbaa !288
  br label %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit26

bb.g:                                             ; preds = %bb.f
  %i.bm = add i32 %i.bi, 1
  %i.bn = lshr i32 %i.bi, 1
  %i.bo = add i32 %i.bn, %i.bi                    ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, %i.bm
  %i.bq = add i32 %i.bi, 5
  %.09.i.i.i14 = select i1 %i.bp, i32 %i.bo, i32 %i.bq ; 2 uses
  %i.br = zext i32 %.09.i.i.i14 to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #21 ; 6 uses
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !288 ; 7 uses
  %i.bv = load i32, ptr %i.bh, align 8, !tbaa !286 ; 3 uses
  %i.bw = zext i32 %i.bv to i64
  %.idx.i.i.i15 = shl nuw nsw i64 %i.bw, 2        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i.i.i15
  %.not11.i.i.i.i.i.i.i16 = icmp eq i32 %i.bv, 0
  br i1 %.not11.i.i.i.i.i.i.i16, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i17.preheader

.lr.ph.i.i.i.i.i.i.i17.preheader:                 ; preds = %bb.g
  %i.by = ptrtoaddr ptr %i.bu to i64
  %i.bz = ptrtoaddr ptr %i.bt to i64
  %i.ca = add nsw i64 %.idx.i.i.i15, -4           ; 2 uses
  %i.cb = lshr exact i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 44
  %i.cd = sub i64 %i.by, %i.bz
  %diff.check = icmp ugt i64 %i.cd, -32
  %or.cond52 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond52, label %.lr.ph.i.i.i.i.i.i.i17.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i17.preheader
  %n.vec = and i64 %i.cc, 9223372036854775800     ; 3 uses
  %i.ce = shl i64 %n.vec, 2                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bt, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.bu, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ch ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.bu, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !16
  %wide.load33 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !16
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load33, ptr %i.cj, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i17.preheader54

.lr.ph.i.i.i.i.i.i.i17.preheader54:               ; preds = %.lr.ph.i.i.i.i.i.i.i17.preheader, %middle.block
  %.013.i.i.i.i.i.i.i18.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i17.preheader ], [ %i.cf, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i19.ph = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i17.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i17

.lr.ph.i.i.i.i.i.i.i17:                           ; preds = %.lr.ph.i.i.i.i.i.i.i17.preheader54, %.lr.ph.i.i.i.i.i.i.i17
  %.013.i.i.i.i.i.i.i18 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i17 ], [ %.013.i.i.i.i.i.i.i18.ph, %.lr.ph.i.i.i.i.i.i.i17.preheader54 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i19 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i17 ], [ %.sroa.08.012.i.i.i.i.i.i.i19.ph, %.lr.ph.i.i.i.i.i.i.i17.preheader54 ] ; 2 uses
  %i.cl = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i19, align 4, !tbaa !16
  store i32 %i.cl, ptr %.013.i.i.i.i.i.i.i18, align 4, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i19, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i18, i64 4
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.cm, %i.bx
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i17, !llvm.loop !622

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i.i.i17, %middle.block, %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.not.i.i.i22 = icmp eq ptr %i.bu, %i.co
  br i1 %.not.i.i.i22, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24, label %bb.h

bb.h:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21
  tail call void @_ZdlPv(ptr noundef %i.bu) #17
  %.pre2.pre.i.i23 = load i32, ptr %i.bh, align 8, !tbaa !286
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24: ; preds = %bb.h, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21
  %.pre2.i.i25 = phi i32 [ %i.bv, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21 ], [ %.pre2.pre.i.i23, %bb.h ]
  store ptr %i.bt, ptr %i.bg, align 8, !tbaa !288
  store i32 %.09.i.i.i14, ptr %i.bj, align 4, !tbaa !287
  br label %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit26

_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit26: ; preds = %._crit_edge.i.i12, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24
  %i.cp = phi i32 [ %i.bi, %._crit_edge.i.i12 ], [ %.pre2.i.i25, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24 ]
  %i.cq = phi ptr [ %.pre.i.i13, %._crit_edge.i.i12 ], [ %i.bt, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24 ]
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  store i32 %.sroa.027.0.extract.trunc, ptr %i.cs, align 4, !tbaa !16
  %i.ct = load i32, ptr %i.bh, align 8, !tbaa !286
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.bh, align 8, !tbaa !286
  tail call void @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE9recordUseENS0_4BcOpES4_(ptr noundef nonnull align 8 dereferenceable(456) %i.bb, i32 %.sroa.027.0.extract.trunc, i32 %2)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit26, %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !321  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !322
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.insert.ext = zext i32 %2 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !321
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !321
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !323
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !323  ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #20 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %.sroa.5.0.insert.ext6 = zext i32 %2 to i64
  %.sroa.5.0.insert.shift7 = shl nuw i64 %.sroa.5.0.insert.ext6, 32
  %.sroa.0.0.insert.ext2 = zext i32 %1 to i64
  %.sroa.0.0.insert.insert4 = or disjoint i64 %.sroa.5.0.insert.shift7, %.sroa.0.0.insert.ext2
  store i64 %.sroa.0.0.insert.insert4, ptr %i.t, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = ptrtoaddr ptr %i.s to i64
  %3 = add i64 %i.i, -8
  %4 = sub i64 %3, %i.j                           ; 2 uses
  %i.v = lshr i64 %4, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.x = sub i64 %i.j, %i.u
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.s, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.h, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.ac = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 4, !alias.scope !626, !noalias !623
  %wide.load14 = load <2 x i64>, ptr %i.ac, align 4, !alias.scope !626, !noalias !623
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !623, !noalias !626
  store <2 x i64> %wide.load14, ptr %i.ad, align 4, !alias.scope !623, !noalias !626
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !628

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.preheader16:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader16 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader16 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.af = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !626, !noalias !623
  store i64 %i.af, ptr %.012.i.i.i.i.i, align 4, !alias.scope !623, !noalias !626
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !629

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !323
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !321
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !322
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ak = phi ptr [ %.pre, %bb.b ], [ %i.s, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.al = phi ptr [ %i.g, %bb.b ], [ %i.ai, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = shl i32 %i.ap, 1
  %i.ar = and i32 %i.aq, -16
  %i.as = add i32 %i.ar, -11
  ret i32 %i.as
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE20findProducersUpToTopENS0_4BcOpEh(ptr dead_on_unwind noalias writable sret(%"class.std::vector.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i32 %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = lshr i32 %2, 4
  %i.c = zext nneg i32 %i.b to i64                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !242
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !243  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 192                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Luau8Bytecode19BytecodeGraphParserINS1_9BcVmConstEE14BlockProducersESaIS5_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %i.c, i64 noundef %i.j) #18
  unreachable

_ZNSt6vectorIN4Luau8Bytecode19BytecodeGraphParserINS1_9BcVmConstEE14BlockProducersESaIS5_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [192 x i8], ptr %i.f, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 116 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !355   ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = zext i8 %3 to i64
  %i.p = sub nsw i64 %i.n, %i.o
  %i.q = add nsw i64 %i.p, 1                      ; 4 uses
  %i.r = icmp ugt i64 %i.q, 2305843009213693951
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode19BytecodeGraphParserINS1_9BcVmConstEE14BlockProducersESaIS5_EE2atEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode19BytecodeGraphParserINS1_9BcVmConstEE14BlockProducersESaIS5_EE2atEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.t = shl nuw nsw i64 %i.q, 2
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #20
          to label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.k ; 4 uses

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %0, align 8, !tbaa !332
  store ptr %i.u, ptr %i.v, align 8, !tbaa !434
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.q ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !333
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.promoted43 = phi ptr [ null, %bb.d ], [ %i.u, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 4 uses
  %.promoted = phi ptr [ null, %bb.d ], [ %i.w, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %i.x = icmp ult i8 %3, %i.m
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit
  %i.z = phi ptr [ %.promoted43, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %.047 = phi i8 [ %3, %.lr.ph ], [ %i.bj, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.aa = phi ptr [ %.promoted, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %i.ab = phi ptr [ %.promoted43, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 12 uses
  %i.ac = invoke i64 @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12readVariableENS0_4BcOpEh(ptr noundef nonnull align 8 dereferenceable(152) %1, i32 %2, i8 noundef zeroext %.047)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.sroa.037.0.extract.trunc = trunc i64 %i.ac to i32 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.sroa.037.0.extract.trunc, ptr %i.z, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !434
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.af = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %bb.i, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.aa, ptr %i.s, align 8
  store ptr %i.ab, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ai = ashr exact i64 %i.ag, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 2305843009213693951)
  %i.am = select i1 %i.ak, i64 2305843009213693951, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #20
          to label %.noexc19 unwind label %.loopexit ; 8 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store i32 %.sroa.037.0.extract.trunc, ptr %i.ap, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc19
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %4 = add i64 %i.ae, -4
  %5 = sub i64 %4, %i.af                          ; 2 uses
  %i.ar = lshr i64 %5, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  %i.at = sub i64 %i.af, %i.aq
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ao, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ab, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ax ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.ab, i64 %i.ax ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.ay = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep102, align 4, !tbaa !16, !alias.scope !633, !noalias !630
  %wide.load103 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !16, !alias.scope !633, !noalias !630
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !630, !noalias !633
  store <4 x i32> %wide.load103, ptr %i.az, align 4, !tbaa !16, !alias.scope !630, !noalias !633
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !635

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader124

.lr.ph.i.i.i.i.i.preheader124:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader124, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader124 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader124 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.bb = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !633, !noalias !630
  store i32 %i.bb, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !630, !noalias !633
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !636

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %.noexc19 ], [ %i.av, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.be, ptr %i.y, align 8, !tbaa !434
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g
  %i.bg = phi ptr [ %i.be, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.bh = phi ptr [ %i.ao, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.bi = phi ptr [ %i.bf, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.aa, %bb.g ] ; 2 uses
  %i.bj = add nuw i8 %.047, 1                     ; 2 uses
  %i.bk = load i8, ptr %i.l, align 4, !tbaa !355
  %i.bl = icmp ult i8 %i.bj, %i.bk
  br i1 %i.bl, label %bb.e, label %._crit_edge, !llvm.loop !637

bb.k:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21, %bb.n, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i, %bb.c
  %i.bm = phi ptr [ %i.bp, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21 ], [ %i.bp, %bb.n ], [ null, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.c ]
  %i.bn = phi ptr [ %i.bq, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21 ], [ %i.bq, %bb.n ], [ null, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.c ]
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit:                                        ; preds = %bb.e, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aa, ptr %i.s, align 8
  store ptr %i.ab, ptr %0, align 8
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %i.bp = phi ptr [ %.promoted43, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %i.bq = phi ptr [ %.promoted43, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 10 uses
  %.lcssa40 = phi ptr [ %.promoted, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bi, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  store ptr %.lcssa40, ptr %i.s, align 8
  store ptr %i.bq, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bp, %.lcssa40
  br i1 %.not.i20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !16
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !434
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit35

bb.m:                                             ; preds = %._crit_edge
  %i.bv = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 4 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775804
  br i1 %i.by, label %bb.n, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
          to label %.noexc33 unwind label %bb.k

.noexc33:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21: ; preds = %bb.m
  %i.bz = ashr exact i64 %i.bx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i22 = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i22, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 2305843009213693951)
  %i.cd = select i1 %i.cb, i64 2305843009213693951, i64 %i.cc ; 3 uses
  %.not.i.i.i23 = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i23)
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #20
          to label %.noexc34 unwind label %bb.k   ; 8 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  %i.ch = load i32, ptr %i.br, align 4, !tbaa !16
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !16
  %.not10.i.i.i.i.i24 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not10.i.i.i.i.i24, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29, label %.lr.ph.i.i.i.i.i25.preheader

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %.noexc34
  %i.ci = ptrtoaddr ptr %i.cf to i64
  %6 = add i64 %i.bv, -4
  %7 = sub i64 %6, %i.bw                          ; 2 uses
  %i.cj = lshr i64 %7, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check108 = icmp ult i64 %7, 44
  %i.cl = sub i64 %i.bw, %i.ci
  %diff.check106 = icmp ugt i64 %i.cl, -32
  %or.cond122 = or i1 %min.iters.check108, %diff.check106
  br i1 %or.cond122, label %.lr.ph.i.i.i.i.i25.preheader123, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph.i.i.i.i.i25.preheader
  %n.vec110 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cm = shl i64 %n.vec110, 2                    ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cf, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.bq, i64 %i.cm
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %i.cp = shl i64 %index112, 2                    ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.cf, i64 %i.cp ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.bq, i64 %i.cp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.cq = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load115 = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !16, !alias.scope !641, !noalias !638
  %wide.load116 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !16, !alias.scope !641, !noalias !638
  %i.cr = getelementptr i8, ptr %next.gep113, i64 16
  store <4 x i32> %wide.load115, ptr %next.gep113, align 4, !tbaa !16, !alias.scope !638, !noalias !641
  store <4 x i32> %wide.load116, ptr %i.cr, align 4, !tbaa !16, !alias.scope !638, !noalias !641
  %index.next117 = add nuw i64 %index112, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.cs, label %middle.block118, label %vector.body111, !llvm.loop !643

middle.block118:                                  ; preds = %vector.body111
  %cmp.n119 = icmp eq i64 %i.ck, %n.vec110
  br i1 %cmp.n119, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29, label %.lr.ph.i.i.i.i.i25.preheader123

.lr.ph.i.i.i.i.i25.preheader123:                  ; preds = %.lr.ph.i.i.i.i.i25.preheader, %middle.block118
  %.012.i.i.i.i.i26.ph = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.cn, %middle.block118 ]
  %.0911.i.i.i.i.i27.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.co, %middle.block118 ]
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25.preheader123, %.lr.ph.i.i.i.i.i25
  %.012.i.i.i.i.i26 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i25 ], [ %.012.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i25.preheader123 ] ; 2 uses
  %.0911.i.i.i.i.i27 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i25 ], [ %.0911.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i25.preheader123 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.ct = load i32, ptr %.0911.i.i.i.i.i27, align 4, !tbaa !16, !alias.scope !641, !noalias !638
  store i32 %i.ct, ptr %.012.i.i.i.i.i26, align 4, !tbaa !16, !alias.scope !638, !noalias !641
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i27, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i26, i64 4 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.cu, %i.bp
  br i1 %.not.i.i.i.i.i28, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29, label %.lr.ph.i.i.i.i.i25, !llvm.loop !644

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29: ; preds = %.lr.ph.i.i.i.i.i25, %middle.block118, %.noexc34
  %.0.lcssa.i.i.i.i.i30 = phi ptr [ %i.cf, %.noexc34 ], [ %i.cn, %middle.block118 ], [ %i.cv, %.lr.ph.i.i.i.i.i25 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i30, i64 4
  %.not.i23.i.i31 = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i31, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bx) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32: ; preds = %bb.o, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29
  store ptr %i.cf, ptr %0, align 8, !tbaa !332
  store ptr %i.cw, ptr %i.bs, align 8, !tbaa !434
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.cx, ptr %i.s, align 8, !tbaa !333
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit35

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit35: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32, %bb.l
  store i32 0, ptr %i.br, align 8, !tbaa !16
  store i8 -1, ptr %i.l, align 4, !tbaa !355
  ret void

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %i.cy = phi ptr [ %i.bm, %bb.k ], [ %i.aa, %.loopexit ], [ %i.z, %.loopexit.split-lp ]
  %i.cz = phi ptr [ %i.bn, %bb.k ], [ %i.ab, %.loopexit ], [ %i.ab, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i36 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dc) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %bb.p, %bb.q
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE9applyCallERNS3_14BlockProducersENS0_4BcOpEhi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !567  ; 2 uses
  %.not3537 = icmp eq ptr %i.b, null
  br i1 %.not3537, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.n, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !567  ; 2 uses
  %.not3639 = icmp eq ptr %i.g, null
  br i1 %.not3639, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br label %bb.o

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.032.038 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.032.1, %bb.n ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.038, i64 8
  %i.k = load i8, ptr %i.j, align 4, !tbaa !593   ; 2 uses
  %.not19 = icmp ult i8 %i.k, %3
  br i1 %.not19, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.c, align 8, !tbaa !570  ; 3 uses
  %i.m = zext i8 %i.k to i64
  %i.n = urem i64 %i.m, %i.l                      ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !569    ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !314  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.r, %bb.d ] ; 4 uses
  %i.r = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !315 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %.sroa.032.038
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i, label %bb.d, !llvm.loop !645

_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i: ; preds = %bb.d
  %i.s = icmp eq ptr %.0.i.i.i.i, %i.q
  %i.t = load ptr, ptr %.sroa.032.038, align 8, !tbaa !315 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.t, null        ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i64
  %i.x = urem i64 %i.w, %i.l                      ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.x, %i.n
  br i1 %.not9.i.i.i.i.i, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  store ptr %i.q, ptr %i.y, align 8, !tbaa !314
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g, %bb.e
  %i.z = icmp eq ptr %i.a, %i.q
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !567
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.p, align 8, !tbaa !314
  br label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit

bb.j:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = zext i8 %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.l                    ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ad, %i.n
  br i1 %.not17.i.i.i.i, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ad
  store ptr %.0.i.i.i.i, ptr %i.ae, align 8, !tbaa !314
  br label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit

_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit: ; preds = %bb.f, %bb.i, %bb.j, %bb.k, %bb.l
  %i.af = load ptr, ptr %.sroa.032.038, align 8, !tbaa !315 ; 2 uses
  store ptr %i.af, ptr %.0.i.i.i.i, align 8, !tbaa !315
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.038, i64 noundef 16) #19
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !599
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !599
  br label %bb.n

bb.m:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@_ZZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12rebuildGraphEPKjjRSt6vectorIjSaIjEES9_ENKUl10LuauOpcodeiE_clESA_i:bb.a

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block121, %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.bz
  br i1 %.not.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.bf) #17
  %.pre2.pre.i.i.i = load i32, ptr %i.as, align 8, !tbaa !286
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i: ; preds = %bb.f, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  %.pre2.i.i.i = phi i32 [ %i.bg, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i ], [ %.pre2.pre.i.i.i, %bb.f ]
  store ptr %i.be, ptr %i.ar, align 8, !tbaa !288
  store i32 %.09.i.i.i.i, ptr %i.au, align 4, !tbaa !287
  br label %_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit

_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit: ; preds = %._crit_edge.i.i.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i
  %i.ca = phi i32 [ %i.at, %._crit_edge.i.i.i ], [ %.pre2.i.i.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i ]
  %i.cb = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.be, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i ]
  %i.cc = shl i32 %i.al, 4
  %i.cd = and i32 %i.cc, 268435440
  %i.ce = or disjoint i32 %i.cd, 7                ; 2 uses
  %i.cf = zext i32 %i.ca to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cf
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !16
  %i.ch = load i32, ptr %i.as, align 8, !tbaa !286
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.as, align 8, !tbaa !286
  tail call void @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE9recordUseENS0_4BcOpES4_(ptr noundef nonnull align 8 dereferenceable(456) %i.am, i32 %i.ce, i32 %.sroa.244.0.copyload)
  br label %bb.s

bb.g:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12addJumpInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.070.0.copyload, i32 %.sroa.271.0.copyload, i32 noundef %2)
  br label %bb.s

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !651, !nonnull !208, !align !650
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !128
  %i.cm = trunc i32 %i.cl to i8
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.070.0.copyload, i32 %.sroa.271.0.copyload, i8 noundef zeroext %i.cm)
  %i.cn = load ptr, ptr %0, align 8, !tbaa !648, !nonnull !208, !align !239 ; 2 uses
  %.sroa.028.0.copyload = load ptr, ptr %i.cn, align 8, !tbaa !285
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.229.0.copyload = load i32, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !16
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12addJumpInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.028.0.copyload, i32 %.sroa.229.0.copyload, i32 noundef %2)
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.co = load ptr, ptr %i.k, align 8, !tbaa !649, !nonnull !208, !align !650
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !128
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = add i8 %i.cr, 1
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.070.0.copyload, i32 %.sroa.271.0.copyload, i8 noundef zeroext %i.cs)
  %i.ct = load ptr, ptr %0, align 8, !tbaa !648, !nonnull !208, !align !239 ; 2 uses
  %.sroa.019.0.copyload = load ptr, ptr %i.ct, align 8, !tbaa !285
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.220.0.copyload = load i32, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !16
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !649, !nonnull !208, !align !650
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !128
  %i.cw = lshr i32 %i.cv, 8
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = add i8 %i.cx, 2
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.019.0.copyload, i32 %.sroa.220.0.copyload, i8 noundef zeroext %i.cy)
  %i.cz = load ptr, ptr %0, align 8, !tbaa !648, !nonnull !208, !align !239 ; 2 uses
  %.sroa.016.0.copyload = load ptr, ptr %i.cz, align 8, !tbaa !285
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.217.0.copyload = load i32, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !16
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12addJumpInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.016.0.copyload, i32 %.sroa.217.0.copyload, i32 noundef %2)
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !649, !nonnull !208, !align !650
  %i.db = load i32, ptr %i.da, align 4, !tbaa !128
  %i.dc = lshr i32 %i.db, 8
  %i.dd = trunc i32 %i.dc to i8
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !230, !nonnull !208, !align !239 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 400 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !654, !nonnull !208, !align !650
  %.0.copyload.i.i.i.i = load i32, ptr %i.dh, align 4 ; 4 uses
  %.0.insert.ext.i.i.i.i = zext i32 %.0.copyload.i.i.i.i to i64 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 408
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !25 ; 2 uses
  %i.dk = urem i64 %.0.insert.ext.i.i.i.i, %i.dj  ; 3 uses
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !17
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i84, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !315 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !316
  %i.ds = icmp eq i64 %i.dr, %.0.insert.ext.i.i.i.i
  %i.dt = load i32, ptr %i.dp, align 8
  %i.du = icmp eq i32 %.0.copyload.i.i.i.i, %i.dt
  %i.dv = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %i.dv, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.dw = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.dx = icmp eq i64 %i.ed, %.0.insert.ext.i.i.i.i
  %i.dy = load i32, ptr %i.dw, align 8
  %i.dz = icmp eq i32 %.0.copyload.i.i.i.i, %i.dy
  %i.ea = select i1 %i.dx, i1 %i.dz, i1 false
  br i1 %i.ea, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !318

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.020.i.i.i.i = phi ptr [ %i.eb, %bb.k ], [ %i.do, %bb.j ]
  %i.eb = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !315 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !316 ; 2 uses
  %i.ee = urem i64 %i.ed, %i.dj
  %.not19.i.i.i.i = icmp eq i64 %i.ee, %i.dk
  br i1 %.not19.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !318

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.l
  br label %.loopexit.i.i, !llvm.loop !318

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.i
  %i.ef = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 5 uses
  store ptr null, ptr %i.ef, align 8, !tbaa !315
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %.0.copyload.i.i.i.i, ptr %i.eg, align 8, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i8 0, ptr %i.eh, align 4, !tbaa !319
  %i.ei = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.df, i64 noundef %i.dk, i64 noundef %.0.insert.ext.i.i.i.i, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 24) #19
  resume { ptr, i32 } %i.ej

_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit: ; preds = %bb.k, %bb.j, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ei, %.loopexit.i.i ], [ %i.do, %bb.j ], [ %i.eb, %bb.k ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i8 %i.dd, ptr %.1.i.i, align 1, !tbaa !16
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !649, !nonnull !208, !align !650
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !128
  %i.em = lshr i32 %i.el, 8
  %i.en = trunc i32 %i.em to i8
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !230, !nonnull !208, !align !239 ; 3 uses
  %i.ep = load ptr, ptr %i.dg, align 8, !tbaa !654, !nonnull !208, !align !650
  %.sroa.014.0.copyload = load i32, ptr %i.ep, align 4, !tbaa !16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 128 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 136 ; 4 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !321 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 144 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !322
  %.not.i.i = icmp eq ptr %i.es, %i.eu
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.014.0.copyload to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.es, align 4
  %i.ev = load ptr, ptr %i.er, align 8, !tbaa !321
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.er, align 8, !tbaa !321
  %.pre.i = load ptr, ptr %i.eq, align 8, !tbaa !323
  br label %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj.exit

bb.n:                                             ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit
  %i.ex = load ptr, ptr %i.eq, align 8, !tbaa !323 ; 7 uses
  %i.ey = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64               ; 3 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.o, label %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.fc = ashr exact i64 %i.fa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = tail call i64 @llvm.umin.i64(i64 %i.fd, i64 1152921504606846975)
  %i.fg = select i1 %i.fe, i64 1152921504606846975, i64 %i.ff ; 3 uses
  %.not.i.i.i.i85 = icmp ne i64 %i.fg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i85)
  %i.fh = shl nuw nsw i64 %i.fg, 3
  %i.fi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #20 ; 9 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  %.sroa.0.0.insert.ext2.i = zext i32 %.sroa.014.0.copyload to i64
  store i64 %.sroa.0.0.insert.ext2.i, ptr %i.fj, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ex, %i.es
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fk = ptrtoaddr ptr %i.fi to i64
  %3 = add i64 %i.ey, -8
  %4 = sub i64 %3, %i.ez                          ; 2 uses
  %i.fl = lshr i64 %4, 3
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.fn = sub i64 %i.ez, %i.fk
  %diff.check = icmp ugt i64 %i.fn, -32
  %or.cond125 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond125, label %.lr.ph.i.i.i.i.i.i.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.fm, 4611686018427387900     ; 3 uses
  %i.fo = shl i64 %n.vec, 3                       ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fi, i64 %i.fo  ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ex, i64 %i.fo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fi, i64 %i.fr ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.ex, i64 %i.fr ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.fs = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep105, align 4, !alias.scope !658, !noalias !655
  %wide.load106 = load <2 x i64>, ptr %i.fs, align 4, !alias.scope !658, !noalias !655
  %i.ft = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !655, !noalias !658
  store <2 x i64> %wide.load106, ptr %i.ft, align 4, !alias.scope !655, !noalias !658
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !660

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader127

.lr.ph.i.i.i.i.i.i.preheader127:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fp, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader127, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader127 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader127 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.fv = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !658, !noalias !655
  store i64 %i.fv, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !655, !noalias !658
  %i.fw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fw, %i.es
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !661

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fi, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.fp, %middle.block ], [ %i.fx, %.lr.ph.i.i.i.i.i.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.fi, ptr %i.eq, align 8, !tbaa !323
  store ptr %i.fy, ptr %i.er, align 8, !tbaa !321
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fz, ptr %i.et, align 8, !tbaa !322
  br label %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj.exit

_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj.exit: ; preds = %bb.m, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ga = phi ptr [ %.pre.i, %bb.m ], [ %i.fi, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.gb = phi ptr [ %i.ew, %bb.m ], [ %i.fy, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = shl i32 %i.gf, 1
  %i.gh = and i32 %i.gg, -16
  %i.gi = add i32 %i.gh, -11
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %i.b, i8 noundef zeroext %i.en, i32 %i.gi)
  %i.gj = load ptr, ptr %i.k, align 8, !tbaa !649, !nonnull !208, !align !650
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !128
  %i.gl = lshr i32 %i.gk, 8
  %i.gm = trunc i32 %i.gl to i8
  %i.gn = add i8 %i.gm, 1
  %i.go = load ptr, ptr %i.b, align 8, !tbaa !230, !nonnull !208, !align !239
  %i.gp = load ptr, ptr %i.dg, align 8, !tbaa !654, !nonnull !208, !align !650
  %.sroa.012.0.copyload = load i32, ptr %i.gp, align 4, !tbaa !16
  %i.gq = tail call i32 @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %i.go, i32 %.sroa.012.0.copyload, i32 noundef 1)
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %i.b, i8 noundef zeroext %i.gn, i32 %i.gq)
  %i.gr = load ptr, ptr %i.k, align 8, !tbaa !649, !nonnull !208, !align !650
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !128
  %i.gt = lshr i32 %i.gs, 8
  %i.gu = trunc i32 %i.gt to i8
  %i.gv = add i8 %i.gu, 2
  %i.gw = load ptr, ptr %i.b, align 8, !tbaa !230, !nonnull !208, !align !239
  %i.gx = load ptr, ptr %i.dg, align 8, !tbaa !654, !nonnull !208, !align !650
  %.sroa.010.0.copyload = load i32, ptr %i.gx, align 4, !tbaa !16
  %i.gy = tail call i32 @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %i.gw, i32 %.sroa.010.0.copyload, i32 noundef 2)
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %i.b, i8 noundef zeroext %i.gv, i32 %i.gy)
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  %i.gz = load ptr, ptr %i.k, align 8, !tbaa !649, !nonnull !208, !align !650
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !128
  %i.hb = lshr i32 %i.ha, 8
  %i.hc = trunc i32 %i.hb to i8
  %i.hd = add i8 %i.hc, 1
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.070.0.copyload, i32 %.sroa.271.0.copyload, i8 noundef zeroext %i.hd)
  %i.he = load ptr, ptr %0, align 8, !tbaa !648, !nonnull !208, !align !239 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.he, align 8, !tbaa !285
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !16
  %i.hf = load ptr, ptr %i.k, align 8, !tbaa !649, !nonnull !208, !align !650
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !128
  %i.hh = lshr i32 %i.hg, 8
  %i.hi = trunc i32 %i.hh to i8
  %i.hj = add i8 %i.hi, 2
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload, i8 noundef zeroext %i.hj)
  %i.hk = load ptr, ptr %0, align 8, !tbaa !648, !nonnull !208, !align !239 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.hk, align 8, !tbaa !285
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12addJumpInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, i32 noundef %2)
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  unreachable

bb.s:                                             ; preds = %bb.q, %_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addProjENS0_4BcOpEj.exit, %bb.h, %bb.g, %_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE9makeBlockEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !230, !nonnull !208, !align !239
  %i.b = tail call i32 @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE8addBlockEv(ptr noundef nonnull align 8 dereferenceable(456) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !214  ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 3 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !212
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !314  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !315  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !128
  %i.n = icmp eq i32 %1, %i.m
  br i1 %i.n, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.o = icmp eq i32 %1, %i.r
  br i1 %i.o, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !373

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.020.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ]
  %i.p = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !315 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !128  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = urem i64 %i.s, %i.f
  %.not19.i.i.i.i = icmp eq i64 %i.t, %i.g
  br i1 %.not19.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !373

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.d
  br label %.loopexit.i.i, !llvm.loop !373

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.a
  %i.u = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20 ; 5 uses
  store ptr null, ptr %i.u, align 8, !tbaa !315
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !374
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.w, align 4
  %i.x = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.g, i64 noundef %i.d, ptr noundef nonnull %i.u, i64 noundef 1)
          to label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 16) #19
  resume { ptr, i32 } %i.y

_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit: ; preds = %bb.c, %bb.b, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.x, %.loopexit.i.i ], [ %i.k, %bb.b ], [ %i.p, %bb.c ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i32 %i.b, ptr %.1.i.i, align 4, !tbaa !16
  %i.z = load ptr, ptr %0, align 8, !tbaa !230, !nonnull !208, !align !239
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = lshr i32 %i.b, 4
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !241
  %i.ae = getelementptr inbounds nuw [136 x i8], ptr %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store i32 %1, ptr %i.af, align 8, !tbaa !662
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !247  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !247  ; 4 uses
  %.not = icmp ugt i32 %i.c, %i.e
  %i.f = load ptr, ptr %1, align 8, !tbaa !255    ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !255    ; 4 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.c, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !432

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.f, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.c, 1
  br i1 %i.j, label %bb.f, label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.f, align 4
  store i64 %i.k, ptr %i.g, align 4
  br label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.l = load i32, ptr %i.d, align 8, !tbaa !247  ; 2 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !247
  %i.n = icmp ugt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, %.lr.ph
  %i.o = phi i32 [ %i.p, %.lr.ph ], [ %i.l, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit ]
  %i.p = add i32 %i.o, -1                         ; 3 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !247
  %i.q = load i32, ptr %i.b, align 8, !tbaa !247
  %i.r = icmp ugt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !663

bb.g:                                             ; preds = %bb.b
  %i.s = icmp ugt i32 %i.e, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !432

bb.h:                                             ; preds = %bb.g
  %i.t = zext i32 %i.e to i64
  %.idx16 = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.f, i64 %.idx16, i1 false)
  br label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %i.e, 1
  br i1 %i.u, label %bb.j, label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.f, align 4
  store i64 %i.v, ptr %i.g, align 4
  br label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15

_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15: ; preds = %bb.h, %bb.i, %bb.j
  %i.w = load i32, ptr %i.b, align 8, !tbaa !247  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !551  ; 3 uses
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.k, label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge

_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge: ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !255
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit

bb.k:                                             ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15
  %i.aa = lshr i32 %i.y, 1
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, %i.w
  %i.ad = add i32 %i.w, 4
  %.09.i.i = select i1 %i.ac, i32 %i.ab, i32 %i.ad ; 2 uses
  %i.ae = zext i32 %.09.i.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #21 ; 6 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !255   ; 7 uses
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !247 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %.idx.i.i = shl nuw nsw i64 %i.aj, 3            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %i.al = ptrtoaddr ptr %i.ah to i64
  %i.am = ptrtoaddr ptr %i.ag to i64
  %i.an = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 72
  %i.aq = sub i64 %i.al, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ag, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.au ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 4
  %wide.load28 = load <2 x i64>, ptr %i.av, align 4
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load28, ptr %i.aw, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !664

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.preheader49:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %i.ay = load i64, ptr %.sroa.08.012.i.i.i.i.i.i, align 4
  store i64 %i.ay, ptr %.013.i.i.i.i.i.i, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ak
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !665

_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.ah, %i.bb
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ah) #17
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i: ; preds = %bb.l, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !255
  store i32 %.09.i.i, ptr %i.x, align 4, !tbaa !551
  %.pre = load i32, ptr %i.b, align 8, !tbaa !247
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit: ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i
  %i.bc = phi ptr [ %.pre17, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge ], [ %i.ag, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ] ; 2 uses
  %i.bd = phi i32 [ %i.w, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge ], [ %.pre, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ] ; 3 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !255   ; 3 uses
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !247 ; 2 uses
  %i.bg = zext i32 %i.bd to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg
  %.not9.i.i.i = icmp eq i32 %i.bf, %i.bd
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit
  %i.bi = ptrtoaddr ptr %i.be to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = zext i32 %i.bf to i64                   ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bk ; 3 uses
  %2 = shl nuw nsw i64 %i.bg, 3
  %i.bn = add nsw i64 %2, -8
  %3 = shl nuw nsw i64 %i.bk, 3
  %4 = sub nsw i64 %i.bn, %3                      ; 2 uses
  %5 = lshr exact i64 %4, 3
  %i.bo = add nuw nsw i64 %5, 1                   ; 2 uses
  %min.iters.check33 = icmp ult i64 %4, 72
  %i.bp = sub i64 %i.bi, %i.bj
  %diff.check31 = icmp ugt i64 %i.bp, -32
  %or.cond47 = select i1 %min.iters.check33, i1 true, i1 %diff.check31
  br i1 %or.cond47, label %.lr.ph.i.i.i.preheader48, label %vector.ph34

vector.ph34:                                      ; preds = %.lr.ph.i.i.i.preheader
  %n.vec35 = and i64 %i.bo, 4611686018427387900   ; 3 uses
  %i.bq = shl i64 %n.vec35, 3                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bl, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.bm, i64 %i.bq
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.bt = shl i64 %index37, 3                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.bl, i64 %i.bt ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.bm, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load40 = load <2 x i64>, ptr %next.gep39, align 4
  %wide.load41 = load <2 x i64>, ptr %i.bu, align 4
  %i.bv = getelementptr i8, ptr %next.gep38, i64 16
  store <2 x i64> %wide.load40, ptr %next.gep38, align 4
  store <2 x i64> %wide.load41, ptr %i.bv, align 4
  %index.next42 = add nuw i64 %index37, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.bw, label %middle.block43, label %vector.body36, !llvm.loop !666

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %i.bo, %n.vec35
  br i1 %cmp.n44, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i.preheader48

.lr.ph.i.i.i.preheader48:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block43
  %.011.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.preheader ], [ %i.br, %middle.block43 ]
  %.0810.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.preheader ], [ %i.bs, %middle.block43 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader48, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %i.bx = load i64, ptr %.0810.i.i.i, align 4
  store i64 %i.bx, ptr %.011.i.i.i, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.by, %i.bh
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !667

_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block43
  %.pre18 = load i32, ptr %i.b, align 8, !tbaa !247
  br label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit
  %i.ca = phi i32 [ %.pre18, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit ], [ %i.bd, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit ]
  store i32 %i.ca, ptr %i.d, align 8, !tbaa !247
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE12addSuccessorENS0_4BcOpES4_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %1, i32 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !230, !nonnull !208, !align !239
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = lshr i32 %1, 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !241  ; 2 uses
  %i.f = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %i.d ; 4 uses
  %i.g = lshr i32 %2, 4
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !247  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 68 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !551
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !255
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %i.l, 1
  %i.q = lshr i32 %i.l, 1
  %i.r = add i32 %i.q, %i.l                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, %i.p
  %i.t = add i32 %i.l, 5
  %.09.i.i = select i1 %i.s, i32 %i.r, i32 %i.t   ; 2 uses
  %i.u = zext i32 %.09.i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21 ; 6 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !255  ; 7 uses
  %i.y = load i32, ptr %i.k, align 8, !tbaa !247  ; 3 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i = shl nuw nsw i64 %i.z, 3             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.ab = ptrtoaddr ptr %i.x to i64
  %i.ac = ptrtoaddr ptr %i.w to i64
  %i.ad = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 72
  %i.ag = sub i64 %i.ab, %i.ac
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 4
  %wide.load29 = load <2 x i64>, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load29, ptr %i.am, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.preheader50:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader50 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader50 ] ; 2 uses
  %i.ao = load i64, ptr %.sroa.08.012.i.i.i.i.i.i, align 4
  store i64 %i.ao, ptr %.013.i.i.i.i.i.i, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !669

_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.not.i.i = icmp eq ptr %i.x, %i.ar
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.x) #17
  %.pre2.pre.i = load i32, ptr %i.k, align 8, !tbaa !247
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  %.pre2.i = phi i32 [ %i.y, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i ], [ %.pre2.pre.i, %bb.c ]
  store ptr %i.w, ptr %i.j, align 8, !tbaa !255
  store i32 %.09.i.i, ptr %i.m, align 4, !tbaa !551
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit: ; preds = %._crit_edge.i, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i
  %i.as = phi i32 [ %i.l, %._crit_edge.i ], [ %.pre2.i, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ]
  %i.at = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.w, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ]
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %.sroa.423.0.insert.ext = zext i32 %2 to i64
  %.sroa.423.0.insert.shift = shl nuw i64 %.sroa.423.0.insert.ext, 32
  %.sroa.022.0.insert.ext = zext i32 %3 to i64    ; 2 uses
  %.sroa.022.0.insert.insert = or disjoint i64 %.sroa.423.0.insert.shift, %.sroa.022.0.insert.ext
  store i64 %.sroa.022.0.insert.insert, ptr %i.av, align 4
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !247
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.k, align 8, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 5 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !247 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 100 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !551
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.d, label %._crit_edge.i7

._crit_edge.i7:                                   ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit
  %.pre.i8 = load ptr, ptr %i.ay, align 8, !tbaa !255
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit21

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit
  %i.be = add i32 %i.ba, 1
  %i.bf = lshr i32 %i.ba, 1
  %i.bg = add i32 %i.bf, %i.ba                    ; 2 uses
  %i.bh = icmp ugt i32 %i.bg, %i.be
end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm:bb.a
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !314  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !315
  store ptr %i.x, ptr %3, align 8, !tbaa !315
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !314
  store ptr %3, ptr %i.y, align 8, !tbaa !315
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !377
  store ptr %i.aa, ptr %3, align 8, !tbaa !315
  store ptr %3, ptr %i.z, align 8, !tbaa !377
  %i.ab = load ptr, ptr %3, align 8, !tbaa !315   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !217
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !316
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !314
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !314
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !697
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !697
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !431

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !721
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpES5_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !431

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpES5_ELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpES5_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpES5_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !377  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !377
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !315 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !316
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !314  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !377
  store ptr %i.o, ptr %.031, align 8, !tbaa !315
  store ptr %.031, ptr %i.g, align 8, !tbaa !377
  store ptr %i.g, ptr %i.m, align 8, !tbaa !314
  %i.p = load ptr, ptr %.031, align 8, !tbaa !315
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !314
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !315
  store ptr %i.r, ptr %.031, align 8, !tbaa !315
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !314
  store ptr %.031, ptr %i.s, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !722

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !215    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !217
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #19
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !217
  store ptr %.0.i, ptr %0, align 8, !tbaa !215
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE9recordUseENS0_4BcOpES4_(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 15
  switch i32 %i.a, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit [
    i32 2, label %bb.b
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = lshr i32 %1, 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !264
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !434  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !333
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %2, ptr %i.i, align 4, !tbaa !16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !434
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store ptr %i.m, ptr %i.h, align 8, !tbaa !434
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !332  ; 7 uses
  %i.o = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775804
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951)
  %i.w = select i1 %i.u, i64 2305843009213693951, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store i32 %2, ptr %i.z, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = ptrtoaddr ptr %i.y to i64
  %3 = add i64 %i.o, -4
  %4 = sub i64 %3, %i.p                           ; 2 uses
  %i.ab = lshr i64 %4, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %4, 44
  %i.ad = sub i64 %i.p, %i.aa
  %diff.check38 = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check40, %diff.check38
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader55, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec42 = and i64 %i.ac, 9223372036854775800   ; 3 uses
  %i.ae = shl i64 %n.vec42, 2                     ; 2 uses
  %i.af = getelementptr i8, ptr %i.y, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.n, i64 %i.ae
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.ah = shl i64 %index44, 2                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.y, i64 %i.ah ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.n, i64 %i.ah ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.ai = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <4 x i32>, ptr %next.gep46, align 4, !tbaa !16, !alias.scope !726, !noalias !723
  %wide.load48 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !16, !alias.scope !726, !noalias !723
  %i.aj = getelementptr i8, ptr %next.gep45, i64 16
  store <4 x i32> %wide.load47, ptr %next.gep45, align 4, !tbaa !16, !alias.scope !723, !noalias !726
  store <4 x i32> %wide.load48, ptr %i.aj, align 4, !tbaa !16, !alias.scope !723, !noalias !726
  %index.next49 = add nuw i64 %index44, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ak, label %middle.block50, label %vector.body43, !llvm.loop !728

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ac, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader55

.lr.ph.i.i.i.i.i.preheader55:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block50
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block50 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block50 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader55, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader55 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.al = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !726, !noalias !723
  store i32 %i.al, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !723, !noalias !726
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !729

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block50, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block50 ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.y, ptr %i.g, align 8, !tbaa !332
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !434
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !333
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = lshr i32 %1, 4
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !386
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.at, i64 %i.as ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !434 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !333
  %.not.i6 = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %2, ptr %i.ax, align 4, !tbaa !16
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !434
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !434
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !332 ; 7 uses
  %i.bd = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775804
  br i1 %i.bg, label %bb.j, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7: ; preds = %bb.i
  %i.bh = ashr exact i64 %i.bf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i8, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 2305843009213693951)
  %i.bl = select i1 %i.bj, i64 2305843009213693951, i64 %i.bk ; 3 uses
  %.not.i.i.i9 = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i9)
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #20 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store i32 %2, ptr %i.bo, align 4, !tbaa !16
  %.not10.i.i.i.i.i10 = icmp eq ptr %i.bc, %i.ax
  br i1 %.not10.i.i.i.i.i10, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11.preheader

.lr.ph.i.i.i.i.i11.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7
  %i.bp = ptrtoaddr ptr %i.bn to i64
  %5 = add i64 %i.bd, -4
  %6 = sub i64 %5, %i.be                          ; 2 uses
  %i.bq = lshr i64 %6, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 44
  %i.bs = sub i64 %i.be, %i.bp
  %diff.check = icmp ugt i64 %i.bs, -32
  %or.cond54 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond54, label %.lr.ph.i.i.i.i.i11.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i11.preheader
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bn, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bc, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.bw ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.bc, i64 %i.bw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.bx = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !16, !alias.scope !733, !noalias !730
  %wide.load35 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !16, !alias.scope !733, !noalias !730
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !730, !noalias !733
  store <4 x i32> %wide.load35, ptr %i.by, align 4, !tbaa !16, !alias.scope !730, !noalias !733
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !735

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11.preheader56

.lr.ph.i.i.i.i.i11.preheader56:                   ; preds = %.lr.ph.i.i.i.i.i11.preheader, %middle.block
  %.012.i.i.i.i.i12.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i11.preheader ], [ %i.bu, %middle.block ]
  %.0911.i.i.i.i.i13.ph = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i11.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %.lr.ph.i.i.i.i.i11.preheader56, %.lr.ph.i.i.i.i.i11
  %.012.i.i.i.i.i12 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i11 ], [ %.012.i.i.i.i.i12.ph, %.lr.ph.i.i.i.i.i11.preheader56 ] ; 2 uses
  %.0911.i.i.i.i.i13 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i11 ], [ %.0911.i.i.i.i.i13.ph, %.lr.ph.i.i.i.i.i11.preheader56 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.ca = load i32, ptr %.0911.i.i.i.i.i13, align 4, !tbaa !16, !alias.scope !733, !noalias !730
  store i32 %i.ca, ptr %.012.i.i.i.i.i12, align 4, !tbaa !16, !alias.scope !730, !noalias !733
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i13, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i12, i64 4 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.cb, %i.ax
  br i1 %.not.i.i.i.i.i14, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11, !llvm.loop !736

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15: ; preds = %.lr.ph.i.i.i.i.i11, %middle.block, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7
  %.0.lcssa.i.i.i.i.i16 = phi ptr [ %i.bn, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7 ], [ %i.bu, %middle.block ], [ %i.cc, %.lr.ph.i.i.i.i.i11 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i16, i64 4
  %.not.i23.i.i17 = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i.i17, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bf) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18: ; preds = %bb.k, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15
  store ptr %i.bn, ptr %i.av, align 8, !tbaa !332
  store ptr %i.cd, ptr %i.aw, align 8, !tbaa !434
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.ce, ptr %i.ay, align 8, !tbaa !333
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18, %bb.h, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(76) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !264    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.s = load i64, ptr %2, align 8
  store i64 %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !286
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 4, ptr %i.w, align 4, !tbaa !287
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 5 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !288
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !288  ; 8 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !286 ; 3 uses
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.af = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.q, %i.m
  %i.aj = add i64 %i.e, %i.z
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = add i64 %i.ak, 23
  %diff.check = icmp ult i64 %i.al, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 9223372036854775800     ; 3 uses
  %i.am = shl i64 %n.vec, 2                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.x, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.y, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ap ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.y, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !16
  %wide.load64 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !16
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load64, ptr %i.ar, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !737

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader107

.lr.ph.i.i.i.i.i.i.preheader107:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader107, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader107 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader107 ] ; 2 uses
  %i.at = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !16
  store i32 %i.at, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ae
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !738

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  store i32 %i.ac, ptr %i.v, align 8, !tbaa !286
  store i32 0, ptr %i.ab, align 8, !tbaa !286
  br label %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.y, ptr %i.t, align 8, !tbaa !288
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 20
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !316
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !314  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !382
  store ptr %i.o, ptr %.031, align 8, !tbaa !315
  store ptr %.031, ptr %i.g, align 8, !tbaa !382
  store ptr %i.g, ptr %i.m, align 8, !tbaa !314
  %i.p = load ptr, ptr %.031, align 8, !tbaa !315
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !314
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !315
  store ptr %i.r, ptr %.031, align 8, !tbaa !315
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !314
  store ptr %.031, ptr %i.s, align 8, !tbaa !315
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !757

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #19
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !25
  store ptr %.0.i, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE10rescheduleEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !433, !nonnull !208, !align !239 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !241  ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 136                 ; 3 uses
  %i.k = icmp ugt i64 %i.j, 2305843009213693951
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not49 = icmp eq ptr %i.e, %i.f
  br i1 %.not49, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.j, 2
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #20
          to label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.e ; 4 uses

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %0, align 8, !tbaa !332
  store ptr %i.n, ptr %i.o, align 8, !tbaa !434
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.j ; 2 uses
  store ptr %i.p, ptr %i.l, align 8, !tbaa !333
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.promoted24 = phi ptr [ null, %bb.c ], [ %i.n, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 4 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.p, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  store ptr %.promoted, ptr %i.l, align 8
  store ptr %.promoted24, ptr %0, align 8
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEEZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EvT_SE_T0_.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit
  store ptr %i.bp, ptr %i.l, align 8
  store ptr %i.bo, ptr %0, align 8
  %.not.i.i = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEEZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EvT_SE_T0_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.r = ptrtoint ptr %i.bn to i64
  %i.s = ptrtoint ptr %i.bo to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EEEvT_SH_T0_T1_(ptr %i.bo, ptr %i.bn, i64 noundef %i.x, ptr nonnull %1)
          to label %.noexc14 unwind label %bb.e

.noexc14:                                         ; preds = %bb.d
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EEEvT_SH_T0_(ptr %i.bo, ptr %i.bn, ptr nonnull %1)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEEZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EvT_SE_T0_.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc14, %bb.d, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %0, align 8, !tbaa !332
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit
  %i.z = phi ptr [ %.promoted24, %.lr.ph ], [ %i.bn, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ] ; 7 uses
  %i.aa = phi ptr [ %i.f, %.lr.ph ], [ %i.bw, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ]
  %i.ab = phi i64 [ 0, %.lr.ph ], [ %i.br, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ]
  %.01028 = phi i32 [ 0, %.lr.ph ], [ %i.bq, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ac = phi ptr [ %.promoted, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.ad = phi ptr [ %.promoted24, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ] ; 13 uses
  %i.ae = getelementptr inbounds nuw [136 x i8], ptr %i.aa, i64 %i.ab
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !436
  %i.ag = and i8 %i.af, 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = shl i32 %.01028, 4
  %i.aj = or disjoint i32 %i.ai, 3                ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.z, %i.ac
  br i1 %.not.i.i16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.aj, ptr %i.z, align 4, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !434
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.al = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.am = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775804
  br i1 %i.ao, label %bb.j, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.ac, ptr %i.l, align 8
  store ptr %i.ad, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ap = ashr exact i64 %i.an, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 2305843009213693951)
  %i.at = select i1 %i.ar, i64 2305843009213693951, i64 %i.as ; 3 uses
  %.not.i.i.i.i17 = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i17)
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #20
          to label %.noexc19 unwind label %.loopexit ; 8 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i32 %i.aj, ptr %i.aw, align 4, !tbaa !16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc19
  %i.ax = ptrtoaddr ptr %i.av to i64
  %2 = add i64 %i.al, -4
  %3 = sub i64 %2, %i.am                          ; 2 uses
  %i.ay = lshr i64 %3, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 28
  %i.ba = sub i64 %i.am, %i.ax
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.bb = shl i64 %n.vec, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.av, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ad, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.be ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.ad, i64 %i.be ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.bf = getelementptr i8, ptr %next.gep71, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep71, align 4, !tbaa !16, !alias.scope !761, !noalias !758
  %wide.load72 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !16, !alias.scope !761, !noalias !758
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !758, !noalias !761
  store <4 x i32> %wide.load72, ptr %i.bg, align 4, !tbaa !16, !alias.scope !758, !noalias !761
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !763

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader74

.lr.ph.i.i.i.i.i.i.preheader74:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader74, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader74 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.bi = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !761, !noalias !758
  store i32 %i.bi, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !758, !noalias !761
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !764

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.av, %.noexc19 ], [ %i.bc, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.an) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bl, ptr %i.q, align 8, !tbaa !434
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.at
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.l, align 8
  store ptr %i.ad, ptr %0, align 8
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.f
  %i.bn = phi ptr [ %i.ak, %bb.h ], [ %i.bl, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.z, %bb.f ] ; 7 uses
  %i.bo = phi ptr [ %i.ad, %bb.h ], [ %i.av, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ad, %bb.f ] ; 6 uses
  %i.bp = phi ptr [ %i.ac, %bb.h ], [ %i.bm, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.bq = add i32 %.01028, 1                      ; 2 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !433, !nonnull !208, !align !239 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !240
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !241 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 136
  %i.cb = icmp ugt i64 %i.ca, %i.br
  br i1 %i.cb, label %bb.f, label %._crit_edge, !llvm.loop !765

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEEZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EvT_SE_T0_.exit: ; preds = %._crit_edge.thread, %._crit_edge, %.noexc14
  %i.cc = phi ptr [ %.promoted24, %._crit_edge.thread ], [ %i.bn, %._crit_edge ], [ %i.bn, %.noexc14 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !434
  ret void

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %i.cf = phi ptr [ %.pre, %bb.e ], [ %i.ad, %.loopexit ], [ %i.ad, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !333
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE15emitInstructionENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 38 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !433, !nonnull !208, !align !239
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = lshr i32 %1, 4
  %i.e = zext nneg i32 %i.d to i64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !264
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %i.e ; 90 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 81 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !444, !nonnull !208, !align !239
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !268
  tail call void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.i, i32 noundef %i.k)
  %i.l = load i32, ptr %i.g, align 8, !tbaa !277  ; 9 uses
  switch i32 %i.l, label %bb.bx [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 62, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.u
    i32 14, label %bb.v
    i32 83, label %bb.w
    i32 15, label %bb.w
    i32 84, label %bb.x
    i32 16, label %bb.x
    i32 17, label %bb.y
    i32 18, label %bb.z
    i32 19, label %bb.aa
    i32 85, label %bb.ac
    i32 20, label %bb.ac
    i32 21, label %bb.ad
    i32 87, label %bb.ae
    i32 22, label %bb.af
    i32 23, label %bb.ag
    i32 24, label %bb.ah
    i32 26, label %bb.ai
    i32 25, label %bb.ai
    i32 27, label %bb.aj
    i32 28, label %bb.aj
    i32 29, label %bb.aj
    i32 30, label %bb.aj
    i32 31, label %bb.aj
    i32 32, label %bb.aj
    i32 33, label %bb.ak
    i32 34, label %bb.ak
    i32 35, label %bb.ak
    i32 36, label %bb.ak
    i32 37, label %bb.ak
    i32 38, label %bb.ak
    i32 45, label %bb.ak
    i32 46, label %bb.ak
    i32 39, label %bb.al
    i32 40, label %bb.al
    i32 41, label %bb.al
    i32 42, label %bb.al
    i32 43, label %bb.al
    i32 44, label %bb.al
    i32 47, label %bb.al
    i32 48, label %bb.al
    i32 49, label %bb.an
    i32 50, label %bb.ao
    i32 51, label %bb.ao
    i32 52, label %bb.ao
    i32 53, label %bb.ap
end_hunk_6
begin_hunk_7_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EEEvT_SH_SH_SH_T0_:bb.a
  %i.ag = icmp ult i32 %i.n, %i.z
  br i1 %i.ag, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.split51, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit29
  %i.ah = icmp eq i32 %i.l, %i.z
  br i1 %i.ah, label %.split52, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit33

.split52:                                         ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !672
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !672
  %i.am = icmp ult i32 %i.aj, %i.al
  br i1 %i.am, label %bb.h, label %bb.d

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit33: ; preds = %bb.c
  %i.an = icmp ult i32 %i.l, %i.z
  br i1 %i.an, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.split52, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit33
  br label %bb.h

bb.e:                                             ; preds = %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit
  %.sroa.0.0.copyload.i37 = load i32, ptr %3, align 4, !tbaa !16 ; 3 uses
  %i.ao = lshr i32 %.sroa.0.0.copyload.i37, 4
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [136 x i8], ptr %i.f, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !662 ; 4 uses
  %i.at = icmp eq i32 %i.l, %i.as
  br i1 %i.at, label %.split53, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit39

.split53:                                         ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  %i.av = load i32, ptr %i.au, align 4, !tbaa !672
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 124
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !672
  %i.ay = icmp ult i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit39: ; preds = %bb.e
  %i.az = icmp ult i32 %i.l, %i.as
  br i1 %i.az, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.split53, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit39
  %i.ba = icmp eq i32 %i.n, %i.as
  br i1 %i.ba, label %.split54, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit44

.split54:                                         ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 124
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !672
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 124
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !672
  %i.bf = icmp ult i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.h, label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit44: ; preds = %bb.f
  %i.bg = icmp ult i32 %i.n, %i.as
  br i1 %i.bg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split54, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit44
  br label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit44, %.split54, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit39, %.split53, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit33, %.split52, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit29, %.split51, %bb.g, %bb.d
  %.sroa.01.0.copyload.i.sink = phi i32 [ %.sroa.0.0.copyload.i27, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit33 ], [ %.sroa.0.0.copyload.i, %bb.g ], [ %.sroa.01.0.copyload.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit39 ], [ %.sroa.0.0.copyload.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit29 ], [ %.sroa.01.0.copyload.i, %bb.d ], [ %.sroa.0.0.copyload.i, %.split51 ], [ %.sroa.0.0.copyload.i27, %.split52 ], [ %.sroa.01.0.copyload.i, %.split53 ], [ %.sroa.0.0.copyload.i37, %.split54 ], [ %.sroa.0.0.copyload.i37, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit44 ]
  %.sink = phi ptr [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit33 ], [ %2, %bb.g ], [ %1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit39 ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit29 ], [ %1, %bb.d ], [ %2, %.split51 ], [ %3, %.split52 ], [ %1, %.split53 ], [ %3, %.split54 ], [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit44 ]
  %.sroa.0.0.copyload.i.i40 = load i32, ptr %0, align 4, !tbaa !16
  store i32 %.sroa.01.0.copyload.i.sink, ptr %0, align 4, !tbaa !16
  store i32 %.sroa.0.0.copyload.i.i40, ptr %.sink, align 4, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !128    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !432

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !177
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !128
  store i32 %i.s, ptr %i.d, align 4, !tbaa !128
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !177
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !432

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !128
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !128
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !128
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !784

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !128
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !785

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %4 = add i64 %i.aq, -4
  %5 = sub i64 %4, %i.k                           ; 2 uses
  %i.ar = lshr i64 %5, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !128
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !128
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !786

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !128
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !787

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !177
  %i.az = icmp sgt i64 %i.k, 4
  br i1 %i.az, label %bb.n, label %bb.o, !prof !432

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !177
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 4
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %1, align 4, !tbaa !128
  store i32 %i.bb, ptr %.0.i.i.i.i.i, align 4, !tbaa !128
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !177
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %6 = add i64 %i.f, -4
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.be = lshr i64 %7, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bf, 9223372036854775800  ; 3 uses
  %i.bg = shl i64 %n.vec115, 2
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bi = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !128
  store <4 x i32> %broadcast.splat117, ptr %i.bj, align 4, !tbaa !128
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bk, label %middle.block122, label %vector.body118, !llvm.loop !788

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bf, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !128
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !789

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !178   ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 4 uses
  %i.bq = sub nsw i64 2305843009213693951, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951)
  %i.bv = select i1 %i.bt, i64 2305843009213693951, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 2
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load i32, ptr %3, align 4, !tbaa !128   ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ce, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ch = shl i64 %n.vec141, 2
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cj = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !128
  store <4 x i32> %broadcast.splat143, ptr %i.ck, align 4, !tbaa !128
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cl, label %middle.block148, label %vector.body144, !llvm.loop !790

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.cg, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.cd, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !128
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !791

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cn = icmp sgt i64 %i.bx, 4
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !432

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 4
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.bm, align 4, !tbaa !128
  store i32 %i.cp, ptr %i.ca, align 4, !tbaa !128
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 4
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !432

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 4
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load i32, ptr %1, align 4, !tbaa !128
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !128
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #19
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !178
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !177
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !179
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode12BcInstHelperINS0_9BcVmConstENS0_6BcJumpIS2_EEE7setBcOpEjNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265, !nonnull !208, !align !239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !264  ; 2 uses
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %i.f ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !286  ; 3 uses
  %.not = icmp ult i32 %1, %i.k
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %1, 1                            ; 6 uses
  %i.m = icmp ugt i32 %i.l, %i.k
  br i1 %i.m, label %bb.c, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !287  ; 3 uses
  %i.p = icmp ugt i32 %i.l, %i.o
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
end_hunk_7
begin_hunk_8_@_ZN4Luau8Bytecode12BcInstHelperINS0_9BcVmConstENS0_6BcJumpIS2_EEE7setBcOpEjNS0_4BcOpE:bb.a
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !288
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bk, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i, !llvm.loop !795

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit: ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %bb.b, %bb.f
  store i32 %i.l, ptr %i.j, align 8, !tbaa !286
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !265
  %.pre103 = load i32, ptr %i.c, align 8
  %.pre104 = load ptr, ptr %.pre, align 8, !tbaa !264
  %.pre105 = lshr i32 %.pre103, 4
  %.pre106 = zext nneg i32 %.pre105 to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, %bb.a
  %.pre-phi107 = phi i64 [ %.pre106, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.f, %bb.a ]
  %i.bl = phi ptr [ %.pre104, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.g, %bb.a ]
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.bl, i64 %.pre-phi107
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = zext i32 %1 to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !288
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  store i32 %2, ptr %i.bq, align 4, !tbaa !16
  %i.br = and i32 %2, 15
  switch i32 %i.br, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit [
    i32 2, label %bb.h
    i32 4, label %bb.w
  ]

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %0, align 8, !tbaa !442, !nonnull !208, !align !239
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = lshr i32 %2, 4
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !264
  %i.bx = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %i.bv ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !284 ; 10 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !284 ; 7 uses
  %i.cc = ptrtoint ptr %i.cb to i64               ; 3 uses
  %i.cd = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 7 uses
  %i.cf = ashr i64 %i.ce, 4                       ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.ch = load i32, ptr %i.c, align 8             ; 4 uses
  %i.ci = and i64 %i.ce, -16
  %scevgep.i.i.i = getelementptr i8, ptr %i.bz, i64 %i.ci ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i ], [ %i.cv, %bb.m ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %i.cu, %bb.m ] ; 9 uses
  %i.cj = load i32, ptr %.sroa.032.051.i.i.i, align 4
  %i.ck = icmp eq i32 %i.cj, %i.ch
  br i1 %i.ck, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp eq i32 %i.cm, %i.ch
  br i1 %i.cn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp eq i32 %i.cp, %i.ch
  br i1 %i.cq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit138, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp eq i32 %i.cs, %i.ch
  br i1 %i.ct, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit140, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.cv = add nsw i64 %.052.i.i.i, -1
  %i.cw = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cw, label %bb.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !796

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.m
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.cc, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.h
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ce, %bb.h ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bz, %bb.h ] ; 5 uses
  %i.cx = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.cx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread [
    i64 3, label %bb.n
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %i.c, align 8
  br label %bb.r

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %i.c, align 8
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.cy = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4
  %i.cz = load i32, ptr %i.c, align 8             ; 2 uses
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge.i.i.i
  %i.dc = phi i32 [ %i.cz, %bb.o ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.db, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.dd = load i32, ptr %.sroa.032.1.i.i.i, align 4
  %i.de = icmp eq i32 %i.dd, %i.dc
  br i1 %i.de, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge._crit_edge57.i.i.i
  %i.dg = phi i32 [ %i.dc, %bb.q ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.df, %bb.q ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.dh = load i32, ptr %.sroa.032.2.i.i.i, align 4
  %i.di = icmp eq i32 %i.dh, %i.dg
  %spec.select.i.i.i = select i1 %i.di, ptr %.sroa.032.2.i.i.i, ptr %i.cb
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit138: ; preds = %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit140: ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit: ; preds = %bb.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit138, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit140, %bb.n, %bb.p, %bb.r
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.p ], [ %spec.select.i.i.i, %bb.r ], [ %.sroa.032.0.lcssa.i.i.i, %bb.n ], [ %i.dl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit140 ], [ %i.dk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit138 ], [ %i.dj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.i ]
  %i.dm = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.cb
  br i1 %i.dm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !333
  %.not.i = icmp eq ptr %i.cb, %i.do
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.dp, ptr %i.cb, align 4, !tbaa !16
  %i.dq = load ptr, ptr %i.ca, align 8, !tbaa !434
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.ca, align 8, !tbaa !434
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.ds = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.ds, label %bb.u, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.dt = ashr exact i64 %i.ce, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 2305843009213693951)
  %i.dx = select i1 %i.dv, i64 2305843009213693951, i64 %i.dw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #20 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ce
  %i.eb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ec = ptrtoaddr ptr %i.dz to i64
  %3 = add i64 %i.cc, -4
  %4 = sub i64 %3, %i.cd                          ; 2 uses
  %i.ed = lshr i64 %4, 2
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check178 = icmp ult i64 %4, 44
  %i.ef = sub i64 %i.cd, %i.ec
  %diff.check176 = icmp ugt i64 %i.ef, -32
  %or.cond192 = or i1 %min.iters.check178, %diff.check176
  br i1 %or.cond192, label %.lr.ph.i.i.i.i.i.preheader194, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec180 = and i64 %i.ee, 9223372036854775800  ; 3 uses
  %i.eg = shl i64 %n.vec180, 2                    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dz, i64 %i.eg  ; 2 uses
  %i.ei = getelementptr i8, ptr %i.bz, i64 %i.eg
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %i.ej = shl i64 %index182, 2                    ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.dz, i64 %i.ej ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.bz, i64 %i.ej ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.ek = getelementptr i8, ptr %next.gep184, i64 16
  %wide.load185 = load <4 x i32>, ptr %next.gep184, align 4, !tbaa !16, !alias.scope !800, !noalias !797
  %wide.load186 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !16, !alias.scope !800, !noalias !797
  %i.el = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %wide.load185, ptr %next.gep183, align 4, !tbaa !16, !alias.scope !797, !noalias !800
  store <4 x i32> %wide.load186, ptr %i.el, align 4, !tbaa !16, !alias.scope !797, !noalias !800
  %index.next187 = add nuw i64 %index182, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.em, label %middle.block188, label %vector.body181, !llvm.loop !802

middle.block188:                                  ; preds = %vector.body181
  %cmp.n189 = icmp eq i64 %i.ee, %n.vec180
  br i1 %cmp.n189, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader194

.lr.ph.i.i.i.i.i.preheader194:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block188
  %.012.i.i.i.i.i.ph = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eh, %middle.block188 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ei, %middle.block188 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader194, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader194 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader194 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.en = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !800, !noalias !797
  store i32 %i.en, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !797, !noalias !800
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eo, %i.cb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !803

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block188, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.eh, %middle.block188 ], [ %i.ep, %.lr.ph.i.i.i.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.dz, ptr %i.by, align 8, !tbaa !332
  store ptr %i.eq, ptr %i.ca, align 8, !tbaa !434
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.er, ptr %i.dn, align 8, !tbaa !333
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.w:                                             ; preds = %bb.g
  %i.es = load ptr, ptr %0, align 8, !tbaa !442, !nonnull !208, !align !239
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = lshr i32 %2, 4
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !386
  %i.ex = getelementptr inbounds nuw [56 x i8], ptr %i.ew, i64 %i.ev ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !284 ; 10 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40 ; 4 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !284 ; 7 uses
  %i.fc = ptrtoint ptr %i.fb to i64               ; 3 uses
  %i.fd = ptrtoint ptr %i.ez to i64               ; 3 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 7 uses
  %i.ff = ashr i64 %i.fe, 4                       ; 2 uses
  %i.fg = icmp sgt i64 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i.i.i31, label %._crit_edge.i.i.i20

.lr.ph.i.i.i31:                                   ; preds = %bb.w
  %i.fh = load i32, ptr %i.c, align 8             ; 4 uses
  %i.fi = and i64 %i.fe, -16
  %scevgep.i.i.i32 = getelementptr i8, ptr %i.ez, i64 %i.fi ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %.lr.ph.i.i.i31
  %.052.i.i.i33 = phi i64 [ %i.ff, %.lr.ph.i.i.i31 ], [ %i.fv, %bb.ab ] ; 2 uses
  %.sroa.032.051.i.i.i34 = phi ptr [ %i.ez, %.lr.ph.i.i.i31 ], [ %i.fu, %bb.ab ] ; 9 uses
  %i.fj = load i32, ptr %.sroa.032.051.i.i.i34, align 4
  %i.fk = icmp eq i32 %i.fj, %i.fh
  br i1 %i.fk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i34, i64 4
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = icmp eq i32 %i.fm, %i.fh
  br i1 %i.fn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i34, i64 8
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = icmp eq i32 %i.fp, %i.fh
  br i1 %i.fq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit130, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i34, i64 12
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = icmp eq i32 %i.fs, %i.fh
  br i1 %i.ft, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit132, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i34, i64 16
  %i.fv = add nsw i64 %.052.i.i.i33, -1
  %i.fw = icmp sgt i64 %.052.i.i.i33, 1
  br i1 %i.fw, label %bb.x, label %._crit_edge.loopexit.i.i.i35, !llvm.loop !796

._crit_edge.loopexit.i.i.i35:                     ; preds = %bb.ab
  %.pre59.i.i.i36 = ptrtoint ptr %scevgep.i.i.i32 to i64
  %.pre60.i.i.i37 = sub i64 %i.fc, %.pre59.i.i.i36
  br label %._crit_edge.i.i.i20

._crit_edge.i.i.i20:                              ; preds = %._crit_edge.loopexit.i.i.i35, %bb.w
  %.pre-phi61.i.i.i21 = phi i64 [ %.pre60.i.i.i37, %._crit_edge.loopexit.i.i.i35 ], [ %i.fe, %bb.w ]
  %.sroa.032.0.lcssa.i.i.i22 = phi ptr [ %scevgep.i.i.i32, %._crit_edge.loopexit.i.i.i35 ], [ %i.ez, %bb.w ] ; 5 uses
  %i.fx = ashr exact i64 %.pre-phi61.i.i.i21, 2
  switch i64 %i.fx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread [
    i64 3, label %bb.ac
    i64 2, label %._crit_edge._crit_edge.i.i.i28
    i64 1, label %._crit_edge._crit_edge57.i.i.i23
  ]

._crit_edge._crit_edge57.i.i.i23:                 ; preds = %._crit_edge.i.i.i20
  %.pre58.i.i.i24 = load i32, ptr %i.c, align 8
  br label %bb.ag

._crit_edge._crit_edge.i.i.i28:                   ; preds = %._crit_edge.i.i.i20
  %.pre.i.i.i29 = load i32, ptr %i.c, align 8
  br label %bb.ae

bb.ac:                                            ; preds = %._crit_edge.i.i.i20
  %i.fy = load i32, ptr %.sroa.032.0.lcssa.i.i.i22, align 4
  %i.fz = load i32, ptr %i.c, align 8             ; 2 uses
  %i.ga = icmp eq i32 %i.fy, %i.fz
  br i1 %i.ga, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i22, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge._crit_edge.i.i.i28
  %i.gc = phi i32 [ %i.fz, %bb.ad ], [ %.pre.i.i.i29, %._crit_edge._crit_edge.i.i.i28 ] ; 2 uses
  %.sroa.032.1.i.i.i30 = phi ptr [ %i.gb, %bb.ad ], [ %.sroa.032.0.lcssa.i.i.i22, %._crit_edge._crit_edge.i.i.i28 ] ; 3 uses
  %i.gd = load i32, ptr %.sroa.032.1.i.i.i30, align 4
  %i.ge = icmp eq i32 %i.gd, %i.gc
  br i1 %i.ge, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i30, i64 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge._crit_edge57.i.i.i23
  %i.gg = phi i32 [ %i.gc, %bb.af ], [ %.pre58.i.i.i24, %._crit_edge._crit_edge57.i.i.i23 ]
  %.sroa.032.2.i.i.i25 = phi ptr [ %i.gf, %bb.af ], [ %.sroa.032.0.lcssa.i.i.i22, %._crit_edge._crit_edge57.i.i.i23 ] ; 2 uses
  %i.gh = load i32, ptr %.sroa.032.2.i.i.i25, align 4
  %i.gi = icmp eq i32 %i.gh, %i.gg
  %spec.select.i.i.i26 = select i1 %i.gi, ptr %.sroa.032.2.i.i.i25, ptr %i.fb
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit: ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i34, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit130: ; preds = %bb.z
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i34, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit132: ; preds = %bb.aa
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i34, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41: ; preds = %bb.x, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit130, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit132, %bb.ac, %bb.ae, %bb.ag
  %.sroa.08.0.in.sroa.speculated.i.i.i27 = phi ptr [ %.sroa.032.1.i.i.i30, %bb.ae ], [ %spec.select.i.i.i26, %bb.ag ], [ %.sroa.032.0.lcssa.i.i.i22, %bb.ac ], [ %i.gl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit132 ], [ %i.gk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit130 ], [ %i.gj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i34, %bb.x ]
  %i.gm = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i27, %i.fb
  br i1 %i.gm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread: ; preds = %._crit_edge.i.i.i20, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ex, i64 48 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !333
  %.not.i42 = icmp eq ptr %i.fb, %i.go
  br i1 %.not.i42, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.gp, ptr %i.fb, align 4, !tbaa !16
  %i.gq = load ptr, ptr %i.fa, align 8, !tbaa !434
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store ptr %i.gr, ptr %i.fa, align 8, !tbaa !434
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.ai:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gs = icmp eq i64 %i.fe, 9223372036854775804
  br i1 %i.gs, label %bb.aj, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43: ; preds = %bb.ai
  %i.gt = ashr exact i64 %i.fe, 2                 ; 3 uses
  %.sroa.speculated.i.i.i44 = tail call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i44, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = tail call i64 @llvm.umin.i64(i64 %i.gu, i64 2305843009213693951)
  %i.gx = select i1 %i.gv, i64 2305843009213693951, i64 %i.gw ; 3 uses
  %.not.i.i.i45 = icmp ne i64 %i.gx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i45)
  %i.gy = shl nuw nsw i64 %i.gx, 2
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #20 ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.fe
  %i.hb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !16
  %.not10.i.i.i.i.i46 = icmp eq ptr %i.ez, %i.fb
  br i1 %.not10.i.i.i.i.i46, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47.preheader

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %i.hc = ptrtoaddr ptr %i.gz to i64
  %5 = add i64 %i.fc, -4
  %6 = sub i64 %5, %i.fd                          ; 2 uses
  %i.hd = lshr i64 %6, 2
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %6, 44
  %i.hf = sub i64 %i.fd, %i.hc
  %diff.check159 = icmp ugt i64 %i.hf, -32
  %or.cond193 = or i1 %min.iters.check161, %diff.check159
  br i1 %or.cond193, label %.lr.ph.i.i.i.i.i47.preheader199, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %n.vec163 = and i64 %i.he, 9223372036854775800  ; 3 uses
  %i.hg = shl i64 %n.vec163, 2                    ; 2 uses
  %i.hh = getelementptr i8, ptr %i.gz, i64 %i.hg  ; 2 uses
  %i.hi = getelementptr i8, ptr %i.ez, i64 %i.hg
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next170, %vector.body164 ] ; 2 uses
  %i.hj = shl i64 %index165, 2                    ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.gz, i64 %i.hj ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.ez, i64 %i.hj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.hk = getelementptr i8, ptr %next.gep167, i64 16
  %wide.load168 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !16, !alias.scope !807, !noalias !804
  %wide.load169 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !16, !alias.scope !807, !noalias !804
  %i.hl = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x i32> %wide.load168, ptr %next.gep166, align 4, !tbaa !16, !alias.scope !804, !noalias !807
  store <4 x i32> %wide.load169, ptr %i.hl, align 4, !tbaa !16, !alias.scope !804, !noalias !807
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.hm = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.hm, label %middle.block171, label %vector.body164, !llvm.loop !809

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.he, %n.vec163
  br i1 %cmp.n172, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47.preheader199

.lr.ph.i.i.i.i.i47.preheader199:                  ; preds = %.lr.ph.i.i.i.i.i47.preheader, %middle.block171
  %.012.i.i.i.i.i48.ph = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.hh, %middle.block171 ]
  %.0911.i.i.i.i.i49.ph = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.hi, %middle.block171 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader199, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i48 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i47.preheader199 ] ; 2 uses
  %.0911.i.i.i.i.i49 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i47 ], [ %.0911.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i47.preheader199 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.hn = load i32, ptr %.0911.i.i.i.i.i49, align 4, !tbaa !16, !alias.scope !807, !noalias !804
  store i32 %i.hn, ptr %.012.i.i.i.i.i48, align 4, !tbaa !16, !alias.scope !804, !noalias !807
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 4 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.ho, %i.fb
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47, !llvm.loop !810

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51: ; preds = %.lr.ph.i.i.i.i.i47, %middle.block171, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %.0.lcssa.i.i.i.i.i52 = phi ptr [ %i.gz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43 ], [ %i.hh, %middle.block171 ], [ %i.hp, %.lr.ph.i.i.i.i.i47 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i52, i64 4
  %.not.i23.i.i53 = icmp eq ptr %i.ez, null
  br i1 %.not.i23.i.i53, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54: ; preds = %bb.ak, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  store ptr %i.gz, ptr %i.ey, align 8, !tbaa !332
  store ptr %i.hq, ptr %i.fa, align 8, !tbaa !434
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hr, ptr %i.gn, align 8, !tbaa !333
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41, %bb.ah, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, %bb.s, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g
  ret void
}

declare void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef) local_unnamed_addr #2

declare void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !208, !align !239 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %.loopexit, %bb.a
  %.tr33 = phi i32 [ %1, %bb.a ], [ %.sroa.03.0.copyload, %.loopexit ] ; 12 uses
  %i.h = and i32 %.tr33, 15
  switch i32 %i.h, label %bb.l [
    i32 4, label %bb.b
    i32 2, label %bb.h
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.i = lshr i32 %.tr33, 4
  %i.j = zext nneg i32 %i.i to i64
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !386
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.j
  %i.m = load i64, ptr %i.d, align 8, !tbaa !539
  %.not.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !315 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %.tr33, %i.o
  br i1 %i.p, label %.thread, label %.preheader, !llvm.loop !696

bb.d:                                             ; preds = %bb.b
  %.0.insert.ext.i.i.i.i = zext i32 %.tr33 to i64 ; 3 uses
  %i.q = load i64, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.r = urem i64 %.0.insert.ext.i.i.i.i, %i.q    ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !314  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !315  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !316
  %i.z = icmp eq i64 %i.y, %.0.insert.ext.i.i.i.i
  %i.aa = load i32, ptr %i.w, align 8
  %i.ab = icmp eq i32 %.tr33, %i.aa
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %.thread, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ae = icmp eq i64 %i.ak, %.0.insert.ext.i.i.i.i
  %i.af = load i32, ptr %i.ad, align 8
  %i.ag = icmp eq i32 %.tr33, %i.af
  %i.ah = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %i.ah, label %.thread, label %.lr.ph.i.i.i.i, !llvm.loop !318

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.ai, %bb.f ], [ %i.v, %bb.e ]
  %i.ai = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !315 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !316 ; 2 uses
  %i.al = urem i64 %i.ak, %i.q
  %.not19.i.i.i.i = icmp eq i64 %i.al, %i.r
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !318

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %.loopexit, !llvm.loop !318

.thread:                                          ; preds = %bb.e, %bb.f, %bb.c
  %.sroa.06.1.i.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.06.0.i.i, %bb.c ], [ %i.v, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 12
  %i.an = load i8, ptr %i.am, align 4, !tbaa !319
  br label %common.ret128

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %bb.d, %..loopexit_crit_edge21.i.i.i.i
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !288
  %.sroa.03.0.copyload = load i32, ptr %i.ao, align 4, !tbaa !16
  br label %tailrecurse

bb.h:                                             ; preds = %tailrecurse
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !539
  %.not.not.i.i10 = icmp eq i64 %i.ap, 0
  br i1 %.not.not.i.i10, label %.preheader83, label %bb.i

.preheader83:                                     ; preds = %bb.h, %.preheader83
  %.sroa.06.0.in.i.i20 = phi ptr [ %.sroa.06.0.i.i21, %.preheader83 ], [ %i.g, %bb.h ]
  %.sroa.06.0.i.i21 = load ptr, ptr %.sroa.06.0.in.i.i20, align 8, !tbaa !315, !nonnull !208, !noundef !208 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i21, i64 8
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %.tr33, %i.ar
  br i1 %i.as, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEE4findERS7_.exit23, label %.preheader83, !llvm.loop !696

bb.i:                                             ; preds = %bb.h
  %.0.insert.ext.i.i.i.i12 = zext i32 %.tr33 to i64 ; 3 uses
  %i.at = load i64, ptr %i.f, align 8, !tbaa !25  ; 2 uses
  %i.au = urem i64 %.0.insert.ext.i.i.i.i12, %i.at ; 2 uses
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !314, !nonnull !208, !noundef !208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !315 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
end_hunk_8
