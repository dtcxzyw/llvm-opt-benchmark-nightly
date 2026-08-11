inline.NumInlined: 5848
inline.NumDeleted: 2548
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12rebuildGraphEPKjjRSt6vectorIjSaIjEESA_:bb.a
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
  br i1 %i.ain, label %middle.block1723, label %vector.body1716, !llvm.loop !242

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
  br i1 %.not.i.i.i.i.i.i.i.i685, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686, label %.lr.ph.i.i.i.i.i.i.i.i682, !llvm.loop !243

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686: ; preds = %.lr.ph.i.i.i.i.i.i.i.i682, %middle.block1723, %bb.bp
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahi, i64 24
  %.not.i.i.i.i687 = icmp eq ptr %i.ahx, %i.air
  br i1 %.not.i.i.i.i687, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689, label %bb.bq

bb.bq:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686
  call void @_ZdlPv(ptr noundef %i.ahx) #23
  %.pre2.pre.i.i.i688 = load i32, ptr %i.ahk, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689: ; preds = %bb.bq, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686
  %.pre2.i.i.i690 = phi i32 [ %i.ahy, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i686 ], [ %.pre2.pre.i.i.i688, %bb.bq ]
  store ptr %i.ahw, ptr %i.ahj, align 8, !tbaa !218
  store i32 %.09.i.i.i.i679, ptr %i.ahm, align 4, !tbaa !217
  br label %_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit691

_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit691: ; preds = %._crit_edge.i.i.i677, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689
  %i.ais = phi i32 [ %i.ahl, %._crit_edge.i.i.i677 ], [ %.pre2.i.i.i690, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689 ]
  %i.ait = phi ptr [ %.pre.i.i.i678, %._crit_edge.i.i.i677 ], [ %i.ahw, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i689 ]
  %i.aiu = shl i32 %i.ahd, 4
  %i.aiv = or disjoint i32 %i.aiu, 7              ; 2 uses
  %i.aiw = zext i32 %i.ais to i64
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %i.aiw
  store i32 %i.aiv, ptr %i.aix, align 4, !tbaa !16
  %i.aiy = load i32, ptr %i.ahk, align 8, !tbaa !216
  %i.aiz = add i32 %i.aiy, 1
  store i32 %i.aiz, ptr %i.ahk, align 8, !tbaa !216
  call void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.ahe, i32 %i.aiv, i32 %.sroa.2329.0.copyload)
  %i.aja = load i32, ptr %i.a, align 4, !tbaa !138
  %i.ajb = lshr i32 %i.aja, 8
  %i.ajc = trunc i32 %i.ajb to i8                 ; 3 uses
  %i.ajd = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 400 ; 2 uses
  %.0.copyload.i.i.i.i = load i32, ptr %5, align 4 ; 6 uses
  %.0.insert.ext.i.i.i.i = zext i32 %.0.copyload.i.i.i.i to i64 ; 4 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajd, i64 408
  %i.ajg = load i64, ptr %i.ajf, align 8, !tbaa !25 ; 2 uses
  %i.ajh = urem i64 %.0.insert.ext.i.i.i.i, %i.ajg ; 3 uses
  %i.aji = load ptr, ptr %i.aje, align 8, !tbaa !17
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.aji, i64 %i.ajh
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i692 = icmp eq ptr %i.ajk, null
  br i1 %.not.i.i.i.i692, label %.loopexit.i.i, label %bb.br

bb.br:                                            ; preds = %_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit691
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !245 ; 4 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  %i.ajo = load i64, ptr %i.ajn, align 8, !tbaa !246
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
  br i1 %i.ajx, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit, label %.lr.ph.i.i.i.i693, !llvm.loop !248

.lr.ph.i.i.i.i693:                                ; preds = %bb.br, %bb.bs
  %.020.i.i.i.i = phi ptr [ %i.ajy, %bb.bs ], [ %i.ajl, %bb.br ]
  %i.ajy = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ajy, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i693
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 16
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !246 ; 2 uses
  %i.akb = urem i64 %i.aka, %i.ajg
  %.not19.i.i.i.i = icmp eq i64 %i.akb, %i.ajh
  br i1 %.not19.i.i.i.i, label %bb.bs, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !248

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.bt
  br label %.loopexit.i.i, !llvm.loop !248

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i693, %..loopexit_crit_edge21.i.i.i.i, %_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit691
  %i.akc = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  store ptr null, ptr %i.akc, align 8, !tbaa !245
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  store i32 %.0.copyload.i.i.i.i, ptr %i.akd, align 8, !tbaa !16
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 12
  store i8 0, ptr %i.ake, align 4, !tbaa !249
  %i.akf = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.aje, i64 noundef %i.ajh, i64 noundef %.0.insert.ext.i.i.i.i, ptr noundef nonnull %i.akc, i64 noundef 1)
          to label %.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge: ; preds = %.loopexit.i.i
  %.pre1224 = load i32, ptr %i.a, align 4, !tbaa !138
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
  call void @_ZdlPvm(ptr noundef nonnull %i.akc, i64 noundef 24) #25
  br label %common.resume

_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit: ; preds = %bb.bs, %.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge, %bb.br
  %.pre-phi1230 = phi i8 [ %.pre1229, %.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge ], [ %i.ajc, %bb.br ], [ %i.ajc, %bb.bs ]
  %.sroa.0326.0.copyload = phi i32 [ %.sroa.0326.0.copyload.pre, %.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge ], [ %.0.copyload.i.i.i.i, %bb.br ], [ %.0.copyload.i.i.i.i, %bb.bs ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.akf, %.loopexit.i.i._ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit_crit_edge ], [ %i.ajl, %bb.br ], [ %i.ajy, %bb.bs ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i8 %i.ajc, ptr %.1.i.i, align 1, !tbaa !16
  %i.akh = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168 ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 128 ; 3 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akh, i64 136 ; 4 uses
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !251 ; 5 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akh, i64 144 ; 2 uses
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !252
  %.not.i.i694 = icmp eq ptr %i.akk, %i.akm
  br i1 %.not.i.i694, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0326.0.copyload to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.akk, align 4
  %i.akn = load ptr, ptr %i.akj, align 8, !tbaa !251
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 8 ; 2 uses
  store ptr %i.ako, ptr %i.akj, align 8, !tbaa !251
  %.pre.i695 = load ptr, ptr %i.aki, align 8, !tbaa !253
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj.exit

bb.bv:                                            ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit
  %i.akp = load ptr, ptr %i.aki, align 8, !tbaa !253 ; 7 uses
  %i.akq = ptrtoint ptr %i.akk to i64             ; 2 uses
  %i.akr = ptrtoint ptr %i.akp to i64             ; 3 uses
  %i.aks = sub i64 %i.akq, %i.akr                 ; 4 uses
  %i.akt = icmp eq i64 %i.aks, 9223372036854775800
  br i1 %i.akt, label %bb.bw, label %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.ala = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akz) #24 ; 9 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.aks
  %.sroa.0.0.insert.ext2.i = zext i32 %.sroa.0326.0.copyload to i64
  store i64 %.sroa.0.0.insert.ext2.i, ptr %i.alb, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.akp, %i.akk
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.alc = ptrtoaddr ptr %i.ala to i64
  %11 = sub i64 %i.akq, %i.akr
  %12 = add i64 %11, -8                           ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.alk = getelementptr i8, ptr %next.gep1702, i64 16
  %wide.load1703 = load <2 x i64>, ptr %next.gep1702, align 4, !alias.scope !257, !noalias !254
  %wide.load1704 = load <2 x i64>, ptr %i.alk, align 4, !alias.scope !257, !noalias !254
  %i.all = getelementptr i8, ptr %next.gep1701, i64 16
  store <2 x i64> %wide.load1703, ptr %next.gep1701, align 4, !alias.scope !254, !noalias !257
  store <2 x i64> %wide.load1704, ptr %i.all, align 4, !alias.scope !254, !noalias !257
  %index.next1705 = add nuw i64 %index1700, 4     ; 2 uses
  %i.alm = icmp eq i64 %index.next1705, %n.vec1698
  br i1 %i.alm, label %middle.block1706, label %vector.body1699, !llvm.loop !259

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
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.aln = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !257, !noalias !254
  store i64 %i.aln, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !254, !noalias !257
  %i.alo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.alo, %i.akk
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !260

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block1706, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ala, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.alh, %middle.block1706 ], [ %i.alp, %.lr.ph.i.i.i.i.i.i ]
  %i.alq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.akp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.akp, i64 noundef %i.aks) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.bx, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ala, ptr %i.aki, align 8, !tbaa !253
  store ptr %i.alq, ptr %i.akj, align 8, !tbaa !251
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.ala, i64 %i.aky
  store ptr %i.alr, ptr %i.akl, align 8, !tbaa !252
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj.exit

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj.exit: ; preds = %bb.bu, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.als = phi ptr [ %.pre.i695, %bb.bu ], [ %i.ala, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.alt = phi ptr [ %i.ako, %bb.bu ], [ %i.alq, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.alu = ptrtoint ptr %i.alt to i64
  %i.alv = ptrtoint ptr %i.als to i64
  %i.alw = sub i64 %i.alu, %i.alv
  %i.alx = trunc i64 %i.alw to i32
  %i.aly = shl i32 %i.alx, 1
  %i.alz = and i32 %i.aly, -16
  %i.ama = add i32 %i.alz, -11
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %.pre-phi1230, i32 %i.ama)
  %i.amb = load i32, ptr %i.a, align 4, !tbaa !138
  %i.amc = lshr i32 %i.amb, 8
  %i.amd = trunc i32 %i.amc to i8
  %i.ame = add i8 %i.amd, 1
  %i.amf = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %.sroa.0324.0.copyload = load i32, ptr %5, align 4, !tbaa !16
  %i.amg = call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %i.amf, i32 %.sroa.0324.0.copyload, i32 noundef 1)
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %i.ame, i32 %i.amg)
  br label %.loopexit1058

bb.by:                                            ; preds = %bb.z, %bb.z
  %i.amh = load i32, ptr %i.a, align 4, !tbaa !138 ; 3 uses
  %i.ami = lshr i32 %i.amh, 16
  %i.amj = and i32 %i.ami, 255                    ; 4 uses
  %i.amk = add nsw i32 %i.amj, -1
  %i.aml = lshr i32 %i.amh, 24
  %i.amm = add nsw i32 %i.aml, -1                 ; 3 uses
  %.sroa.2316.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %.pre1218, i32 %.sroa.2316.0.copyload, i32 noundef %i.amk)
  %.sroa.0312.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2313.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0312.0.copyload, i32 %.sroa.2313.0.copyload, i32 noundef %i.amm)
  %i.amn = icmp eq i32 %i.fx, 87
  br i1 %i.amn, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %.sroa.0309.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2310.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.amo = load i32, ptr %i.b, align 4, !tbaa !138
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0309.0.copyload, i32 %.sroa.2310.0.copyload, i32 noundef %i.amo)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sroa.0306.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2307.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.amp = load i32, ptr %i.a, align 4, !tbaa !138
  %i.amq = lshr i32 %i.amp, 8
  %i.amr = trunc i32 %i.amq to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0306.0.copyload, i32 %.sroa.2307.0.copyload, i8 noundef zeroext %i.amr)
  %.not531.not1139 = icmp samesign ugt i32 %i.amj, 1
  br i1 %.not531.not1139, label %.lr.ph1142, label %._crit_edge1143

._crit_edge1143:                                  ; preds = %bb.ca
  %i.ams = icmp eq i32 %i.amj, 0
  br i1 %i.ams, label %bb.cb, label %._crit_edge1143.thread

.lr.ph1142:                                       ; preds = %bb.ca, %.lr.ph1142
  %.05111140 = phi i32 [ %i.amx, %.lr.ph1142 ], [ 1, %bb.ca ] ; 2 uses
  %.sroa.0300.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2301.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.amt = load i32, ptr %i.a, align 4, !tbaa !138
  %i.amu = lshr i32 %i.amt, 8
  %i.amv = add nuw nsw i32 %i.amu, %.05111140
  %i.amw = trunc i32 %i.amv to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0300.0.copyload, i32 %.sroa.2301.0.copyload, i8 noundef zeroext %i.amw)
  %i.amx = add nuw nsw i32 %.05111140, 1          ; 2 uses
  %exitcond1215.not = icmp eq i32 %i.amx, %i.amj
  br i1 %exitcond1215.not, label %._crit_edge1143.thread, label %.lr.ph1142, !llvm.loop !261

bb.cb:                                            ; preds = %._crit_edge1143
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.sroa.0297.0.copyload = load i32, ptr %i.ar, align 8, !tbaa !16
  %i.amy = load i32, ptr %i.a, align 4, !tbaa !138
  %i.amz = lshr i32 %i.amy, 8
  %i.ana = trunc i32 %i.amz to i8
  %i.anb = add i8 %i.ana, 1
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE20findProducersUpToTopENS0_4BcOpEh(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.211") align 8 %8, ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %.sroa.0297.0.copyload, i8 noundef zeroext %i.anb)
  %i.anc = load ptr, ptr %8, align 8, !tbaa !214  ; 3 uses
  %i.and = load ptr, ptr %i.ck, align 8, !tbaa !214 ; 2 uses
  %.not10551144 = icmp eq ptr %i.anc, %i.and
  br i1 %.not10551144, label %._crit_edge1148, label %.lr.ph1147

._crit_edge1148.loopexit:                         ; preds = %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit713
  %.pre1223 = load ptr, ptr %8, align 8, !tbaa !262
  br label %._crit_edge1148

._crit_edge1148:                                  ; preds = %._crit_edge1148.loopexit, %bb.cb
  %i.ane = phi ptr [ %.pre1223, %._crit_edge1148.loopexit ], [ %i.anc, %bb.cb ] ; 3 uses
  %.not.i.i.i697 = icmp eq ptr %i.ane, null
  br i1 %.not.i.i.i697, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge1148
  %i.anf = load ptr, ptr %i.cl, align 8, !tbaa !263
  %i.ang = ptrtoint ptr %i.anf to i64
  %i.anh = ptrtoint ptr %i.ane to i64
  %i.ani = sub i64 %i.ang, %i.anh
  call void @_ZdlPvm(ptr noundef nonnull %i.ane, i64 noundef %i.ani) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %._crit_edge1148, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %._crit_edge1143.thread

.lr.ph1147:                                       ; preds = %bb.cb, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit713
  %.sroa.01015.01145 = phi ptr [ %i.apd, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit713 ], [ %i.anc, %bb.cb ] ; 2 uses
  %i.anj = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %.sroa.0293.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2294.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16 ; 2 uses
  %.sroa.0292.0.copyload = load i32, ptr %.sroa.01015.01145, align 4, !tbaa !16 ; 2 uses
  %i.ank = lshr i32 %.sroa.2294.0.copyload, 4
  %i.anl = zext nneg i32 %i.ank to i64
  %i.anm = load ptr, ptr %.sroa.0293.0.copyload, align 8, !tbaa !194
  %i.ann = getelementptr inbounds nuw [80 x i8], ptr %i.anm, i64 %i.anl ; 4 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 8 ; 3 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ann, i64 16 ; 5 uses
  %i.anq = load i32, ptr %i.anp, align 8, !tbaa !216 ; 6 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ann, i64 20 ; 2 uses
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !217
  %i.ant = icmp eq i32 %i.anq, %i.ans
  br i1 %i.ant, label %bb.cd, label %._crit_edge.i.i698

._crit_edge.i.i698:                               ; preds = %.lr.ph1147
  %.pre.i.i699 = load ptr, ptr %i.ano, align 8, !tbaa !218
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i

bb.cd:                                            ; preds = %.lr.ph1147
  %i.anu = add i32 %i.anq, 1
  %i.anv = lshr i32 %i.anq, 1
  %i.anw = add i32 %i.anv, %i.anq                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueEC2ERKS4_:bb.a
.noexc52:                                         ; preds = %.noexc.i.i51
  unreachable

_ZNSt15__new_allocatorIP10lua_TValueE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #24
          to label %.noexc53 unwind label %bb.av

.noexc53:                                         ; preds = %_ZNSt15__new_allocatorIP10lua_TValueE8allocateEmPKv.exit.i.i.i.i, %bb.e
  %i.am = phi ptr [ null, %bb.e ], [ %i.al, %_ZNSt15__new_allocatorIP10lua_TValueE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !119
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !118
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !120
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !598 ; 3 uses
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !598
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 8
  br i1 %i.av, label %bb.g, label %bb.h, !prof !572

bb.g:                                             ; preds = %.noexc53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr align 8 %i.aq, i64 %i.au, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %.noexc53
  %i.aw = icmp eq i64 %i.au, 8
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !121
  store ptr %i.ax, ptr %i.am, align 8, !tbaa !121
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ay = getelementptr inbounds i8, ptr %i.am, i64 %i.au
  store ptr %i.ay, ptr %i.an, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !641 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !336 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %.not.i.i.i.i54 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i.i.i.i54, label %.noexc57, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp ugt i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %.noexc.i.i55, label %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcImmEE8allocateEmPKv.exit.i.i.i.i, !prof !477

.noexc.i.i55:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc56 unwind label %bb.aw

.noexc56:                                         ; preds = %.noexc.i.i55
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode5BcImmEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #24
          to label %.noexc57 unwind label %bb.aw

.noexc57:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcImmEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bj = phi ptr [ null, %bb.j ], [ %i.bi, %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcImmEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.bj, ptr %i.az, align 8, !tbaa !336
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !641
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !337
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !642 ; 3 uses
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !642
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 4 uses
  %i.bs = icmp sgt i64 %i.br, 8
  br i1 %i.bs, label %bb.l, label %bb.m, !prof !572

bb.l:                                             ; preds = %.noexc57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bj, ptr align 4 %i.bn, i64 %i.br, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc57
  %i.bt = icmp eq i64 %i.br, 8
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = load i64, ptr %i.bn, align 4
  store i64 %i.bu, ptr %i.bj, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 %i.br
  store ptr %i.bv, ptr %i.bk, align 8, !tbaa !641
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !333 ; 2 uses
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !332 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i58 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i.i.i58, label %.noexc62, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = sdiv exact i64 %i.cd, 56
  %i.cf = icmp ugt i64 %i.ce, 164703072086692425
  br i1 %i.cf, label %.noexc.i.i60, label %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcPhiEE8allocateEmPKv.exit.i.i.i.i, !prof !477

.noexc.i.i60:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc61 unwind label %bb.ax

.noexc61:                                         ; preds = %.noexc.i.i60
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode5BcPhiEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.p
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #24
          to label %.noexc62 unwind label %bb.ax

.noexc62:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcPhiEE8allocateEmPKv.exit.i.i.i.i, %bb.o
  %i.ch = phi ptr [ null, %bb.o ], [ %i.cg, %_ZNSt15__new_allocatorIN4Luau8Bytecode5BcPhiEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ch, ptr %i.bw, align 8, !tbaa !332
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !333
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !335
  %i.cl = load ptr, ptr %i.bx, align 8, !tbaa !643
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !643
  %i.cn = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode5BcPhiESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.cl, ptr %i.cm, ptr noundef %i.ch)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %.noexc62
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %i.bw, align 8, !tbaa !332 ; 3 uses
  %.not.i.i.i59 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i59, label %.body63, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !335
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ct) #25
  br label %.body63

bb.s:                                             ; preds = %.noexc62
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !333
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !251 ; 2 uses
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !253 ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  %.not.i.i.i.i65 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i.i.i65, label %.noexc68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = icmp ugt i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %.noexc.i.i66, label %_ZNSt15__new_allocatorIN4Luau8Bytecode6BcProjEE8allocateEmPKv.exit.i.i.i.i, !prof !477

.noexc.i.i66:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc67 unwind label %bb.ay

.noexc67:                                         ; preds = %.noexc.i.i66
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode6BcProjEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.t
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #24
          to label %.noexc68 unwind label %bb.ay

.noexc68:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode6BcProjEE8allocateEmPKv.exit.i.i.i.i, %bb.s
  %i.de = phi ptr [ null, %bb.s ], [ %i.dd, %_ZNSt15__new_allocatorIN4Luau8Bytecode6BcProjEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.de, ptr %i.cu, align 8, !tbaa !253
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !251
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !252
  %i.di = load ptr, ptr %i.cv, align 8, !tbaa !644 ; 5 uses
  %i.dj = load ptr, ptr %i.cw, align 8, !tbaa !644 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.di, %i.dj
  br i1 %.not7.i.i.i.i.i, label %.loopexit131, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc68
  %i.dk = ptrtoaddr ptr %i.di to i64              ; 2 uses
  %i.dl = ptrtoaddr ptr %i.de to i64
  %i.dm = ptrtoaddr ptr %i.dj to i64
  %3 = sub i64 %i.dm, %i.dk
  %4 = add i64 %3, -8                             ; 2 uses
  %i.dn = lshr i64 %4, 3
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.dp = sub i64 %i.dk, %i.dl
  %diff.check = icmp ugt i64 %i.dp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader188, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.do, 4611686018427387900     ; 3 uses
  %i.dq = shl i64 %n.vec, 3                       ; 2 uses
  %i.dr = getelementptr i8, ptr %i.de, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %i.di, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.dt ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.di, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep183, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep183, align 4
  %wide.load184 = load <2 x i64>, ptr %i.du, align 4
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load184, ptr %i.dv, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !645

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %.loopexit131, label %.lr.ph.i.i.i.i.i.preheader188

.lr.ph.i.i.i.i.i.preheader188:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader188, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader188 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader188 ] ; 2 uses
  %i.dx = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.dx, ptr %.09.i.i.i.i.i, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dy, %i.dj
  br i1 %.not.i.i.i.i.i, label %.loopexit131, label %.lr.ph.i.i.i.i.i, !llvm.loop !646

.loopexit131:                                     ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc68
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.de, %.noexc68 ], [ %i.dr, %middle.block ], [ %i.dz, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.df, align 8, !tbaa !251
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !647 ; 2 uses
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !330 ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false)
  %.not.i.i.i.i69 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i.i.i.i69, label %.noexc78, label %bb.u

bb.u:                                             ; preds = %.loopexit131
  %i.ei = sdiv exact i64 %i.eh, 264
  %i.ej = icmp ugt i64 %i.ei, 34937015291116575
  br i1 %i.ej, label %.noexc.i.i76, label %_ZNSt15__new_allocatorIN4Luau15BytecodeBuilder10TableShapeEE8allocateEmPKv.exit.i.i.i.i, !prof !477

.noexc.i.i76:                                     ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc77 unwind label %bb.az

.noexc77:                                         ; preds = %.noexc.i.i76
  unreachable

_ZNSt15__new_allocatorIN4Luau15BytecodeBuilder10TableShapeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.u
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #24
          to label %.noexc78 unwind label %bb.az

.noexc78:                                         ; preds = %_ZNSt15__new_allocatorIN4Luau15BytecodeBuilder10TableShapeEE8allocateEmPKv.exit.i.i.i.i, %.loopexit131
  %i.el = phi ptr [ null, %.loopexit131 ], [ %i.ek, %_ZNSt15__new_allocatorIN4Luau15BytecodeBuilder10TableShapeEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.el, ptr %i.ea, align 8, !tbaa !330
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !647
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eh
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !331
  %i.ep = load ptr, ptr %i.eb, align 8, !tbaa !648 ; 2 uses
  %i.eq = load ptr, ptr %i.ec, align 8, !tbaa !648 ; 2 uses
  %.not7.i.i.i.i.i70 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not7.i.i.i.i.i70, label %.loopexit130, label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %.noexc78, %.lr.ph.i.i.i.i.i71
  %.09.i.i.i.i.i72 = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i71 ], [ %i.el, %.noexc78 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i73 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i71 ], [ %i.ep, %.noexc78 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %.09.i.i.i.i.i72, ptr noundef nonnull align 4 dereferenceable(264) %.sroa.04.08.i.i.i.i.i73, i64 264, i1 false), !tbaa.struct !649
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i73, i64 264 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i72, i64 264 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.er, %i.eq
  br i1 %.not.i.i.i.i.i74, label %.loopexit130, label %.lr.ph.i.i.i.i.i71, !llvm.loop !651

.loopexit130:                                     ; preds = %.lr.ph.i.i.i.i.i71, %.noexc78
  %.0.lcssa.i.i.i.i.i75 = phi ptr [ %i.el, %.noexc78 ], [ %i.es, %.lr.ph.i.i.i.i.i71 ]
  store ptr %.0.lcssa.i.i.i.i.i75, ptr %i.em, align 8, !tbaa !647
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 176
  invoke void @_ZNSt6vectorIN4Luau15BytecodeBuilder10ClassShapeESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %bb.v unwind label %bb.ba

bb.v:                                             ; preds = %.loopexit130
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ex = load i64, ptr %i.ew, align 8
  store i64 %i.ex, ptr %i.ev, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !9
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !318 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.fd, ptr %i.b, align 8, !tbaa !551
  %i.fe = icmp ugt i64 %i.fd, 15
  br i1 %i.fe, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.v
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc79 unwind label %bb.bb  ; 2 uses

.noexc79:                                         ; preds = %.noexc.i
  store ptr %i.ff, ptr %i.ey, align 8, !tbaa !318
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !551
  store i64 %i.fg, ptr %i.fa, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc79, %bb.v
  %i.fh = phi ptr [ %i.ff, %.noexc79 ], [ %i.fa, %bb.v ] ; 2 uses
  switch i64 %i.fd, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.fi = load i8, ptr %i.fb, align 1, !tbaa !16
  store i8 %i.fi, ptr %i.fh, align 1, !tbaa !16
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr align 1 %i.fb, i64 %i.fd, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i
  %i.fj = load i64, ptr %i.b, align 8, !tbaa !551 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !13
  %i.fl = load ptr, ptr %i.ey, align 8, !tbaa !318
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  store i8 0, ptr %i.fm, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !652 ; 2 uses
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !321 ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i8 0, i64 24, i1 false)
  %.not.i.i.i.i80 = icmp eq ptr %i.fq, %i.fr
  br i1 %.not.i.i.i.i80, label %.noexc83, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fv = icmp ugt i64 %i.fu, 9223372036854775804
  br i1 %i.fv, label %.noexc.i.i81, label %_ZNSt15__new_allocatorI16LuauBytecodeTypeE8allocateEmPKv.exit.i.i.i.i, !prof !477

.noexc.i.i81:                                     ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc82 unwind label %bb.bc

.noexc82:                                         ; preds = %.noexc.i.i81
  unreachable

_ZNSt15__new_allocatorI16LuauBytecodeTypeE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.z
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #24
          to label %.noexc83 unwind label %bb.bc

.noexc83:                                         ; preds = %_ZNSt15__new_allocatorI16LuauBytecodeTypeE8allocateEmPKv.exit.i.i.i.i, %bb.y
  %i.fx = phi ptr [ null, %bb.y ], [ %i.fw, %_ZNSt15__new_allocatorI16LuauBytecodeTypeE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.fx, ptr %i.fn, align 8, !tbaa !321
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !652
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fu
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !322
  %i.gb = load ptr, ptr %i.fo, align 8, !tbaa !536 ; 3 uses
  %i.gc = load ptr, ptr %i.fp, align 8, !tbaa !536
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.gb to i64
end_hunk_1
begin_hunk_2_@_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EEC2ERKS3_:bb.a
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load10, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !680

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
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !681

_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.k) #23
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.j, ptr %0, align 8, !tbaa !184
  store i32 %i.g, ptr %i.b, align 4, !tbaa !679
  %.pre = load i32, ptr %i.d, align 8, !tbaa !176
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i, %bb.a
  %i.ae = phi ptr [ %i.j, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.af = phi i32 [ %.pre, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !184   ; 5 uses
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
  br i1 %i.av, label %middle.block25, label %vector.body18, !llvm.loop !682

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
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !683

_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block25
  %.pre6 = load i32, ptr %i.d, align 8, !tbaa !176
  br label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit
  %i.az = phi i32 [ %.pre6, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit ], [ 0, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit ]
  store i32 %i.az, ptr %i.a, align 8, !tbaa !176
  ret void

bb.d:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i = load i32, ptr %i.a, align 8, !tbaa !176
  %.not1.i.i = icmp eq i32 %.promoted.i.i, 0
  br i1 %.not1.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  store i32 0, ptr %i.a, align 8, !tbaa !176
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.d
  %i.bb = load ptr, ptr %0, align 8, !tbaa !184   ; 2 uses
  %.not.i = icmp eq ptr %i.bb, %i.c
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.bb) #23
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EED2Ev.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EED2Ev.exit: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE5clearEv.exit.i, %bb.e
  resume { ptr, i32 } %i.ba
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #13

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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !459  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !262  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.noexc6.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.l = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.l, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !477

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i.i unwind label %.loopexit.split-lp

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24
          to label %.noexc6.i.i unwind label %.loopexit11

.noexc6.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc
  %i.n = phi ptr [ null, %.noexc ], [ %i.m, %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 8 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !262
  %i.o = getelementptr inbounds nuw i8, ptr %.022, i64 48 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !459
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %.022, i64 56
  store ptr %i.p, ptr %i.q, align 8, !tbaa !263
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !214  ; 5 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !214  ; 3 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc6.i.i
  %i.t = ptrtoaddr ptr %i.r to i64                ; 2 uses
  %i.u = ptrtoaddr ptr %i.n to i64
  %i.v = ptrtoaddr ptr %i.s to i64
  %3 = sub i64 %i.v, %i.t
  %4 = add i64 %3, -4                             ; 2 uses
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
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !684

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
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !685

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
  %.promoted.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !216
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  store i32 0, ptr %i.aj, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.c
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.022, i64 24
  %.not.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ak) #23
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc6.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc6.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !459
  %i.am = getelementptr inbounds nuw i8, ptr %.022, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.022, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.ao, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !686

bb.e:                                             ; preds = %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i ]
  %i.ar = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4Luau8Bytecode6BcInstEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.022)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #26
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
  tail call void @__clang_call_terminate(ptr %i.av) #28
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 4, ptr %i.b, align 4, !tbaa !217
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !218
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !216  ; 4 uses
  %i.f = icmp ugt i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 5
  %i.h = add i32 %i.e, 4
  %.09.i.i = select i1 %i.g, i32 6, i32 %i.h      ; 2 uses
  %i.i = zext i32 %.09.i.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27
          to label %.noexc unwind label %bb.d     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !218    ; 7 uses
  %i.m = load i32, ptr %i.a, align 8, !tbaa !216  ; 2 uses
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
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !687

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
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !688

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.l) #23
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.k, ptr %0, align 8, !tbaa !218
  store i32 %.09.i.i, ptr %i.b, align 4, !tbaa !217
  %.pre = load i32, ptr %i.d, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, %bb.a
  %i.af = phi ptr [ %i.k, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.ag = phi i32 [ %.pre, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !218   ; 5 uses
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
  br i1 %i.aw, label %middle.block25, label %vector.body18, !llvm.loop !689

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
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !690

_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block25
  %.pre6 = load i32, ptr %i.d, align 8, !tbaa !216
  br label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit
  %i.ba = phi i32 [ %.pre6, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit ], [ 0, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit ]
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !216
  ret void

bb.d:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i = load i32, ptr %i.a, align 8, !tbaa !216
  %.not1.i.i = icmp eq i32 %.promoted.i.i, 0
  br i1 %.not1.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  store i32 0, ptr %i.a, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.d
  %i.bc = load ptr, ptr %0, align 8, !tbaa !218   ; 2 uses
  %.not.i = icmp eq ptr %i.bc, %i.c
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.bc) #23
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !459  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !262  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.noexc4.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !477

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i.i unwind label %.loopexit.split-lp

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24
          to label %.noexc4.i.i unwind label %.loopexit11

.noexc4.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc
  %i.k = phi ptr [ null, %.noexc ], [ %i.j, %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 8 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !262
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 40 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !459
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %.019, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !263
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !214  ; 5 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !214  ; 3 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc4.i.i
  %i.q = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.r = ptrtoaddr ptr %i.k to i64
  %i.s = ptrtoaddr ptr %i.p to i64
  %3 = sub i64 %i.s, %i.q
  %4 = add i64 %3, -4                             ; 2 uses
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
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !691

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
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !692

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
  %.promoted.i.i.i.i = load i32, ptr %i.ag, align 8, !tbaa !216
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  store i32 0, ptr %i.ag, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.c
  %i.ah = load ptr, ptr %.019, align 8, !tbaa !218 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %.not.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ah) #23
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc4.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.k, %.noexc4.i.i ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !459
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !693

bb.e:                                             ; preds = %.lr.ph
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.e ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i ]
  %i.am = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.an = tail call ptr @__cxa_begin_catch(ptr %i.am) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4Luau8Bytecode5BcPhiEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #26
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
  tail call void @__clang_call_terminate(ptr %i.aq) #28
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau15BytecodeBuilder10ClassShapeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !694
  store i32 %i.a, ptr %0, align 8, !tbaa !694
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !491  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !325  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775804
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !477

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !325
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !491
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !327
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !213  ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !213
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 4
  br i1 %i.u, label %bb.d, label %bb.e, !prof !572

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.t, 4
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.p, align 4, !tbaa !138
  store i32 %i.w, ptr %i.l, align 4, !tbaa !138
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.x, ptr %i.m, align 8, !tbaa !491
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !491 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !325 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i5 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i5, label %.noexc8, label %bb.g
end_hunk_2
begin_hunk_3_@_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh:bb.a
  tail call void @_ZdlPv(ptr noundef %i.aa) #23
  %.pre2.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i: ; preds = %bb.e, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i
  %.pre2.i.i = phi i32 [ %i.ab, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i ], [ %.pre2.pre.i.i, %bb.e ]
  store ptr %i.z, ptr %i.m, align 8, !tbaa !218
  store i32 %.09.i.i.i, ptr %i.p, align 4, !tbaa !217
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit: ; preds = %._crit_edge.i.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i
  %i.av = phi i32 [ %i.o, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i ]
  %i.aw = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.z, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i ]
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  store i32 %i.h, ptr %i.ay, align 4, !tbaa !16
  %i.az = load i32, ptr %i.n, align 8, !tbaa !216
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.n, align 8, !tbaa !216
  tail call void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.e, i32 %i.h, i32 %2)
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.bb = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.bc = lshr i32 %2, 4
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = load ptr, ptr %1, align 8, !tbaa !194
  %i.bf = getelementptr inbounds nuw [80 x i8], ptr %i.be, i64 %i.bd ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !216 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 20 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !217
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.g, label %._crit_edge.i.i12

._crit_edge.i.i12:                                ; preds = %bb.f
  %.pre.i.i13 = load ptr, ptr %i.bg, align 8, !tbaa !218
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit26

bb.g:                                             ; preds = %bb.f
  %i.bm = add i32 %i.bi, 1
  %i.bn = lshr i32 %i.bi, 1
  %i.bo = add i32 %i.bn, %i.bi                    ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, %i.bm
  %i.bq = add i32 %i.bi, 5
  %.09.i.i.i14 = select i1 %i.bp, i32 %i.bo, i32 %i.bq ; 2 uses
  %i.br = zext i32 %.09.i.i.i14 to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #27 ; 6 uses
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !218 ; 7 uses
  %i.bv = load i32, ptr %i.bh, align 8, !tbaa !216 ; 3 uses
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
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !747

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
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i17, !llvm.loop !748

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i.i.i17, %middle.block, %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.not.i.i.i22 = icmp eq ptr %i.bu, %i.co
  br i1 %.not.i.i.i22, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24, label %bb.h

bb.h:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21
  tail call void @_ZdlPv(ptr noundef %i.bu) #23
  %.pre2.pre.i.i23 = load i32, ptr %i.bh, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24: ; preds = %bb.h, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21
  %.pre2.i.i25 = phi i32 [ %i.bv, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i21 ], [ %.pre2.pre.i.i23, %bb.h ]
  store ptr %i.bt, ptr %i.bg, align 8, !tbaa !218
  store i32 %.09.i.i.i14, ptr %i.bj, align 4, !tbaa !217
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit26

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit26: ; preds = %._crit_edge.i.i12, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24
  %i.cp = phi i32 [ %i.bi, %._crit_edge.i.i12 ], [ %.pre2.i.i25, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24 ]
  %i.cq = phi ptr [ %.pre.i.i13, %._crit_edge.i.i12 ], [ %i.bt, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i24 ]
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  store i32 %.sroa.027.0.extract.trunc, ptr %i.cs, align 4, !tbaa !16
  %i.ct = load i32, ptr %i.bh, align 8, !tbaa !216
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.bh, align 8, !tbaa !216
  tail call void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.bb, i32 %.sroa.027.0.extract.trunc, i32 %2)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit26, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !252
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.insert.ext = zext i32 %2 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !251
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !251
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !253
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !253  ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #24 ; 9 uses
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
  %3 = sub i64 %i.i, %i.j
  %4 = add i64 %3, -8                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.ac = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 4, !alias.scope !752, !noalias !749
  %wide.load14 = load <2 x i64>, ptr %i.ac, align 4, !alias.scope !752, !noalias !749
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !749, !noalias !752
  store <2 x i64> %wide.load14, ptr %i.ad, align 4, !alias.scope !749, !noalias !752
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !754

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.af = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !752, !noalias !749
  store i64 %i.af, ptr %.012.i.i.i.i.i, align 4, !alias.scope !749, !noalias !752
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !755

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !253
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !251
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !252
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
define linkonce_odr dso_local void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE20findProducersUpToTopENS0_4BcOpEh(ptr dead_on_unwind noalias writable sret(%"class.std::vector.211") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i32 %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = lshr i32 %2, 4
  %i.c = zext nneg i32 %i.b to i64                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !171
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 192                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE14BlockProducersESaIS6_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, i64 noundef %i.c, i64 noundef %i.j) #26
  unreachable

_ZNSt6vectorIN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE14BlockProducersESaIS6_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [192 x i8], ptr %i.f, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 116 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !285   ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = zext i8 %3 to i64
  %i.p = sub nsw i64 %i.n, %i.o
  %i.q = add nsw i64 %i.p, 1                      ; 4 uses
  %i.r = icmp ugt i64 %i.q, 2305843009213693951
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE14BlockProducersESaIS6_EE2atEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #26
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE14BlockProducersESaIS6_EE2atEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.t = shl nuw nsw i64 %i.q, 2
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24
          to label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.k ; 4 uses

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %0, align 8, !tbaa !262
  store ptr %i.u, ptr %i.v, align 8, !tbaa !459
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.q ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !263
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
  %i.ac = invoke i64 @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12readVariableENS0_4BcOpEh(ptr noundef nonnull align 8 dereferenceable(152) %1, i32 %2, i8 noundef zeroext %.047)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.sroa.037.0.extract.trunc = trunc i64 %i.ac to i32 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.sroa.037.0.extract.trunc, ptr %i.z, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !459
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #24
          to label %.noexc19 unwind label %.loopexit ; 8 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store i32 %.sroa.037.0.extract.trunc, ptr %i.ap, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc19
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %4 = sub i64 %i.ae, %i.af
  %5 = add i64 %4, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.ay = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep102, align 4, !tbaa !16, !alias.scope !759, !noalias !756
  %wide.load103 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !16, !alias.scope !759, !noalias !756
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !756, !noalias !759
  store <4 x i32> %wide.load103, ptr %i.az, align 4, !tbaa !16, !alias.scope !756, !noalias !759
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !761

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.bb = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !759, !noalias !756
  store i32 %i.bb, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !756, !noalias !759
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !762

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %.noexc19 ], [ %i.av, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.be, ptr %i.y, align 8, !tbaa !459
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g
  %i.bg = phi ptr [ %i.be, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.bh = phi ptr [ %i.ao, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.bi = phi ptr [ %i.bf, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.aa, %bb.g ] ; 2 uses
  %i.bj = add nuw i8 %.047, 1                     ; 2 uses
  %i.bk = load i8, ptr %i.l, align 4, !tbaa !285
  %i.bl = icmp ult i8 %i.bj, %i.bk
  br i1 %i.bl, label %bb.e, label %._crit_edge, !llvm.loop !763

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
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit35

bb.m:                                             ; preds = %._crit_edge
  %i.bv = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 4 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775804
  br i1 %i.by, label %bb.n, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #24
          to label %.noexc34 unwind label %bb.k   ; 8 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  %i.ch = load i32, ptr %i.br, align 4, !tbaa !16
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !16
  %.not10.i.i.i.i.i24 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not10.i.i.i.i.i24, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29, label %.lr.ph.i.i.i.i.i25.preheader

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %.noexc34
  %i.ci = ptrtoaddr ptr %i.cf to i64
  %6 = sub i64 %i.bv, %i.bw
  %7 = add i64 %6, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.cq = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load115 = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !16, !alias.scope !767, !noalias !764
  %wide.load116 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !16, !alias.scope !767, !noalias !764
  %i.cr = getelementptr i8, ptr %next.gep113, i64 16
  store <4 x i32> %wide.load115, ptr %next.gep113, align 4, !tbaa !16, !alias.scope !764, !noalias !767
  store <4 x i32> %wide.load116, ptr %i.cr, align 4, !tbaa !16, !alias.scope !764, !noalias !767
  %index.next117 = add nuw i64 %index112, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.cs, label %middle.block118, label %vector.body111, !llvm.loop !769

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.ct = load i32, ptr %.0911.i.i.i.i.i27, align 4, !tbaa !16, !alias.scope !767, !noalias !764
  store i32 %i.ct, ptr %.012.i.i.i.i.i26, align 4, !tbaa !16, !alias.scope !764, !noalias !767
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i27, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i26, i64 4 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.cu, %i.bp
  br i1 %.not.i.i.i.i.i28, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29, label %.lr.ph.i.i.i.i.i25, !llvm.loop !770

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29: ; preds = %.lr.ph.i.i.i.i.i25, %middle.block118, %.noexc34
  %.0.lcssa.i.i.i.i.i30 = phi ptr [ %i.cf, %.noexc34 ], [ %i.cn, %middle.block118 ], [ %i.cv, %.lr.ph.i.i.i.i.i25 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i30, i64 4
  %.not.i23.i.i31 = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i31, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bx) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32: ; preds = %bb.o, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29
  store ptr %i.cf, ptr %0, align 8, !tbaa !262
  store ptr %i.cw, ptr %i.bs, align 8, !tbaa !459
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.cx, ptr %i.s, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit35

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit35: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32, %bb.l
  store i32 0, ptr %i.br, align 8, !tbaa !16
  store i8 -1, ptr %i.l, align 4, !tbaa !285
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dc) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %bb.p, %bb.q
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE9applyCallERNS4_14BlockProducersENS0_4BcOpEhi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 2 uses
  %.not3537 = icmp eq ptr %i.b, null
  br i1 %.not3537, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.n, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !698  ; 2 uses
  %.not3639 = icmp eq ptr %i.g, null
  br i1 %.not3639, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br label %bb.o

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.032.038 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.032.1, %bb.n ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.038, i64 8
  %i.k = load i8, ptr %i.j, align 4, !tbaa !719   ; 2 uses
  %.not19 = icmp ult i8 %i.k, %3
  br i1 %.not19, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.c, align 8, !tbaa !701  ; 3 uses
  %i.m = zext i8 %i.k to i64
  %i.n = urem i64 %i.m, %i.l                      ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !700    ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !244  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.r, %bb.d ] ; 4 uses
  %i.r = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %.sroa.032.038
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i, label %bb.d, !llvm.loop !771

_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i: ; preds = %bb.d
  %i.s = icmp eq ptr %.0.i.i.i.i, %i.q
  %i.t = load ptr, ptr %.sroa.032.038, align 8, !tbaa !245 ; 4 uses
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
  store ptr %i.q, ptr %i.y, align 8, !tbaa !244
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g, %bb.e
  %i.z = icmp eq ptr %i.a, %i.q
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !698
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.p, align 8, !tbaa !244
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
  store ptr %.0.i.i.i.i, ptr %i.ae, align 8, !tbaa !244
  br label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit

_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit: ; preds = %bb.f, %bb.i, %bb.j, %bb.k, %bb.l
  %i.af = load ptr, ptr %.sroa.032.038, align 8, !tbaa !245 ; 2 uses
  store ptr %i.af, ptr %.0.i.i.i.i, align 8, !tbaa !245
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.038, i64 noundef 16) #25
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !725
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !725
  br label %bb.n

bb.m:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@_ZZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12rebuildGraphEPKjjRSt6vectorIjSaIjEESA_ENKUl10LuauOpcodeiE_clESB_i:bb.a

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block121, %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.bz
  br i1 %.not.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.bf) #23
  %.pre2.pre.i.i.i = load i32, ptr %i.as, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i: ; preds = %bb.f, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  %.pre2.i.i.i = phi i32 [ %i.bg, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i ], [ %.pre2.pre.i.i.i, %bb.f ]
  store ptr %i.be, ptr %i.ar, align 8, !tbaa !218
  store i32 %.09.i.i.i.i, ptr %i.au, align 4, !tbaa !217
  br label %_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit

_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit: ; preds = %._crit_edge.i.i.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i
  %i.ca = phi i32 [ %i.at, %._crit_edge.i.i.i ], [ %.pre2.i.i.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i ]
  %i.cb = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.be, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i ]
  %i.cc = shl i32 %i.al, 4
  %i.cd = and i32 %i.cc, 268435440
  %i.ce = or disjoint i32 %i.cd, 7                ; 2 uses
  %i.cf = zext i32 %i.ca to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cf
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !16
  %i.ch = load i32, ptr %i.as, align 8, !tbaa !216
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.as, align 8, !tbaa !216
  tail call void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.am, i32 %i.ce, i32 %.sroa.244.0.copyload)
  br label %bb.s

bb.g:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addJumpInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.070.0.copyload, i32 %.sroa.271.0.copyload, i32 noundef %2)
  br label %bb.s

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !777, !nonnull !167, !align !776
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !138
  %i.cm = trunc i32 %i.cl to i8
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.070.0.copyload, i32 %.sroa.271.0.copyload, i8 noundef zeroext %i.cm)
  %i.cn = load ptr, ptr %0, align 8, !tbaa !774, !nonnull !167, !align !168 ; 2 uses
  %.sroa.028.0.copyload = load ptr, ptr %i.cn, align 8, !tbaa !215
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.229.0.copyload = load i32, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !16
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addJumpInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.028.0.copyload, i32 %.sroa.229.0.copyload, i32 noundef %2)
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.co = load ptr, ptr %i.k, align 8, !tbaa !775, !nonnull !167, !align !776
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !138
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = add i8 %i.cr, 1
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.070.0.copyload, i32 %.sroa.271.0.copyload, i8 noundef zeroext %i.cs)
  %i.ct = load ptr, ptr %0, align 8, !tbaa !774, !nonnull !167, !align !168 ; 2 uses
  %.sroa.019.0.copyload = load ptr, ptr %i.ct, align 8, !tbaa !215
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.220.0.copyload = load i32, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !16
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !775, !nonnull !167, !align !776
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !138
  %i.cw = lshr i32 %i.cv, 8
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = add i8 %i.cx, 2
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.019.0.copyload, i32 %.sroa.220.0.copyload, i8 noundef zeroext %i.cy)
  %i.cz = load ptr, ptr %0, align 8, !tbaa !774, !nonnull !167, !align !168 ; 2 uses
  %.sroa.016.0.copyload = load ptr, ptr %i.cz, align 8, !tbaa !215
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.217.0.copyload = load i32, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !16
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addJumpInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.016.0.copyload, i32 %.sroa.217.0.copyload, i32 noundef %2)
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !775, !nonnull !167, !align !776
  %i.db = load i32, ptr %i.da, align 4, !tbaa !138
  %i.dc = lshr i32 %i.db, 8
  %i.dd = trunc i32 %i.dc to i8
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !158, !nonnull !167, !align !168 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 400 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !780, !nonnull !167, !align !776
  %.0.copyload.i.i.i.i = load i32, ptr %i.dh, align 4 ; 4 uses
  %.0.insert.ext.i.i.i.i = zext i32 %.0.copyload.i.i.i.i to i64 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 408
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !25 ; 2 uses
  %i.dk = urem i64 %.0.insert.ext.i.i.i.i, %i.dj  ; 3 uses
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !17
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i84, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !245 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !246
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
  br i1 %i.ea, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !248

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.020.i.i.i.i = phi ptr [ %i.eb, %bb.k ], [ %i.do, %bb.j ]
  %i.eb = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !246 ; 2 uses
  %i.ee = urem i64 %i.ed, %i.dj
  %.not19.i.i.i.i = icmp eq i64 %i.ee, %i.dk
  br i1 %.not19.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !248

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.l
  br label %.loopexit.i.i, !llvm.loop !248

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.i
  %i.ef = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  store ptr null, ptr %i.ef, align 8, !tbaa !245
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %.0.copyload.i.i.i.i, ptr %i.eg, align 8, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i8 0, ptr %i.eh, align 4, !tbaa !249
  %i.ei = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.df, i64 noundef %i.dk, i64 noundef %.0.insert.ext.i.i.i.i, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 24) #25
  resume { ptr, i32 } %i.ej

_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit: ; preds = %bb.k, %bb.j, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ei, %.loopexit.i.i ], [ %i.do, %bb.j ], [ %i.eb, %bb.k ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i8 %i.dd, ptr %.1.i.i, align 1, !tbaa !16
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !775, !nonnull !167, !align !776
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !138
  %i.em = lshr i32 %i.el, 8
  %i.en = trunc i32 %i.em to i8
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !158, !nonnull !167, !align !168 ; 3 uses
  %i.ep = load ptr, ptr %i.dg, align 8, !tbaa !780, !nonnull !167, !align !776
  %.sroa.014.0.copyload = load i32, ptr %i.ep, align 4, !tbaa !16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 128 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 136 ; 4 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !251 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 144 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !252
  %.not.i.i = icmp eq ptr %i.es, %i.eu
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.014.0.copyload to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.es, align 4
  %i.ev = load ptr, ptr %i.er, align 8, !tbaa !251
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.er, align 8, !tbaa !251
  %.pre.i = load ptr, ptr %i.eq, align 8, !tbaa !253
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj.exit

bb.n:                                             ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit
  %i.ex = load ptr, ptr %i.eq, align 8, !tbaa !253 ; 7 uses
  %i.ey = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64               ; 3 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.o, label %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.fi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #24 ; 9 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  %.sroa.0.0.insert.ext2.i = zext i32 %.sroa.014.0.copyload to i64
  store i64 %.sroa.0.0.insert.ext2.i, ptr %i.fj, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ex, %i.es
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fk = ptrtoaddr ptr %i.fi to i64
  %3 = sub i64 %i.ey, %i.ez
  %4 = add i64 %3, -8                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.fs = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep105, align 4, !alias.scope !784, !noalias !781
  %wide.load106 = load <2 x i64>, ptr %i.fs, align 4, !alias.scope !784, !noalias !781
  %i.ft = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !781, !noalias !784
  store <2 x i64> %wide.load106, ptr %i.ft, align 4, !alias.scope !781, !noalias !784
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !786

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.fv = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !784, !noalias !781
  store i64 %i.fv, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !781, !noalias !784
  %i.fw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fw, %i.es
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !787

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fi, %_ZNKSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.fp, %middle.block ], [ %i.fx, %.lr.ph.i.i.i.i.i.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.fi, ptr %i.eq, align 8, !tbaa !253
  store ptr %i.fy, ptr %i.er, align 8, !tbaa !251
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fz, ptr %i.et, align 8, !tbaa !252
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj.exit

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj.exit: ; preds = %bb.m, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ga = phi ptr [ %.pre.i, %bb.m ], [ %i.fi, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.gb = phi ptr [ %i.ew, %bb.m ], [ %i.fy, %_ZNSt6vectorIN4Luau8Bytecode6BcProjESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = shl i32 %i.gf, 1
  %i.gh = and i32 %i.gg, -16
  %i.gi = add i32 %i.gh, -11
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %i.b, i8 noundef zeroext %i.en, i32 %i.gi)
  %i.gj = load ptr, ptr %i.k, align 8, !tbaa !775, !nonnull !167, !align !776
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !138
  %i.gl = lshr i32 %i.gk, 8
  %i.gm = trunc i32 %i.gl to i8
  %i.gn = add i8 %i.gm, 1
  %i.go = load ptr, ptr %i.b, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.gp = load ptr, ptr %i.dg, align 8, !tbaa !780, !nonnull !167, !align !776
  %.sroa.012.0.copyload = load i32, ptr %i.gp, align 4, !tbaa !16
  %i.gq = tail call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %i.go, i32 %.sroa.012.0.copyload, i32 noundef 1)
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %i.b, i8 noundef zeroext %i.gn, i32 %i.gq)
  %i.gr = load ptr, ptr %i.k, align 8, !tbaa !775, !nonnull !167, !align !776
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !138
  %i.gt = lshr i32 %i.gs, 8
  %i.gu = trunc i32 %i.gt to i8
  %i.gv = add i8 %i.gu, 2
  %i.gw = load ptr, ptr %i.b, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.gx = load ptr, ptr %i.dg, align 8, !tbaa !780, !nonnull !167, !align !776
  %.sroa.010.0.copyload = load i32, ptr %i.gx, align 4, !tbaa !16
  %i.gy = tail call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %i.gw, i32 %.sroa.010.0.copyload, i32 noundef 2)
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %i.b, i8 noundef zeroext %i.gv, i32 %i.gy)
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  %i.gz = load ptr, ptr %i.k, align 8, !tbaa !775, !nonnull !167, !align !776
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !138
  %i.hb = lshr i32 %i.ha, 8
  %i.hc = trunc i32 %i.hb to i8
  %i.hd = add i8 %i.hc, 1
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.070.0.copyload, i32 %.sroa.271.0.copyload, i8 noundef zeroext %i.hd)
  %i.he = load ptr, ptr %0, align 8, !tbaa !774, !nonnull !167, !align !168 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.he, align 8, !tbaa !215
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !16
  %i.hf = load ptr, ptr %i.k, align 8, !tbaa !775, !nonnull !167, !align !776
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !138
  %i.hh = lshr i32 %i.hg, 8
  %i.hi = trunc i32 %i.hh to i8
  %i.hj = add i8 %i.hi, 2
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload, i8 noundef zeroext %i.hj)
  %i.hk = load ptr, ptr %0, align 8, !tbaa !774, !nonnull !167, !align !168 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.hk, align 8, !tbaa !215
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16
  tail call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addJumpInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, i32 noundef %2)
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  unreachable

bb.s:                                             ; preds = %bb.q, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj.exit, %bb.h, %bb.g, %_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE9makeBlockEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.b = tail call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE8addBlockEv(ptr noundef nonnull align 8 dereferenceable(456) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !150  ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 3 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !148
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !245  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !138
  %i.n = icmp eq i32 %1, %i.m
  br i1 %i.n, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.o = icmp eq i32 %1, %i.r
  br i1 %i.o, label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !303

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.020.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ]
  %i.p = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !245 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !138  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = urem i64 %i.s, %i.f
  %.not19.i.i.i.i = icmp eq i64 %i.t, %i.g
  br i1 %.not19.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !303

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.d
  br label %.loopexit.i.i, !llvm.loop !303

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.a
  %i.u = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 5 uses
  store ptr null, ptr %i.u, align 8, !tbaa !245
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !304
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.w, align 4
  %i.x = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.g, i64 noundef %i.d, ptr noundef nonnull %i.u, i64 noundef 1)
          to label %_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIjSt4pairIKjN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 16) #25
  resume { ptr, i32 } %i.y

_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit: ; preds = %bb.c, %bb.b, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.x, %.loopexit.i.i ], [ %i.k, %bb.b ], [ %i.p, %bb.c ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i32 %i.b, ptr %.1.i.i, align 4, !tbaa !16
  %i.z = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = lshr i32 %i.b, 4
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.ae = getelementptr inbounds nuw [136 x i8], ptr %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store i32 %1, ptr %i.af, align 8, !tbaa !788
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !176  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !176  ; 4 uses
  %.not = icmp ugt i32 %i.c, %i.e
  %i.f = load ptr, ptr %1, align 8, !tbaa !184    ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !184    ; 4 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.c, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !572

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
  %i.l = load i32, ptr %i.d, align 8, !tbaa !176  ; 2 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !176
  %i.n = icmp ugt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, %.lr.ph
  %i.o = phi i32 [ %i.p, %.lr.ph ], [ %i.l, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit ]
  %i.p = add i32 %i.o, -1                         ; 3 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !176
  %i.q = load i32, ptr %i.b, align 8, !tbaa !176
  %i.r = icmp ugt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !789

bb.g:                                             ; preds = %bb.b
  %i.s = icmp ugt i32 %i.e, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !572

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
  %i.w = load i32, ptr %i.b, align 8, !tbaa !176  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !679  ; 3 uses
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.k, label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge

_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge: ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !184
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit

bb.k:                                             ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15
  %i.aa = lshr i32 %i.y, 1
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, %i.w
  %i.ad = add i32 %i.w, 4
  %.09.i.i = select i1 %i.ac, i32 %i.ab, i32 %i.ad ; 2 uses
  %i.ae = zext i32 %.09.i.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27 ; 6 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !184   ; 7 uses
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !176 ; 2 uses
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
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !790

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
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !791

_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.ah, %i.bb
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ah) #23
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i: ; preds = %bb.l, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !184
  store i32 %.09.i.i, ptr %i.x, align 4, !tbaa !679
  %.pre = load i32, ptr %i.b, align 8, !tbaa !176
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit: ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i
  %i.bc = phi ptr [ %.pre17, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge ], [ %i.ag, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ] ; 2 uses
  %i.bd = phi i32 [ %i.w, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge ], [ %.pre, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ] ; 3 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !184   ; 3 uses
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !176 ; 2 uses
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
  %2 = sub nsw i64 %i.bg, %i.bk
  %i.bn = add nsw i64 %2, 2305843009213693951
  %3 = and i64 %i.bn, 2305843009213693951         ; 2 uses
  %i.bo = add nuw nsw i64 %3, 1                   ; 2 uses
  %min.iters.check33 = icmp samesign ult i64 %3, 9
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
  br i1 %i.bw, label %middle.block43, label %vector.body36, !llvm.loop !792

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
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !793

_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block43
  %.pre18 = load i32, ptr %i.b, align 8, !tbaa !176
  br label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit
  %i.ca = phi i32 [ %.pre18, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit ], [ %i.bd, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit ]
  store i32 %i.ca, ptr %i.d, align 8, !tbaa !176
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addSuccessorENS0_4BcOpES5_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %1, i32 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = lshr i32 %1, 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !170  ; 2 uses
  %i.f = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %i.d ; 4 uses
  %i.g = lshr i32 %2, 4
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !176  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 68 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !679
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !184
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
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27 ; 6 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !184  ; 7 uses
  %i.y = load i32, ptr %i.k, align 8, !tbaa !176  ; 3 uses
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
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !794

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
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !795

_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.not.i.i = icmp eq ptr %i.x, %i.ar
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.x) #23
  %.pre2.pre.i = load i32, ptr %i.k, align 8, !tbaa !176
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  %.pre2.i = phi i32 [ %i.y, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i ], [ %.pre2.pre.i, %bb.c ]
  store ptr %i.w, ptr %i.j, align 8, !tbaa !184
  store i32 %.09.i.i, ptr %i.m, align 4, !tbaa !679
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
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !176
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.k, align 8, !tbaa !176
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 5 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !176 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 100 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !679
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.d, label %._crit_edge.i7

._crit_edge.i7:                                   ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit
  %.pre.i8 = load ptr, ptr %i.ay, align 8, !tbaa !184
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit21

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit
  %i.be = add i32 %i.ba, 1
  %i.bf = lshr i32 %i.ba, 1
  %i.bg = add i32 %i.bf, %i.ba                    ; 2 uses
  %i.bh = icmp ugt i32 %i.bg, %i.be
end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm:bb.a
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !245
  store ptr %i.x, ptr %3, align 8, !tbaa !245
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !244
  store ptr %3, ptr %i.y, align 8, !tbaa !245
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !307
  store ptr %i.aa, ptr %3, align 8, !tbaa !245
  store ptr %3, ptr %i.z, align 8, !tbaa !307
  %i.ab = load ptr, ptr %3, align 8, !tbaa !245   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !246
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !244
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !244
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !821
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !821
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !477

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !845
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpES5_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !477

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpES5_ELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpES5_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpES5_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !307  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !307
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !245 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !246
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !244  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !307
  store ptr %i.o, ptr %.031, align 8, !tbaa !245
  store ptr %.031, ptr %i.g, align 8, !tbaa !307
  store ptr %i.g, ptr %i.m, align 8, !tbaa !244
  %i.p = load ptr, ptr %.031, align 8, !tbaa !245
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !244
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !245
  store ptr %i.r, ptr %.031, align 8, !tbaa !245
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !244
  store ptr %.031, ptr %i.s, align 8, !tbaa !245
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !846

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !153
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #25
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !153
  store ptr %.0.i, ptr %0, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
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
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !459  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %2, ptr %i.i, align 4, !tbaa !16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !459
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store ptr %i.m, ptr %i.h, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !262  ; 7 uses
  %i.o = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775804
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #24 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store i32 %2, ptr %i.z, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = ptrtoaddr ptr %i.y to i64
  %3 = sub i64 %i.o, %i.p
  %4 = add i64 %3, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.ai = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <4 x i32>, ptr %next.gep46, align 4, !tbaa !16, !alias.scope !850, !noalias !847
  %wide.load48 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !16, !alias.scope !850, !noalias !847
  %i.aj = getelementptr i8, ptr %next.gep45, i64 16
  store <4 x i32> %wide.load47, ptr %next.gep45, align 4, !tbaa !16, !alias.scope !847, !noalias !850
  store <4 x i32> %wide.load48, ptr %i.aj, align 4, !tbaa !16, !alias.scope !847, !noalias !850
  %index.next49 = add nuw i64 %index44, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ak, label %middle.block50, label %vector.body43, !llvm.loop !852

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.al = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !850, !noalias !847
  store i32 %i.al, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !847, !noalias !850
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !853

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block50, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block50 ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.y, ptr %i.g, align 8, !tbaa !262
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !459
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = lshr i32 %1, 4
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !332
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.at, i64 %i.as ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !459 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !263
  %.not.i6 = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %2, ptr %i.ax, align 4, !tbaa !16
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !459
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !262 ; 7 uses
  %i.bd = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775804
  br i1 %i.bg, label %bb.j, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #24 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store i32 %2, ptr %i.bo, align 4, !tbaa !16
  %.not10.i.i.i.i.i10 = icmp eq ptr %i.bc, %i.ax
  br i1 %.not10.i.i.i.i.i10, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11.preheader

.lr.ph.i.i.i.i.i11.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7
  %i.bp = ptrtoaddr ptr %i.bn to i64
  %5 = sub i64 %i.bd, %i.be
  %6 = add i64 %5, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.bx = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !16, !alias.scope !857, !noalias !854
  %wide.load35 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !16, !alias.scope !857, !noalias !854
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !854, !noalias !857
  store <4 x i32> %wide.load35, ptr %i.by, align 4, !tbaa !16, !alias.scope !854, !noalias !857
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !859

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.ca = load i32, ptr %.0911.i.i.i.i.i13, align 4, !tbaa !16, !alias.scope !857, !noalias !854
  store i32 %i.ca, ptr %.012.i.i.i.i.i12, align 4, !tbaa !16, !alias.scope !854, !noalias !857
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i13, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i12, i64 4 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.cb, %i.ax
  br i1 %.not.i.i.i.i.i14, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11, !llvm.loop !860

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15: ; preds = %.lr.ph.i.i.i.i.i11, %middle.block, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7
  %.0.lcssa.i.i.i.i.i16 = phi ptr [ %i.bn, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7 ], [ %i.bu, %middle.block ], [ %i.cc, %.lr.ph.i.i.i.i.i11 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i16, i64 4
  %.not.i23.i.i17 = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i.i17, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bf) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18: ; preds = %bb.k, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15
  store ptr %i.bn, ptr %i.av, align 8, !tbaa !262
  store ptr %i.cd, ptr %i.aw, align 8, !tbaa !459
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.ce, ptr %i.ay, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18, %bb.h, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(76) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !338  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !194    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.s = load i64, ptr %2, align 8
  store i64 %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !216
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 4, ptr %i.w, align 4, !tbaa !217
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 5 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !218
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !218  ; 8 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !216 ; 3 uses
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
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !861

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
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !862

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  store i32 %i.ac, ptr %i.v, align 8, !tbaa !216
  store i32 0, ptr %i.ab, align 8, !tbaa !216
  br label %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.y, ptr %i.t, align 8, !tbaa !218
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 20
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !246
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !244  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !312
  store ptr %i.o, ptr %.031, align 8, !tbaa !245
  store ptr %.031, ptr %i.g, align 8, !tbaa !312
  store ptr %i.g, ptr %i.m, align 8, !tbaa !244
  %i.p = load ptr, ptr %.031, align 8, !tbaa !245
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !244
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !245
  store ptr %i.r, ptr %.031, align 8, !tbaa !245
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !244
  store ptr %.031, ptr %i.s, align 8, !tbaa !245
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !881

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #25
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !25
  store ptr %.0.i, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE10rescheduleEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.211") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !454, !nonnull !167, !align !168 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !170  ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 136                 ; 3 uses
  %i.k = icmp ugt i64 %i.j, 2305843009213693951
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #26
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not49 = icmp eq ptr %i.e, %i.f
  br i1 %.not49, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.j, 2
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #24
          to label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.e ; 4 uses

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %0, align 8, !tbaa !262
  store ptr %i.n, ptr %i.o, align 8, !tbaa !459
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.j ; 2 uses
  store ptr %i.p, ptr %i.l, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.promoted24 = phi ptr [ null, %bb.c ], [ %i.n, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 4 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.p, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  store ptr %.promoted, ptr %i.l, align 8
  store ptr %.promoted24, ptr %0, align 8
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEEZNS3_23BytecodeGraphSerializerIP10lua_TValueE10rescheduleEvEUlS4_S4_E_EvT_SF_T0_.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit
  store ptr %i.bp, ptr %i.l, align 8
  store ptr %i.bo, ptr %0, align 8
  %.not.i.i = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEEZNS3_23BytecodeGraphSerializerIP10lua_TValueE10rescheduleEvEUlS4_S4_E_EvT_SF_T0_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.r = ptrtoint ptr %i.bn to i64
  %i.s = ptrtoint ptr %i.bo to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerIP10lua_TValueE10rescheduleEvEUlS4_S4_E_EEEvT_SI_T0_T1_(ptr %i.bo, ptr %i.bn, i64 noundef %i.x, ptr nonnull %1)
          to label %.noexc14 unwind label %bb.e

.noexc14:                                         ; preds = %bb.d
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerIP10lua_TValueE10rescheduleEvEUlS4_S4_E_EEEvT_SI_T0_(ptr %i.bo, ptr %i.bn, ptr nonnull %1)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEEZNS3_23BytecodeGraphSerializerIP10lua_TValueE10rescheduleEvEUlS4_S4_E_EvT_SF_T0_.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc14, %bb.d, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %0, align 8, !tbaa !262
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit
  %i.z = phi ptr [ %.promoted24, %.lr.ph ], [ %i.bn, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ] ; 7 uses
  %i.aa = phi ptr [ %i.f, %.lr.ph ], [ %i.bw, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ]
  %i.ab = phi i64 [ 0, %.lr.ph ], [ %i.br, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ]
  %.01028 = phi i32 [ 0, %.lr.ph ], [ %i.bq, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ac = phi ptr [ %.promoted, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.ad = phi ptr [ %.promoted24, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ] ; 13 uses
  %i.ae = getelementptr inbounds nuw [136 x i8], ptr %i.aa, i64 %i.ab
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !446
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
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !459
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #24
          to label %.noexc19 unwind label %.loopexit ; 8 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i32 %i.aj, ptr %i.aw, align 4, !tbaa !16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc19
  %i.ax = ptrtoaddr ptr %i.av to i64
  %2 = sub i64 %i.al, %i.am
  %3 = add i64 %2, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.bf = getelementptr i8, ptr %next.gep71, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep71, align 4, !tbaa !16, !alias.scope !885, !noalias !882
  %wide.load72 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !16, !alias.scope !885, !noalias !882
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !882, !noalias !885
  store <4 x i32> %wide.load72, ptr %i.bg, align 4, !tbaa !16, !alias.scope !882, !noalias !885
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !887

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.bi = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !885, !noalias !882
  store i32 %i.bi, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !882, !noalias !885
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !888

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.av, %.noexc19 ], [ %i.bc, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.an) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bl, ptr %i.q, align 8, !tbaa !459
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
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !454, !nonnull !167, !align !168 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !169
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !170 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 136
  %i.cb = icmp ugt i64 %i.ca, %i.br
  br i1 %i.cb, label %bb.f, label %._crit_edge, !llvm.loop !889

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEEZNS3_23BytecodeGraphSerializerIP10lua_TValueE10rescheduleEvEUlS4_S4_E_EvT_SF_T0_.exit: ; preds = %._crit_edge.thread, %._crit_edge, %.noexc14
  %i.cc = phi ptr [ %.promoted24, %._crit_edge.thread ], [ %i.bn, %._crit_edge ], [ %i.bn, %.noexc14 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !459
  ret void

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %i.cf = phi ptr [ %.pre, %bb.e ], [ %i.ad, %.loopexit ], [ %i.ad, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !263
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZNK4Luau15BytecodeBuilder10getDebugPCEv(ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE15emitInstructionENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 38 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !454, !nonnull !167, !align !168
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = lshr i32 %1, 4
  %i.e = zext nneg i32 %i.d to i64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %i.e ; 90 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 81 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !466, !nonnull !167, !align !168
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !198
  tail call void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.i, i32 noundef %i.k)
  %i.l = load i32, ptr %i.g, align 8, !tbaa !207  ; 9 uses
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
end_hunk_6
begin_hunk_7_@_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_6BcJumpIS3_EEE7setBcOpEjNS0_4BcOpE:bb.a
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bk, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i, !llvm.loop !911

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit: ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %bb.b, %bb.f
  store i32 %i.l, ptr %i.j, align 8, !tbaa !216
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !195
  %.pre103 = load i32, ptr %i.c, align 8
  %.pre104 = load ptr, ptr %.pre, align 8, !tbaa !194
  %.pre105 = lshr i32 %.pre103, 4
  %.pre106 = zext nneg i32 %.pre105 to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, %bb.a
  %.pre-phi107 = phi i64 [ %.pre106, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.f, %bb.a ]
  %i.bl = phi ptr [ %.pre104, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.g, %bb.a ]
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.bl, i64 %.pre-phi107
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = zext i32 %1 to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !218
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  store i32 %2, ptr %i.bq, align 4, !tbaa !16
  %i.br = and i32 %2, 15
  switch i32 %i.br, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit [
    i32 2, label %bb.h
    i32 4, label %bb.w
  ]

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %0, align 8, !tbaa !464, !nonnull !167, !align !168
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = lshr i32 %2, 4
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !194
  %i.bx = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %i.bv ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !214 ; 10 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !214 ; 7 uses
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
  br i1 %i.cw, label %bb.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !912

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
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.cb, %i.do
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.dp, ptr %i.cb, align 4, !tbaa !16
  %i.dq = load ptr, ptr %i.ca, align 8, !tbaa !459
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.ca, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.ds = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.ds, label %bb.u, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #24 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ce
  %i.eb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ec = ptrtoaddr ptr %i.dz to i64
  %3 = sub i64 %i.cc, %i.cd
  %4 = add i64 %3, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.ek = getelementptr i8, ptr %next.gep184, i64 16
  %wide.load185 = load <4 x i32>, ptr %next.gep184, align 4, !tbaa !16, !alias.scope !916, !noalias !913
  %wide.load186 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !16, !alias.scope !916, !noalias !913
  %i.el = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %wide.load185, ptr %next.gep183, align 4, !tbaa !16, !alias.scope !913, !noalias !916
  store <4 x i32> %wide.load186, ptr %i.el, align 4, !tbaa !16, !alias.scope !913, !noalias !916
  %index.next187 = add nuw i64 %index182, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.em, label %middle.block188, label %vector.body181, !llvm.loop !918

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.en = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !916, !noalias !913
  store i32 %i.en, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !913, !noalias !916
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eo, %i.cb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !919

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block188, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.eh, %middle.block188 ], [ %i.ep, %.lr.ph.i.i.i.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.dz, ptr %i.by, align 8, !tbaa !262
  store ptr %i.eq, ptr %i.ca, align 8, !tbaa !459
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.er, ptr %i.dn, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.w:                                             ; preds = %bb.g
  %i.es = load ptr, ptr %0, align 8, !tbaa !464, !nonnull !167, !align !168
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = lshr i32 %2, 4
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !332
  %i.ex = getelementptr inbounds nuw [56 x i8], ptr %i.ew, i64 %i.ev ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !214 ; 10 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40 ; 4 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !214 ; 7 uses
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
  br i1 %i.fw, label %bb.x, label %._crit_edge.loopexit.i.i.i35, !llvm.loop !912

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
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !263
  %.not.i42 = icmp eq ptr %i.fb, %i.go
  br i1 %.not.i42, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.gp, ptr %i.fb, align 4, !tbaa !16
  %i.gq = load ptr, ptr %i.fa, align 8, !tbaa !459
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store ptr %i.gr, ptr %i.fa, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.ai:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gs = icmp eq i64 %i.fe, 9223372036854775804
  br i1 %i.gs, label %bb.aj, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #24 ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.fe
  %i.hb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !16
  %.not10.i.i.i.i.i46 = icmp eq ptr %i.ez, %i.fb
  br i1 %.not10.i.i.i.i.i46, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47.preheader

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %i.hc = ptrtoaddr ptr %i.gz to i64
  %5 = sub i64 %i.fc, %i.fd
  %6 = add i64 %5, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.hk = getelementptr i8, ptr %next.gep167, i64 16
  %wide.load168 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !16, !alias.scope !923, !noalias !920
  %wide.load169 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !16, !alias.scope !923, !noalias !920
  %i.hl = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x i32> %wide.load168, ptr %next.gep166, align 4, !tbaa !16, !alias.scope !920, !noalias !923
  store <4 x i32> %wide.load169, ptr %i.hl, align 4, !tbaa !16, !alias.scope !920, !noalias !923
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.hm = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.hm, label %middle.block171, label %vector.body164, !llvm.loop !925

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.hn = load i32, ptr %.0911.i.i.i.i.i49, align 4, !tbaa !16, !alias.scope !923, !noalias !920
  store i32 %i.hn, ptr %.012.i.i.i.i.i48, align 4, !tbaa !16, !alias.scope !920, !noalias !923
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 4 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.ho, %i.fb
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47, !llvm.loop !926

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51: ; preds = %.lr.ph.i.i.i.i.i47, %middle.block171, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %.0.lcssa.i.i.i.i.i52 = phi ptr [ %i.gz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43 ], [ %i.hh, %middle.block171 ], [ %i.hp, %.lr.ph.i.i.i.i.i47 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i52, i64 4
  %.not.i23.i.i53 = icmp eq ptr %i.ez, null
  br i1 %.not.i23.i.i53, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54: ; preds = %bb.ak, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  store ptr %i.gz, ptr %i.ey, align 8, !tbaa !262
  store ptr %i.hq, ptr %i.fa, align 8, !tbaa !459
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hr, ptr %i.gn, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41, %bb.ah, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, %bb.s, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g
  ret void
}

declare void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !167, !align !168 ; 6 uses
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
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !332
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.j
  %i.m = load i64, ptr %i.d, align 8, !tbaa !579
  %.not.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !245 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %.tr33, %i.o
  br i1 %i.p, label %.thread, label %.preheader, !llvm.loop !580

bb.d:                                             ; preds = %bb.b
  %.0.insert.ext.i.i.i.i = zext i32 %.tr33 to i64 ; 3 uses
  %i.q = load i64, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.r = urem i64 %.0.insert.ext.i.i.i.i, %i.q    ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !246
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
  br i1 %i.ah, label %.thread, label %.lr.ph.i.i.i.i, !llvm.loop !248

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.ai, %bb.f ], [ %i.v, %bb.e ]
  %i.ai = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !246 ; 2 uses
  %i.al = urem i64 %i.ak, %i.q
  %.not19.i.i.i.i = icmp eq i64 %i.al, %i.r
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !248

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %.loopexit, !llvm.loop !248

.thread:                                          ; preds = %bb.e, %bb.f, %bb.c
  %.sroa.06.1.i.i = phi ptr [ %i.ai, %bb.f ], [ %.sroa.06.0.i.i, %bb.c ], [ %i.v, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 12
  %i.an = load i8, ptr %i.am, align 4, !tbaa !249
  br label %common.ret128

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %bb.d, %..loopexit_crit_edge21.i.i.i.i
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !218
  %.sroa.03.0.copyload = load i32, ptr %i.ao, align 4, !tbaa !16
  br label %tailrecurse

bb.h:                                             ; preds = %tailrecurse
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !579
  %.not.not.i.i10 = icmp eq i64 %i.ap, 0
  br i1 %.not.not.i.i10, label %.preheader83, label %bb.i

.preheader83:                                     ; preds = %bb.h, %.preheader83
  %.sroa.06.0.in.i.i20 = phi ptr [ %.sroa.06.0.i.i21, %.preheader83 ], [ %i.g, %bb.h ]
  %.sroa.06.0.i.i21 = load ptr, ptr %.sroa.06.0.in.i.i20, align 8, !tbaa !245, !nonnull !167, !noundef !167 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i21, i64 8
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %.tr33, %i.ar
  br i1 %i.as, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEE4findERS7_.exit23, label %.preheader83, !llvm.loop !580

bb.i:                                             ; preds = %bb.h
  %.0.insert.ext.i.i.i.i12 = zext i32 %.tr33 to i64 ; 3 uses
  %i.at = load i64, ptr %i.f, align 8, !tbaa !25  ; 2 uses
  %i.au = urem i64 %.0.insert.ext.i.i.i.i12, %i.at ; 2 uses
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !244, !nonnull !167, !noundef !167
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !245 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
end_hunk_7
begin_hunk_8_@_ZN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE10recordJumpERNS0_6BcInstEh:bb.a

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !450  ; 5 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.d, label %_ZNKSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.v = sdiv exact i64 %i.t, 12                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 768614336404564650)
  %i.z = select i1 %i.x, i64 768614336404564650, i64 %i.y ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aa = mul nuw nsw i64 %i.z, 12
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #24 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t ; 3 uses
  store i32 %i.f, ptr %i.ac, align 4, !tbaa !930
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.j, ptr %.sroa.5.0..sroa_idx6, align 4, !tbaa !138
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx8, align 4, !tbaa !16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.q, %i.l
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %_ZNKSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.q, %_ZNKSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !931, !alias.scope !932
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !936

_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZNKSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.t) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !450
  store ptr %i.af, ptr %i.k, align 8, !tbaa !929
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !453
  br label %_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau8Bytecode23BytecodeGraphSerializerIP10lua_TValueE8JumpInfoESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  ret void
}

declare void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau15BytecodeBuilder5emitEE10LuauOpcodei(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK4Luau15BytecodeBuilder19getInstructionCountEv(ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4Luau15BytecodeBuilder10patchJumpDEmm(ptr noundef nonnull align 8 dereferenceable(1048), i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4Luau15BytecodeBuilder10patchSkipCEmm(ptr noundef nonnull align 8 dereferenceable(1048), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !138    ; 6 uses
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
  br i1 %i.q, label %bb.e, label %bb.f, !prof !572

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !135
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !138
  store i32 %i.s, ptr %i.d, align 4, !tbaa !138
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !135
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !572

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
  %i.ac = load i32, ptr %1, align 4, !tbaa !138
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !138
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
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !138
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !138
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !937

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !138
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !938

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %4 = sub i64 %i.aq, %i.k
  %5 = add i64 %4, -4                             ; 2 uses
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
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !138
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !138
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !939

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !138
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !940

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !135
  %i.az = icmp sgt i64 %i.k, 4
  br i1 %i.az, label %bb.n, label %bb.o, !prof !572

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !135
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 4
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %1, align 4, !tbaa !138
  store i32 %i.bb, ptr %.0.i.i.i.i.i, align 4, !tbaa !138
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !135
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %6 = sub i64 %i.f, %i.j
  %7 = add i64 %6, -4                             ; 2 uses
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
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !138
  store <4 x i32> %broadcast.splat117, ptr %i.bj, align 4, !tbaa !138
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bk, label %middle.block122, label %vector.body118, !llvm.loop !941

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bf, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !138
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !942

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !136   ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 4 uses
  %i.bq = sub nsw i64 2305843009213693951, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
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
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load i32, ptr %3, align 4, !tbaa !138   ; 2 uses
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
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !138
  store <4 x i32> %broadcast.splat143, ptr %i.ck, align 4, !tbaa !138
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cl, label %middle.block148, label %vector.body144, !llvm.loop !943

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.cg, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.cd, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !138
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !944

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cn = icmp sgt i64 %i.bx, 4
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !572

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 4
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.bm, align 4, !tbaa !138
  store i32 %i.cp, ptr %i.ca, align 4, !tbaa !138
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 4
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !572

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 4
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load i32, ptr %1, align 4, !tbaa !138
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !138
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #25
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !136
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !135
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !137
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_8BcCallFBIS3_EEE11sliceInputsEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.211") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !216  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %i.k, %2
  br i1 %.not, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.m = sub i32 %i.k, %2
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !262
  store ptr %i.q, ptr %i.o, align 8, !tbaa !459
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i
  %.promoted20 = phi ptr [ null, %bb.a ], [ %i.q, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.a ], [ %i.r, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.s = icmp ult i32 %2, %i.k
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit
  %i.v = phi ptr [ %.promoted20, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.w = phi ptr [ %.promoted, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.x = phi ptr [ %.promoted20, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 13 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.e, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.w, ptr %i.l, align 8
  store ptr %i.x, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #24
          to label %.noexc15 unwind label %.loopexit ; 8 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = load i32, ptr %i.z, align 4, !tbaa !16
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc15
  %i.ap = ptrtoaddr ptr %i.am to i64
  %3 = sub i64 %i.ac, %i.ad
  %4 = add i64 %3, -4                             ; 2 uses
  %i.aq = lshr i64 %4, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.as = sub i64 %i.ad, %i.ap
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.x, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.aw ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.x, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.ax = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !16, !alias.scope !948, !noalias !945
  %wide.load69 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !16, !alias.scope !948, !noalias !945
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !945, !noalias !948
  store <4 x i32> %wide.load69, ptr %i.ay, align 4, !tbaa !16, !alias.scope !945, !noalias !948
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !950

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.preheader71:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.ba = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !948, !noalias !945
  store i32 %i.ba, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !945, !noalias !948
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !951

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %.noexc15 ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ae) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bd, ptr %i.t, align 8, !tbaa !459
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c
  %i.bf = phi ptr [ %i.bd, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ab, %bb.c ]
  %i.bg = phi ptr [ %i.am, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.x, %bb.c ] ; 2 uses
  %i.bh = phi ptr [ %i.be, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !216
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !952

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.w, ptr %i.l, align 8
  store ptr %i.x, ptr %0, align 8
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %.lcssa21 = phi ptr [ %.promoted20, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ]
  %.lcssa17 = phi ptr [ %.promoted, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa17, ptr %i.l, align 8
  store ptr %.lcssa21, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = ptrtoint ptr %i.v to i64
  %i.bm = ptrtoint ptr %i.x to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.bn) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !547  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !558  ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.515.023.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.022.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.021.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.020.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %i.u = add i32 %.sroa.515.023.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.023.i.i.i.i.i, 0  ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i ; 2 uses
  %spec.select19.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %i.w = zext nneg i32 %spec.select19.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.021.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.021.i.i.i.i.i, 0   ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.020.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !551
  %i.ad = and i64 %i.ac, %i.x
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !551
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !551
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !551
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !953

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !551
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !551
end_hunk_8
begin_hunk_9_@_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_6BcMoveIS3_EEE7setBcOpEjNS0_4BcOpE:bb.a
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bk, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i, !llvm.loop !911

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit: ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %bb.b, %bb.f
  store i32 %i.l, ptr %i.j, align 8, !tbaa !216
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !195
  %.pre103 = load i32, ptr %i.c, align 8
  %.pre104 = load ptr, ptr %.pre, align 8, !tbaa !194
  %.pre105 = lshr i32 %.pre103, 4
  %.pre106 = zext nneg i32 %.pre105 to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, %bb.a
  %.pre-phi107 = phi i64 [ %.pre106, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.f, %bb.a ]
  %i.bl = phi ptr [ %.pre104, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.g, %bb.a ]
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.bl, i64 %.pre-phi107
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = zext i32 %1 to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !218
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  store i32 %2, ptr %i.bq, align 4, !tbaa !16
  %i.br = and i32 %2, 15
  switch i32 %i.br, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit [
    i32 2, label %bb.h
    i32 4, label %bb.w
  ]

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %0, align 8, !tbaa !989, !nonnull !167, !align !168
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = lshr i32 %2, 4
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !194
  %i.bx = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %i.bv ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !214 ; 10 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !214 ; 7 uses
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
  br i1 %i.cw, label %bb.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !912

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
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.cb, %i.do
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.dp, ptr %i.cb, align 4, !tbaa !16
  %i.dq = load ptr, ptr %i.ca, align 8, !tbaa !459
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.ca, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.ds = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.ds, label %bb.u, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #24 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ce
  %i.eb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ec = ptrtoaddr ptr %i.dz to i64
  %3 = sub i64 %i.cc, %i.cd
  %4 = add i64 %3, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %i.ek = getelementptr i8, ptr %next.gep184, i64 16
  %wide.load185 = load <4 x i32>, ptr %next.gep184, align 4, !tbaa !16, !alias.scope !1047, !noalias !1044
  %wide.load186 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !16, !alias.scope !1047, !noalias !1044
  %i.el = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %wide.load185, ptr %next.gep183, align 4, !tbaa !16, !alias.scope !1044, !noalias !1047
  store <4 x i32> %wide.load186, ptr %i.el, align 4, !tbaa !16, !alias.scope !1044, !noalias !1047
  %index.next187 = add nuw i64 %index182, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.em, label %middle.block188, label %vector.body181, !llvm.loop !1049

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %i.en = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1047, !noalias !1044
  store i32 %i.en, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1044, !noalias !1047
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eo, %i.cb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1050

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block188, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.eh, %middle.block188 ], [ %i.ep, %.lr.ph.i.i.i.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.dz, ptr %i.by, align 8, !tbaa !262
  store ptr %i.eq, ptr %i.ca, align 8, !tbaa !459
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.er, ptr %i.dn, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.w:                                             ; preds = %bb.g
  %i.es = load ptr, ptr %0, align 8, !tbaa !989, !nonnull !167, !align !168
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = lshr i32 %2, 4
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !332
  %i.ex = getelementptr inbounds nuw [56 x i8], ptr %i.ew, i64 %i.ev ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !214 ; 10 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40 ; 4 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !214 ; 7 uses
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
  br i1 %i.fw, label %bb.x, label %._crit_edge.loopexit.i.i.i35, !llvm.loop !912

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
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !263
  %.not.i42 = icmp eq ptr %i.fb, %i.go
  br i1 %.not.i42, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.gp, ptr %i.fb, align 4, !tbaa !16
  %i.gq = load ptr, ptr %i.fa, align 8, !tbaa !459
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store ptr %i.gr, ptr %i.fa, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.ai:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gs = icmp eq i64 %i.fe, 9223372036854775804
  br i1 %i.gs, label %bb.aj, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #24 ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.fe
  %i.hb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !16
  %.not10.i.i.i.i.i46 = icmp eq ptr %i.ez, %i.fb
  br i1 %.not10.i.i.i.i.i46, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47.preheader

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %i.hc = ptrtoaddr ptr %i.gz to i64
  %5 = sub i64 %i.fc, %i.fd
  %6 = add i64 %5, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.hk = getelementptr i8, ptr %next.gep167, i64 16
  %wide.load168 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !16, !alias.scope !1054, !noalias !1051
  %wide.load169 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !16, !alias.scope !1054, !noalias !1051
  %i.hl = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x i32> %wide.load168, ptr %next.gep166, align 4, !tbaa !16, !alias.scope !1051, !noalias !1054
  store <4 x i32> %wide.load169, ptr %i.hl, align 4, !tbaa !16, !alias.scope !1051, !noalias !1054
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.hm = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.hm, label %middle.block171, label %vector.body164, !llvm.loop !1056

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.hn = load i32, ptr %.0911.i.i.i.i.i49, align 4, !tbaa !16, !alias.scope !1054, !noalias !1051
  store i32 %i.hn, ptr %.012.i.i.i.i.i48, align 4, !tbaa !16, !alias.scope !1051, !noalias !1054
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 4 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.ho, %i.fb
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47, !llvm.loop !1057

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51: ; preds = %.lr.ph.i.i.i.i.i47, %middle.block171, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %.0.lcssa.i.i.i.i.i52 = phi ptr [ %i.gz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43 ], [ %i.hh, %middle.block171 ], [ %i.hp, %.lr.ph.i.i.i.i.i47 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i52, i64 4
  %.not.i23.i.i53 = icmp eq ptr %i.ez, null
  br i1 %.not.i23.i.i53, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54: ; preds = %bb.ak, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  store ptr %i.gz, ptr %i.ey, align 8, !tbaa !262
  store ptr %i.hq, ptr %i.fa, align 8, !tbaa !459
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hr, ptr %i.gn, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41, %bb.ah, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, %bb.s, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcNamecallIS3_EEE7getBcOpEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !194  ; 2 uses
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %i.f ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !216  ; 3 uses
  %.not = icmp ult i32 %1, %i.k
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %1, 1                            ; 6 uses
  %i.m = icmp ugt i32 %i.l, %i.k
  br i1 %i.m, label %bb.c, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !217  ; 3 uses
  %i.p = icmp ugt i32 %i.l, %i.o
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = lshr i32 %i.o, 1
  %i.r = add i32 %i.q, %i.o                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, %i.l
  %i.t = add i32 %1, 5
  %.09.i.i = select i1 %i.s, i32 %i.r, i32 %i.t   ; 2 uses
  %i.u = zext i32 %.09.i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27 ; 5 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !218  ; 7 uses
  %i.y = load i32, ptr %i.j, align 8, !tbaa !216  ; 3 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i = shl nuw nsw i64 %i.z, 2             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %i.ab = ptrtoaddr ptr %i.x to i64
  %i.ac = ptrtoaddr ptr %i.w to i64
  %i.ad = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 44
  %i.ag = sub i64 %i.ab, %i.ac
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  %i.ah = shl i64 %n.vec, 2                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !16
  %wide.load14 = load <4 x i32>, ptr %i.al, align 4, !tbaa !16
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load14, ptr %i.am, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1058

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.i.preheader16:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !16
  store i32 %i.ao, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1059

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.not.i.i = icmp eq ptr %i.x, %i.ar
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.x) #23
  %.pre.pre.i = load i32, ptr %i.j, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i: ; preds = %bb.e, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  %.pre.i = phi i32 [ %i.y, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i ], [ %.pre.pre.i, %bb.e ]
  store ptr %i.w, ptr %i.i, align 8, !tbaa !218
  store i32 %.09.i.i, ptr %i.n, align 4, !tbaa !217
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, %bb.c
  %i.as = phi i32 [ %.pre.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.at = icmp ult i32 %i.as, %i.l
  br i1 %i.at, label %.lr.ph13.preheader.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit

.lr.ph13.preheader.i:                             ; preds = %bb.f
  %i.au = zext i32 %i.as to i64                   ; 4 uses
  %wide.trip.count.i = zext i32 %i.l to i64       ; 3 uses
  %i.av = sub nsw i64 %wide.trip.count.i, %i.au
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph13.i.prol.loopexit, label %.lr.ph13.i.prol
end_hunk_9
begin_hunk_10_@_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcNamecallIS3_EEE7setBcOpEjNS0_4BcOpE:bb.a
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bk, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i, !llvm.loop !911

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit: ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %bb.b, %bb.f
  store i32 %i.l, ptr %i.j, align 8, !tbaa !216
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !195
  %.pre103 = load i32, ptr %i.c, align 8
  %.pre104 = load ptr, ptr %.pre, align 8, !tbaa !194
  %.pre105 = lshr i32 %.pre103, 4
  %.pre106 = zext nneg i32 %.pre105 to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, %bb.a
  %.pre-phi107 = phi i64 [ %.pre106, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.f, %bb.a ]
  %i.bl = phi ptr [ %.pre104, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.g, %bb.a ]
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.bl, i64 %.pre-phi107
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = zext i32 %1 to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !218
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  store i32 %2, ptr %i.bq, align 4, !tbaa !16
  %i.br = and i32 %2, 15
  switch i32 %i.br, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit [
    i32 2, label %bb.h
    i32 4, label %bb.w
  ]

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !167, !align !168
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = lshr i32 %2, 4
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !194
  %i.bx = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %i.bv ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !214 ; 10 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !214 ; 7 uses
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
  br i1 %i.cw, label %bb.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !912

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
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.cb, %i.do
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.dp, ptr %i.cb, align 4, !tbaa !16
  %i.dq = load ptr, ptr %i.ca, align 8, !tbaa !459
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.ca, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.ds = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.ds, label %bb.u, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #24 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ce
  %i.eb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ec = ptrtoaddr ptr %i.dz to i64
  %3 = sub i64 %i.cc, %i.cd
  %4 = add i64 %3, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.ek = getelementptr i8, ptr %next.gep184, i64 16
  %wide.load185 = load <4 x i32>, ptr %next.gep184, align 4, !tbaa !16, !alias.scope !1067, !noalias !1064
  %wide.load186 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !16, !alias.scope !1067, !noalias !1064
  %i.el = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %wide.load185, ptr %next.gep183, align 4, !tbaa !16, !alias.scope !1064, !noalias !1067
  store <4 x i32> %wide.load186, ptr %i.el, align 4, !tbaa !16, !alias.scope !1064, !noalias !1067
  %index.next187 = add nuw i64 %index182, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.em, label %middle.block188, label %vector.body181, !llvm.loop !1069

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.en = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1067, !noalias !1064
  store i32 %i.en, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1064, !noalias !1067
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eo, %i.cb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1070

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block188, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.eh, %middle.block188 ], [ %i.ep, %.lr.ph.i.i.i.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.dz, ptr %i.by, align 8, !tbaa !262
  store ptr %i.eq, ptr %i.ca, align 8, !tbaa !459
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.er, ptr %i.dn, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.w:                                             ; preds = %bb.g
  %i.es = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !167, !align !168
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = lshr i32 %2, 4
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !332
  %i.ex = getelementptr inbounds nuw [56 x i8], ptr %i.ew, i64 %i.ev ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !214 ; 10 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40 ; 4 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !214 ; 7 uses
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
  br i1 %i.fw, label %bb.x, label %._crit_edge.loopexit.i.i.i35, !llvm.loop !912

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
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !263
  %.not.i42 = icmp eq ptr %i.fb, %i.go
  br i1 %.not.i42, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.gp, ptr %i.fb, align 4, !tbaa !16
  %i.gq = load ptr, ptr %i.fa, align 8, !tbaa !459
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store ptr %i.gr, ptr %i.fa, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.ai:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gs = icmp eq i64 %i.fe, 9223372036854775804
  br i1 %i.gs, label %bb.aj, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #24 ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.fe
  %i.hb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !16
  %.not10.i.i.i.i.i46 = icmp eq ptr %i.ez, %i.fb
  br i1 %.not10.i.i.i.i.i46, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47.preheader

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %i.hc = ptrtoaddr ptr %i.gz to i64
  %5 = sub i64 %i.fc, %i.fd
  %6 = add i64 %5, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.hk = getelementptr i8, ptr %next.gep167, i64 16
  %wide.load168 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !16, !alias.scope !1074, !noalias !1071
  %wide.load169 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !16, !alias.scope !1074, !noalias !1071
  %i.hl = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x i32> %wide.load168, ptr %next.gep166, align 4, !tbaa !16, !alias.scope !1071, !noalias !1074
  store <4 x i32> %wide.load169, ptr %i.hl, align 4, !tbaa !16, !alias.scope !1071, !noalias !1074
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.hm = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.hm, label %middle.block171, label %vector.body164, !llvm.loop !1076

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.hn = load i32, ptr %.0911.i.i.i.i.i49, align 4, !tbaa !16, !alias.scope !1074, !noalias !1071
  store i32 %i.hn, ptr %.012.i.i.i.i.i48, align 4, !tbaa !16, !alias.scope !1071, !noalias !1074
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 4 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.ho, %i.fb
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47, !llvm.loop !1077

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51: ; preds = %.lr.ph.i.i.i.i.i47, %middle.block171, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %.0.lcssa.i.i.i.i.i52 = phi ptr [ %i.gz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43 ], [ %i.hh, %middle.block171 ], [ %i.hp, %.lr.ph.i.i.i.i.i47 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i52, i64 4
  %.not.i23.i.i53 = icmp eq ptr %i.ez, null
  br i1 %.not.i23.i.i53, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54: ; preds = %bb.ak, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  store ptr %i.gz, ptr %i.ey, align 8, !tbaa !262
  store ptr %i.hq, ptr %i.fa, align 8, !tbaa !459
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hr, ptr %i.gn, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41, %bb.ah, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, %bb.s, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_12BcGetTableKSIS3_EEE7setBcOpEjNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !194  ; 2 uses
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %i.f ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !216  ; 3 uses
  %.not = icmp ult i32 %1, %i.k
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %1, 1                            ; 6 uses
  %i.m = icmp ugt i32 %i.l, %i.k
  br i1 %i.m, label %bb.c, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !217  ; 3 uses
  %i.p = icmp ugt i32 %i.l, %i.o
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = lshr i32 %i.o, 1
  %i.r = add i32 %i.q, %i.o                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, %i.l
  %i.t = add i32 %1, 5
  %.09.i.i = select i1 %i.s, i32 %i.r, i32 %i.t   ; 2 uses
  %i.u = zext i32 %.09.i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27 ; 5 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !218  ; 7 uses
  %i.y = load i32, ptr %i.j, align 8, !tbaa !216  ; 3 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i = shl nuw nsw i64 %i.z, 2             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %i.ab = ptrtoaddr ptr %i.x to i64
  %i.ac = ptrtoaddr ptr %i.w to i64
  %i.ad = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 44
  %i.ag = sub i64 %i.ab, %i.ac
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader205, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  %i.ah = shl i64 %n.vec, 2                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep155, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep155, align 4, !tbaa !16
  %wide.load156 = load <4 x i32>, ptr %i.al, align 4, !tbaa !16
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load156, ptr %i.am, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1078

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader205

.lr.ph.i.i.i.i.i.i.preheader205:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader205, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader205 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader205 ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !16
  store i32 %i.ao, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1079

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.not.i.i = icmp eq ptr %i.x, %i.ar
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.x) #23
  %.pre.pre.i = load i32, ptr %i.j, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i: ; preds = %bb.e, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  %.pre.i = phi i32 [ %i.y, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i ], [ %.pre.pre.i, %bb.e ]
  store ptr %i.w, ptr %i.i, align 8, !tbaa !218
  store i32 %.09.i.i, ptr %i.n, align 4, !tbaa !217
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, %bb.c
  %i.as = phi i32 [ %.pre.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.at = icmp ult i32 %i.as, %i.l
  br i1 %i.at, label %.lr.ph13.preheader.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit

.lr.ph13.preheader.i:                             ; preds = %bb.f
  %i.au = zext i32 %i.as to i64                   ; 4 uses
  %wide.trip.count.i = zext i32 %i.l to i64       ; 3 uses
  %i.av = sub nsw i64 %wide.trip.count.i, %i.au
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph13.i.prol.loopexit, label %.lr.ph13.i.prol
end_hunk_10
begin_hunk_11_@_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_12BcGetTableKSIS3_EEE7setBcOpEjNS0_4BcOpE:bb.a
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bk, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i, !llvm.loop !911

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit: ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %bb.b, %bb.f
  store i32 %i.l, ptr %i.j, align 8, !tbaa !216
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !195
  %.pre103 = load i32, ptr %i.c, align 8
  %.pre104 = load ptr, ptr %.pre, align 8, !tbaa !194
  %.pre105 = lshr i32 %.pre103, 4
  %.pre106 = zext nneg i32 %.pre105 to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, %bb.a
  %.pre-phi107 = phi i64 [ %.pre106, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.f, %bb.a ]
  %i.bl = phi ptr [ %.pre104, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.g, %bb.a ]
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.bl, i64 %.pre-phi107
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = zext i32 %1 to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !218
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  store i32 %2, ptr %i.bq, align 4, !tbaa !16
  %i.br = and i32 %2, 15
  switch i32 %i.br, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit [
    i32 2, label %bb.h
    i32 4, label %bb.w
  ]

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %0, align 8, !tbaa !994, !nonnull !167, !align !168
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = lshr i32 %2, 4
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !194
  %i.bx = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %i.bv ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !214 ; 10 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !214 ; 7 uses
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
  br i1 %i.cw, label %bb.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !912

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
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.cb, %i.do
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.dp, ptr %i.cb, align 4, !tbaa !16
  %i.dq = load ptr, ptr %i.ca, align 8, !tbaa !459
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.ca, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.ds = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.ds, label %bb.u, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #24 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ce
  %i.eb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ec = ptrtoaddr ptr %i.dz to i64
  %3 = sub i64 %i.cc, %i.cd
  %4 = add i64 %3, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.ek = getelementptr i8, ptr %next.gep184, i64 16
  %wide.load185 = load <4 x i32>, ptr %next.gep184, align 4, !tbaa !16, !alias.scope !1084, !noalias !1081
  %wide.load186 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !16, !alias.scope !1084, !noalias !1081
  %i.el = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %wide.load185, ptr %next.gep183, align 4, !tbaa !16, !alias.scope !1081, !noalias !1084
  store <4 x i32> %wide.load186, ptr %i.el, align 4, !tbaa !16, !alias.scope !1081, !noalias !1084
  %index.next187 = add nuw i64 %index182, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.em, label %middle.block188, label %vector.body181, !llvm.loop !1086

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.en = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1084, !noalias !1081
  store i32 %i.en, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1081, !noalias !1084
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eo, %i.cb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1087

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block188, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.eh, %middle.block188 ], [ %i.ep, %.lr.ph.i.i.i.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.dz, ptr %i.by, align 8, !tbaa !262
  store ptr %i.eq, ptr %i.ca, align 8, !tbaa !459
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.er, ptr %i.dn, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.w:                                             ; preds = %bb.g
  %i.es = load ptr, ptr %0, align 8, !tbaa !994, !nonnull !167, !align !168
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = lshr i32 %2, 4
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !332
  %i.ex = getelementptr inbounds nuw [56 x i8], ptr %i.ew, i64 %i.ev ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !214 ; 10 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40 ; 4 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !214 ; 7 uses
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
  br i1 %i.fw, label %bb.x, label %._crit_edge.loopexit.i.i.i35, !llvm.loop !912

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
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !263
  %.not.i42 = icmp eq ptr %i.fb, %i.go
  br i1 %.not.i42, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.gp, ptr %i.fb, align 4, !tbaa !16
  %i.gq = load ptr, ptr %i.fa, align 8, !tbaa !459
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store ptr %i.gr, ptr %i.fa, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.ai:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gs = icmp eq i64 %i.fe, 9223372036854775804
  br i1 %i.gs, label %bb.aj, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #24 ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.fe
  %i.hb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !16
  %.not10.i.i.i.i.i46 = icmp eq ptr %i.ez, %i.fb
  br i1 %.not10.i.i.i.i.i46, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47.preheader

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %i.hc = ptrtoaddr ptr %i.gz to i64
  %5 = sub i64 %i.fc, %i.fd
  %6 = add i64 %5, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %i.hk = getelementptr i8, ptr %next.gep167, i64 16
  %wide.load168 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !16, !alias.scope !1091, !noalias !1088
  %wide.load169 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !16, !alias.scope !1091, !noalias !1088
  %i.hl = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x i32> %wide.load168, ptr %next.gep166, align 4, !tbaa !16, !alias.scope !1088, !noalias !1091
  store <4 x i32> %wide.load169, ptr %i.hl, align 4, !tbaa !16, !alias.scope !1088, !noalias !1091
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.hm = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.hm, label %middle.block171, label %vector.body164, !llvm.loop !1093

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %i.hn = load i32, ptr %.0911.i.i.i.i.i49, align 4, !tbaa !16, !alias.scope !1091, !noalias !1088
  store i32 %i.hn, ptr %.012.i.i.i.i.i48, align 4, !tbaa !16, !alias.scope !1088, !noalias !1091
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 4 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.ho, %i.fb
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47, !llvm.loop !1094

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51: ; preds = %.lr.ph.i.i.i.i.i47, %middle.block171, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %.0.lcssa.i.i.i.i.i52 = phi ptr [ %i.gz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43 ], [ %i.hh, %middle.block171 ], [ %i.hp, %.lr.ph.i.i.i.i.i47 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i52, i64 4
  %.not.i23.i.i53 = icmp eq ptr %i.ez, null
  br i1 %.not.i23.i.i53, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54: ; preds = %bb.ak, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  store ptr %i.gz, ptr %i.ey, align 8, !tbaa !262
  store ptr %i.hq, ptr %i.fa, align 8, !tbaa !459
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hr, ptr %i.gn, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41, %bb.ah, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, %bb.s, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_12BcGetTableKSIS3_EEE11setImmInputEji(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i32 @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_12BcGetTableKSIS3_EEE7getBcOpEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  %i.b = and i32 %i.a, 15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i32 %1 to i64
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !994, !nonnull !167, !align !168 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !641  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !337
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %i.g, align 4
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !641
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !641
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !336
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !336  ; 4 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24 ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store i64 1, ptr %i.x, align 4
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.w, ptr %i.e, align 8, !tbaa !336
  store ptr %i.z, ptr %i.f, align 8, !tbaa !641
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !337
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit: ; preds = %bb.c, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ab = phi ptr [ %.pre.i, %bb.c ], [ %i.w, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ac = phi ptr [ %i.k, %bb.c ], [ %i.z, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = shl i32 %i.ag, 1
  %i.ai = and i32 %i.ah, -16
  %i.aj = add i32 %i.ai, -15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = lshr i32 %i.an, 4
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !194
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.aq, i64 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = zext i32 %1 to i64                      ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !218
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  store i32 %i.aj, ptr %i.av, align 4, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.at, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !994, !nonnull !167, !align !168
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = lshr i32 %i.ba, 4
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !194
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !218
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.pre-phi
  %.sroa.0.0.copyload = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.bj = lshr i32 %.sroa.0.0.copyload, 4
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !336
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %2, ptr %i.bn, align 4, !tbaa !16
  ret void
end_hunk_11
begin_hunk_12_@_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcCmpProtoIS3_EEE7setBcOpEjNS0_4BcOpE:bb.a
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bk, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i, !llvm.loop !911

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit: ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %bb.b, %bb.f
  store i32 %i.l, ptr %i.j, align 8, !tbaa !216
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !195
  %.pre103 = load i32, ptr %i.c, align 8
  %.pre104 = load ptr, ptr %.pre, align 8, !tbaa !194
  %.pre105 = lshr i32 %.pre103, 4
  %.pre106 = zext nneg i32 %.pre105 to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, %bb.a
  %.pre-phi107 = phi i64 [ %.pre106, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.f, %bb.a ]
  %i.bl = phi ptr [ %.pre104, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.g, %bb.a ]
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.bl, i64 %.pre-phi107
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = zext i32 %1 to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !218
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  store i32 %2, ptr %i.bq, align 4, !tbaa !16
  %i.br = and i32 %2, 15
  switch i32 %i.br, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit [
    i32 2, label %bb.h
    i32 4, label %bb.w
  ]

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %0, align 8, !tbaa !999, !nonnull !167, !align !168
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = lshr i32 %2, 4
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !194
  %i.bx = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %i.bv ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !214 ; 10 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !214 ; 7 uses
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
  br i1 %i.cw, label %bb.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !912

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
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.cb, %i.do
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.dp, ptr %i.cb, align 4, !tbaa !16
  %i.dq = load ptr, ptr %i.ca, align 8, !tbaa !459
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.ca, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread
  %i.ds = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.ds, label %bb.u, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #24 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ce
  %i.eb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ec = ptrtoaddr ptr %i.dz to i64
  %3 = sub i64 %i.cc, %i.cd
  %4 = add i64 %3, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %i.ek = getelementptr i8, ptr %next.gep184, i64 16
  %wide.load185 = load <4 x i32>, ptr %next.gep184, align 4, !tbaa !16, !alias.scope !1104, !noalias !1101
  %wide.load186 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !16, !alias.scope !1104, !noalias !1101
  %i.el = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %wide.load185, ptr %next.gep183, align 4, !tbaa !16, !alias.scope !1101, !noalias !1104
  store <4 x i32> %wide.load186, ptr %i.el, align 4, !tbaa !16, !alias.scope !1101, !noalias !1104
  %index.next187 = add nuw i64 %index182, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.em, label %middle.block188, label %vector.body181, !llvm.loop !1106

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %i.en = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1104, !noalias !1101
  store i32 %i.en, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1101, !noalias !1104
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eo, %i.cb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1107

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block188, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.eh, %middle.block188 ], [ %i.ep, %.lr.ph.i.i.i.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.dz, ptr %i.by, align 8, !tbaa !262
  store ptr %i.eq, ptr %i.ca, align 8, !tbaa !459
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.er, ptr %i.dn, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.w:                                             ; preds = %bb.g
  %i.es = load ptr, ptr %0, align 8, !tbaa !999, !nonnull !167, !align !168
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = lshr i32 %2, 4
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !332
  %i.ex = getelementptr inbounds nuw [56 x i8], ptr %i.ew, i64 %i.ev ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !214 ; 10 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40 ; 4 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !214 ; 7 uses
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
  br i1 %i.fw, label %bb.x, label %._crit_edge.loopexit.i.i.i35, !llvm.loop !912

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
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !263
  %.not.i42 = icmp eq ptr %i.fb, %i.go
  br i1 %.not.i42, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gp = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.gp, ptr %i.fb, align 4, !tbaa !16
  %i.gq = load ptr, ptr %i.fa, align 8, !tbaa !459
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store ptr %i.gr, ptr %i.fa, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.ai:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41.thread
  %i.gs = icmp eq i64 %i.fe, 9223372036854775804
  br i1 %i.gs, label %bb.aj, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
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
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #24 ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.fe
  %i.hb = load i32, ptr %i.c, align 8, !tbaa !16
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !16
  %.not10.i.i.i.i.i46 = icmp eq ptr %i.ez, %i.fb
  br i1 %.not10.i.i.i.i.i46, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47.preheader

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %i.hc = ptrtoaddr ptr %i.gz to i64
  %5 = sub i64 %i.fc, %i.fd
  %6 = add i64 %5, -4                             ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.hk = getelementptr i8, ptr %next.gep167, i64 16
  %wide.load168 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !16, !alias.scope !1111, !noalias !1108
  %wide.load169 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !16, !alias.scope !1111, !noalias !1108
  %i.hl = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x i32> %wide.load168, ptr %next.gep166, align 4, !tbaa !16, !alias.scope !1108, !noalias !1111
  store <4 x i32> %wide.load169, ptr %i.hl, align 4, !tbaa !16, !alias.scope !1108, !noalias !1111
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.hm = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.hm, label %middle.block171, label %vector.body164, !llvm.loop !1113

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.hn = load i32, ptr %.0911.i.i.i.i.i49, align 4, !tbaa !16, !alias.scope !1111, !noalias !1108
  store i32 %i.hn, ptr %.012.i.i.i.i.i48, align 4, !tbaa !16, !alias.scope !1108, !noalias !1111
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 4 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.ho, %i.fb
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51, label %.lr.ph.i.i.i.i.i47, !llvm.loop !1114

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51: ; preds = %.lr.ph.i.i.i.i.i47, %middle.block171, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43
  %.0.lcssa.i.i.i.i.i52 = phi ptr [ %i.gz, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i43 ], [ %i.hh, %middle.block171 ], [ %i.hp, %.lr.ph.i.i.i.i.i47 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i52, i64 4
  %.not.i23.i.i53 = icmp eq ptr %i.ez, null
  br i1 %.not.i23.i.i53, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54: ; preds = %bb.ak, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i51
  store ptr %i.gz, ptr %i.ey, align 8, !tbaa !262
  store ptr %i.hq, ptr %i.fa, align 8, !tbaa !459
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hr, ptr %i.gn, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit41, %bb.ah, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i54, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, %bb.s, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcCmpProtoIS3_EEE11setImmInputEji(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i32 @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_10BcCmpProtoIS3_EEE7getBcOpEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  %i.b = and i32 %i.a, 15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i32 %1 to i64
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !999, !nonnull !167, !align !168 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !641  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !337
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %i.g, align 4
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !641
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !641
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !336
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !336  ; 4 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24 ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store i64 1, ptr %i.x, align 4
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.w, ptr %i.e, align 8, !tbaa !336
  store ptr %i.z, ptr %i.f, align 8, !tbaa !641
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !337
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit: ; preds = %bb.c, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ab = phi ptr [ %.pre.i, %bb.c ], [ %i.w, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ac = phi ptr [ %i.k, %bb.c ], [ %i.z, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = shl i32 %i.ag, 1
  %i.ai = and i32 %i.ah, -16
  %i.aj = add i32 %i.ai, -15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = lshr i32 %i.an, 4
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !194
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.aq, i64 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = zext i32 %1 to i64                      ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !218
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  store i32 %i.aj, ptr %i.av, align 4, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.at, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !999, !nonnull !167, !align !168
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = lshr i32 %i.ba, 4
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !194
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !218
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.pre-phi
  %.sroa.0.0.copyload = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.bj = lshr i32 %.sroa.0.0.copyload, 4
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !336
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %2, ptr %i.bn, align 4, !tbaa !16
  ret void
end_hunk_12
begin_hunk_13_@_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE17_M_default_appendEm:bb.a
  %i.cd = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !1126, !noalias !1123
  store i64 %i.cd, ptr %.012.i.i.i, align 8, !alias.scope !1123, !noalias !1126
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store i32 0, ptr %i.cg, align 8, !tbaa !216, !alias.scope !1123, !noalias !1126
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 20
  store i32 4, ptr %i.ch, align 4, !tbaa !217, !alias.scope !1123, !noalias !1126
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 4 uses
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !218, !alias.scope !1123, !noalias !1126
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !218, !alias.scope !1126, !noalias !1123 ; 9 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cj, %i.cl
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !216, !alias.scope !1126, !noalias !1123 ; 3 uses
  %i.co = zext i32 %i.cn to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.co, 2    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.e
  %i.cq = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.cr = lshr exact i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 28
  %i.ct = sub i64 %i.ck, %i.cc
  %diff.check = icmp ugt i64 %i.ct, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cs, 9223372036854775800     ; 3 uses
  %i.cu = shl i64 %n.vec, 2                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ci, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cj, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cx ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.cj, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep50, align 4, !tbaa !16, !noalias !1126
  %wide.load51 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !16, !noalias !1126
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !1123, !noalias !1126
  store <4 x i32> %wide.load51, ptr %i.cz, align 4, !tbaa !16, !alias.scope !1123, !noalias !1126
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !1128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader53

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader53:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader53, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader53 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader53 ] ; 2 uses
  %i.db = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !16, !noalias !1126
  store i32 %i.db, ptr %.013.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1123, !noalias !1126
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dc, %i.cp
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1129

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  store i32 %i.cn, ptr %i.cg, align 8, !tbaa !216, !alias.scope !1123, !noalias !1126
  store i32 0, ptr %i.cm, align 8, !tbaa !216, !alias.scope !1126, !noalias !1123
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i37
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !218, !alias.scope !1123, !noalias !1126
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 20
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.dg = load <2 x i32>, ptr %i.df, align 8, !tbaa !138, !alias.scope !1126, !noalias !1123
  store <2 x i32> %i.dg, ptr %i.cg, align 8, !tbaa !138, !alias.scope !1123, !noalias !1126
  store ptr %i.cl, ptr %i.cf, align 8, !tbaa !218, !alias.scope !1126, !noalias !1123
  store i32 4, ptr %i.de, align 4, !tbaa !217, !alias.scope !1126, !noalias !1123
  store i32 0, ptr %i.df, align 8, !tbaa !216, !alias.scope !1126, !noalias !1123
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.e
  %i.dh = phi ptr [ %i.cl, %bb.f ], [ %i.cj, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.cj, %bb.e ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.dk = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !214, !alias.scope !1126, !noalias !1123
  store <2 x ptr> %i.dk, ptr %i.di, align 8, !tbaa !214, !alias.scope !1123, !noalias !1126
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !263, !alias.scope !1126, !noalias !1123
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !263, !alias.scope !1123, !noalias !1126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false), !alias.scope !1126, !noalias !1123
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.do, ptr noundef nonnull align 8 dereferenceable(12) %i.dp, i64 12, i1 false), !alias.scope !1130
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.dh, %i.cl
  br i1 %.not.i.i8.i.i.i.i, label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.dh) #23
  br label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.g, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %.not.i.i.i38 = icmp eq ptr %i.dq, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !735

_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN4Luau8Bytecode6BcInstEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !340
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.du) #25
  br label %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.h
  store ptr %i.av, ptr %0, align 8, !tbaa !194
  %i.dv = getelementptr inbounds nuw [80 x i8], ptr %i.ax, i64 %1
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !338
  %i.dw = getelementptr inbounds nuw [80 x i8], ptr %i.av, i64 %i.at
  store ptr %i.dw, ptr %i.h, align 8, !tbaa !340
  br label %bb.i

bb.i:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4Luau8Bytecode6BcInstEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !459  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !262    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !263
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4Luau8Bytecode4BcOpEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN4Luau8Bytecode4BcOpEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.y, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -4                             ; 2 uses
  %i.aa = lshr i64 %3, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.ac = sub i64 %i.e, %i.z
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ad = shl i64 %n.vec, 2                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.ah = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !16, !alias.scope !1134, !noalias !1131
  %wide.load13 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !16, !alias.scope !1134, !noalias !1131
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !1131, !noalias !1134
  store <4 x i32> %wide.load13, ptr %i.ai, align 4, !tbaa !16, !alias.scope !1131, !noalias !1134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.ak = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !16, !alias.scope !1134, !noalias !1131
  store i32 %i.ak, ptr %.012.i.i.i.i, align 4, !tbaa !16, !alias.scope !1131, !noalias !1134
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1137

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i36.i = icmp eq ptr %i.c, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.an = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #25
  br label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.e, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !262
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !459
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.aq = icmp ult i64 %1, %i.g
  br i1 %i.aq, label %bb.g, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ar
  br i1 %.not.i4, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN4Luau8Bytecode4BcOpES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4Luau8Bytecode4BcOpES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN4Luau8Bytecode4BcOpES2_EvT_S4_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN4Luau8Bytecode4BcOpEmS2_ET_S4_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SH_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1007
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %.0.copyload.i.i35 = load i32, ptr %1, align 4  ; 6 uses
  %.0.insert.ext.i.i36 = zext i32 %.0.copyload.i.i35 to i64 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !595  ; 2 uses
  %i.e = urem i64 %.0.insert.ext.i.i36, %i.d      ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !594
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !244  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %1, align 4                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.i, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !245 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %_ZNKSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb1EEEmRKT_m.exit, label %bb.c, !llvm.loop !1138

bb.e:                                             ; preds = %bb.c
  %.0.insert.ext.i.i = zext i32 %i.j to i64       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !595
  %i.p = urem i64 %.0.insert.ext.i.i, %i.o
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !245  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !246
  %i.u = icmp eq i64 %i.t, %.0.insert.ext.i.i36
  %i.v = load i32, ptr %i.r, align 8
  %i.w = icmp eq i32 %.0.copyload.i.i35, %i.v
  %i.x = select i1 %i.u, i1 %i.w, i1 false
  br i1 %i.x, label %_ZNKSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.z = icmp eq i64 %i.af, %.0.insert.ext.i.i36
  %i.aa = load i32, ptr %i.y, align 8
  %i.ab = icmp eq i32 %.0.copyload.i.i35, %i.aa
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %_ZNKSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !1139

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.q, %bb.f ]
  %i.ad = load ptr, ptr %.020.i.i, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !246 ; 2 uses
  %i.ag = urem i64 %i.af, %i.d
  %.not19.i.i = icmp eq i64 %i.ag, %i.e
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !1139

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !1139

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ah = phi i64 [ %i.p, %bb.e ], [ %i.e, %.thread34 ], [ %i.e, %..loopexit_crit_edge21.i.i ], [ %i.e, %.lr.ph.i.i ]
  %.0.insert.ext.i.i39 = phi i64 [ %.0.insert.ext.i.i, %bb.e ], [ %.0.insert.ext.i.i36, %.thread34 ], [ %.0.insert.ext.i.i36, %..loopexit_crit_edge21.i.i ], [ %.0.insert.ext.i.i36, %.lr.ph.i.i ]
  %.0.copyload.i.i38 = phi i32 [ %i.j, %bb.e ], [ %.0.copyload.i.i35, %.thread34 ], [ %.0.copyload.i.i35, %..loopexit_crit_edge21.i.i ], [ %.0.copyload.i.i35, %.lr.ph.i.i ]
  %i.ai = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 4 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !245
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %.0.copyload.i.i38, ptr %i.aj, align 8, !tbaa !16
  %i.ak = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ah, i64 noundef %.0.insert.ext.i.i39, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %_ZNKSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb1EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #25
  resume { ptr, i32 } %i.al

_ZNKSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb1EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ak, %.critedge ], [ %i.q, %bb.f ], [ %i.ad, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_8BcOpHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !697
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !595
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
end_hunk_13
begin_hunk_14_@_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE16replaceGetVarArgENS0_4BcOpES5_:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %0, align 8, !tbaa !955, !nonnull !167, !align !168 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.be = invoke i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addInstEv(ptr noundef nonnull align 8 dereferenceable(456) %i.bd)
          to label %bb.f unwind label %bb.o       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %i.bg = lshr i32 %i.be, 4
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !194, !noalias !1148
  %i.bj = getelementptr inbounds nuw [80 x i8], ptr %i.bi, i64 %i.bh
  store i32 6, ptr %i.bj, align 8, !tbaa !207, !noalias !1148
  store ptr %i.bd, ptr %5, align 8, !tbaa !146, !alias.scope !1148
  store ptr %i.bf, ptr %i.am, align 8, !tbaa !215, !alias.scope !1148
  store i32 %i.be, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !1148
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !956, !nonnull !167, !align !168
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !108
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %.015101, %i.bn
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.af, align 8, !tbaa !262
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bp
  %.sroa.02.0.copyload = load i32, ptr %i.br, align 4, !tbaa !16
  invoke void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_6BcMoveIS3_EEE7setBcOpEjNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 0, i32 %.sroa.02.0.copyload)
          to label %_ZN4Luau8Bytecode6BcMoveIP10lua_TValueE6setSrcENS0_4BcOpE.exit unwind label %bb.o

_ZN4Luau8Bytecode6BcMoveIP10lua_TValueE6setSrcENS0_4BcOpE.exit: ; preds = %bb.f
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.bt = getelementptr inbounds nuw [80 x i8], ptr %i.bs, i64 %i.e
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !218
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = lshr i32 %i.bw, 4
  %i.by = trunc i32 %i.bx to i8
  %i.bz = trunc i32 %.015101 to i8
  %i.ca = load i8, ptr %i.ah, align 8, !tbaa !581
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !956, !nonnull !167, !align !168
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !112, !range !186, !noundef !167
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = load ptr, ptr %i.ag, align 8
  %i.cg = load ptr, ptr %i.af, align 8
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = lshr exact i64 %i.cj, 2
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = select i1 %i.ce, i8 %i.cl, i8 0
  %i.cn = add i8 %i.bz, 1
  %i.co = add i8 %i.cn, %i.ca
  %i.cp = add i8 %i.co, %i.by
  %i.cq = add i8 %i.cp, %i.cm
  %i.cr = load ptr, ptr %5, align 8, !tbaa !989, !nonnull !167, !align !168 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 400 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 4 uses
  %.0.insert.ext.i.i.i.i.i = zext i32 %.0.copyload.i.i.i.i.i to i64 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 408
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !25 ; 2 uses
  %i.cv = urem i64 %.0.insert.ext.i.i.i.i.i, %i.cu ; 3 uses
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau8Bytecode6BcMoveIP10lua_TValueE6setSrcENS0_4BcOpE.exit
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !245 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !246
  %i.dd = icmp eq i64 %i.dc, %.0.insert.ext.i.i.i.i.i
  %i.de = load i32, ptr %i.da, align 8
  %i.df = icmp eq i32 %.0.copyload.i.i.i.i.i, %i.de
  %i.dg = select i1 %i.dd, i1 %i.df, i1 false
  br i1 %i.dg, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.di = icmp eq i64 %i.do, %.0.insert.ext.i.i.i.i.i
  %i.dj = load i32, ptr %i.dh, align 8
  %i.dk = icmp eq i32 %.0.copyload.i.i.i.i.i, %i.dj
  %i.dl = select i1 %i.di, i1 %i.dk, i1 false
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !248

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.dm, %bb.h ], [ %i.cz, %bb.g ]
  %i.dm = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !246 ; 2 uses
  %i.dp = urem i64 %i.do, %i.cu
  %.not19.i.i.i.i.i = icmp eq i64 %i.dp, %i.cv
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !248

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit.i.i.i, !llvm.loop !248

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i, %_ZN4Luau8Bytecode6BcMoveIP10lua_TValueE6setSrcENS0_4BcOpE.exit
  %i.dq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc unwind label %bb.o     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i.i
  store ptr null, ptr %i.dq, align 8, !tbaa !245
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 %.0.copyload.i.i.i.i.i, ptr %i.dr, align 8, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i8 0, ptr %i.ds, align 4, !tbaa !249
  %i.dt = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.cs, i64 noundef %i.cv, i64 noundef %.0.insert.ext.i.i.i.i.i, ptr noundef nonnull %i.dq, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i: ; preds = %.noexc
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 24) #25
  br label %.body

.loopexit:                                        ; preds = %bb.h, %.noexc, %bb.g
  %.pn.i.i.i = phi ptr [ %i.dt, %.noexc ], [ %i.cz, %bb.g ], [ %i.dm, %bb.h ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 12
  store i8 %i.cq, ptr %.1.i.i.i, align 1, !tbaa !16
  %i.dv = load ptr, ptr %i.am, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.dw = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.dx = lshr i32 %i.dw, 4
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !194
  %i.ea = getelementptr inbounds nuw [80 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i32 %1, ptr %i.eb, align 4, !tbaa !16
  %i.ec = load ptr, ptr %5, align 8, !tbaa !989, !nonnull !167, !align !168
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !170
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !16
  %i.ef = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %.loopexit
  %i.eg = getelementptr inbounds nuw [136 x i8], ptr %i.ee, i64 %i.aj ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 %.sroa.0.0.copyload.i, ptr %i.ei, align 4, !tbaa !16
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.eh) #23
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 48 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !188
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !188
  %.sroa.0.0.copyload.i28 = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  %i.em = load ptr, ptr %i.al, align 8, !tbaa !263
  %.not.i.i = icmp eq ptr %i.ap, %i.em
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.sroa.0.0.copyload.i28, ptr %i.ap, align 4, !tbaa !16
  %i.en = load ptr, ptr %i.ak, align 8, !tbaa !459
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  store ptr %i.eo, ptr %i.ak, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.ep = load ptr, ptr %4, align 8, !tbaa !262   ; 7 uses
  %i.eq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64               ; 3 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 4 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775804
  br i1 %i.et, label %bb.m, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
          to label %.noexc29 unwind label %.loopexit.split-lp89

.noexc29:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.eu = ashr exact i64 %i.es, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i.i, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 2305843009213693951)
  %i.ey = select i1 %i.ew, i64 2305843009213693951, i64 %i.ex ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ez = shl nuw nsw i64 %i.ey, 2
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #24
          to label %.noexc30 unwind label %.loopexit88 ; 8 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.es
  store i32 %.sroa.0.0.copyload.i28, ptr %i.fb, align 4, !tbaa !16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ep, %i.ap
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc30
  %i.fc = ptrtoaddr ptr %i.fa to i64
  %6 = sub i64 %i.eq, %i.er
  %7 = add i64 %6, -4                             ; 2 uses
  %i.fd = lshr i64 %7, 2
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 28
  %i.ff = sub i64 %i.er, %i.fc
  %diff.check = icmp ugt i64 %i.ff, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.fe, 9223372036854775800     ; 3 uses
  %i.fg = shl i64 %n.vec, 2                       ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fa, i64 %i.fg  ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ep, i64 %i.fg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fa, i64 %i.fj ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.ep, i64 %i.fj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.fk = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !16, !alias.scope !1154, !noalias !1151
  %wide.load141 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !16, !alias.scope !1154, !noalias !1151
  %i.fl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !1151, !noalias !1154
  store <4 x i32> %wide.load141, ptr %i.fl, align 4, !tbaa !16, !alias.scope !1151, !noalias !1154
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !1156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader161

.lr.ph.i.i.i.i.i.i.preheader161:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader161, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader161 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader161 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.fn = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1154, !noalias !1151
  store i32 %i.fn, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1151, !noalias !1154
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fo, %i.ap
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1157

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc30
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fa, %.noexc30 ], [ %i.fh, %middle.block ], [ %i.fp, %.lr.ph.i.i.i.i.i.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.es) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.fa, ptr %4, align 8, !tbaa !262
  store ptr %i.fq, ptr %i.ak, align 8, !tbaa !459
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ey
  store ptr %i.fr, ptr %i.al, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.k
  %i.fs = phi ptr [ %i.fq, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.eo, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit66

bb.o:                                             ; preds = %.loopexit, %.loopexit.i.i.i, %bb.f, %bb.e
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit88:                                      ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp89:                             ; preds = %bb.m
  %lpad.loopexit.split-lp91 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit88, %.loopexit.split-lp89, %bb.o, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i
  %.pn23 = phi { ptr, i32 } [ %i.du, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %i.ft, %bb.o ], [ %lpad.loopexit90, %.loopexit88 ], [ %lpad.loopexit.split-lp91, %.loopexit.split-lp89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body46

bb.p:                                             ; preds = %bb.d
  %i.fu = load ptr, ptr %0, align 8, !tbaa !955, !nonnull !167, !align !168 ; 5 uses
  %i.fv = invoke i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addInstEv(ptr noundef nonnull align 8 dereferenceable(456) %i.fu)
          to label %bb.q unwind label %bb.z       ; 8 uses

bb.q:                                             ; preds = %bb.p
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 2 uses
  %i.fx = lshr i32 %i.fv, 4
  %i.fy = zext nneg i32 %i.fx to i64              ; 2 uses
  %i.fz = load ptr, ptr %i.fw, align 8, !tbaa !194, !noalias !1158
  %i.ga = getelementptr inbounds nuw [80 x i8], ptr %i.fz, i64 %i.fy
  store i32 2, ptr %i.ga, align 8, !tbaa !207, !noalias !1158
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.gc = getelementptr inbounds nuw [80 x i8], ptr %i.gb, i64 %i.e
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !218
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = lshr i32 %i.gf, 4
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = trunc i32 %.015101 to i8
  %i.gj = load i8, ptr %i.ah, align 8, !tbaa !581
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !956, !nonnull !167, !align !168
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !112, !range !186, !noundef !167
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = load ptr, ptr %i.ag, align 8
  %i.gp = load ptr, ptr %i.af, align 8
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = lshr exact i64 %i.gs, 2
  %i.gu = trunc i64 %i.gt to i8
  %i.gv = select i1 %i.gn, i8 %i.gu, i8 0
  %i.gw = add i8 %i.gi, 1
  %i.gx = add i8 %i.gw, %i.gj
  %i.gy = add i8 %i.gx, %i.gh
  %i.gz = add i8 %i.gy, %i.gv
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fu, i64 400 ; 2 uses
  %.0.insert.ext.i.i.i.i.i34 = zext i32 %i.fv to i64 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fu, i64 408
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !25 ; 2 uses
  %i.hd = urem i64 %.0.insert.ext.i.i.i.i.i34, %i.hc ; 3 uses
  %i.he = load ptr, ptr %i.ha, align 8, !tbaa !17
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i35, label %.loopexit.i.i.i41, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !245 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !246
  %i.hl = icmp eq i64 %i.hk, %.0.insert.ext.i.i.i.i.i34
  %i.hm = load i32, ptr %i.hi, align 8
  %i.hn = icmp eq i32 %i.fv, %i.hm
  %i.ho = select i1 %i.hl, i1 %i.hn, i1 false
  br i1 %i.ho, label %.loopexit86, label %.lr.ph.i.i.i.i.i36

bb.s:                                             ; preds = %bb.t
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hq = icmp eq i64 %i.hw, %.0.insert.ext.i.i.i.i.i34
  %i.hr = load i32, ptr %i.hp, align 8
  %i.hs = icmp eq i32 %i.fv, %i.hr
  %i.ht = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %i.ht, label %.loopexit86, label %.lr.ph.i.i.i.i.i36, !llvm.loop !248

.lr.ph.i.i.i.i.i36:                               ; preds = %bb.r, %bb.s
  %.020.i.i.i.i.i37 = phi ptr [ %i.hu, %bb.s ], [ %i.hh, %bb.r ]
  %i.hu = load ptr, ptr %.020.i.i.i.i.i37, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i.i.i.i38 = icmp eq ptr %i.hu, null
  br i1 %.not18.i.i.i.i.i38, label %.loopexit.i.i.i41, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i36
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !246 ; 2 uses
  %i.hx = urem i64 %i.hw, %i.hc
  %.not19.i.i.i.i.i39 = icmp eq i64 %i.hx, %i.hd
  br i1 %.not19.i.i.i.i.i39, label %bb.s, label %..loopexit_crit_edge21.i.i.i.i.i40, !llvm.loop !248

..loopexit_crit_edge21.i.i.i.i.i40:               ; preds = %bb.t
  br label %.loopexit.i.i.i41, !llvm.loop !248

.loopexit.i.i.i41:                                ; preds = %.lr.ph.i.i.i.i.i36, %..loopexit_crit_edge21.i.i.i.i.i40, %bb.q
  %i.hy = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc45 unwind label %bb.z   ; 5 uses

.noexc45:                                         ; preds = %.loopexit.i.i.i41
  store ptr null, ptr %i.hy, align 8, !tbaa !245
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i32 %i.fv, ptr %i.hz, align 8, !tbaa !16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  store i8 0, ptr %i.ia, align 4, !tbaa !249
  %i.ib = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ha, i64 noundef %i.hd, i64 noundef %.0.insert.ext.i.i.i.i.i34, ptr noundef nonnull %i.hy, i64 noundef 1)
          to label %.loopexit86 unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i42

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i42: ; preds = %.noexc45
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef 24) #25
  br label %.body46

.loopexit86:                                      ; preds = %bb.s, %.noexc45, %bb.r
  %.pn.i.i.i43 = phi ptr [ %i.ib, %.noexc45 ], [ %i.hh, %bb.r ], [ %i.hu, %bb.s ]
  %.1.i.i.i44 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i43, i64 12
  store i8 %i.gz, ptr %.1.i.i.i44, align 1, !tbaa !16
  %i.id = load ptr, ptr %i.fw, align 8, !tbaa !194
  %i.ie = getelementptr inbounds nuw [80 x i8], ptr %i.id, i64 %i.fy
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i32 %1, ptr %i.if, align 4, !tbaa !16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !170
  %i.ii = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.u unwind label %bb.z       ; 2 uses

bb.u:                                             ; preds = %.loopexit86
  %i.ij = getelementptr inbounds nuw [136 x i8], ptr %i.ih, i64 %i.aj ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i32 %i.fv, ptr %i.il, align 4, !tbaa !16
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.ik) #23
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 48 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !188
  %i.io = add i64 %i.in, 1
  store i64 %i.io, ptr %i.im, align 8, !tbaa !188
  %i.ip = load ptr, ptr %i.al, align 8, !tbaa !263
  %.not.i.i51 = icmp eq ptr %i.ap, %i.ip
  br i1 %.not.i.i51, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.fv, ptr %i.ap, align 4, !tbaa !16
  %i.iq = load ptr, ptr %i.ak, align 8, !tbaa !459
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4 ; 2 uses
  store ptr %i.ir, ptr %i.ak, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit66

bb.w:                                             ; preds = %bb.u
  %i.is = load ptr, ptr %4, align 8, !tbaa !262   ; 7 uses
  %i.it = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.iu = ptrtoint ptr %i.is to i64               ; 3 uses
  %i.iv = sub i64 %i.it, %i.iu                    ; 4 uses
  %i.iw = icmp eq i64 %i.iv, 9223372036854775804
  br i1 %i.iw, label %bb.x, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52: ; preds = %bb.w
  %i.ix = ashr exact i64 %i.iv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i53 = call i64 @llvm.umax.i64(i64 %i.ix, i64 1)
  %i.iy = add nsw i64 %.sroa.speculated.i.i.i.i53, %i.ix ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %i.ix
  %i.ja = call i64 @llvm.umin.i64(i64 %i.iy, i64 2305843009213693951)
  %i.jb = select i1 %i.iz, i64 2305843009213693951, i64 %i.ja ; 3 uses
  %.not.i.i.i.i54 = icmp ne i64 %i.jb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i54)
  %i.jc = shl nuw nsw i64 %i.jb, 2
  %i.jd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jc) #24
          to label %.noexc65 unwind label %.loopexit87 ; 8 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.iv
  store i32 %i.fv, ptr %i.je, align 4, !tbaa !16
  %.not10.i.i.i.i.i.i55 = icmp eq ptr %i.is, %i.ap
  br i1 %.not10.i.i.i.i.i.i55, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i56.preheader

.lr.ph.i.i.i.i.i.i56.preheader:                   ; preds = %.noexc65
  %i.jf = ptrtoaddr ptr %i.jd to i64
  %8 = sub i64 %i.it, %i.iu
  %9 = add i64 %8, -4                             ; 2 uses
  %i.jg = lshr i64 %9, 2
  %i.jh = add nuw nsw i64 %i.jg, 1                ; 2 uses
  %min.iters.check146 = icmp ult i64 %9, 28
  %i.ji = sub i64 %i.iu, %i.jf
  %diff.check144 = icmp ugt i64 %i.ji, -32
  %or.cond160 = or i1 %min.iters.check146, %diff.check144
  br i1 %or.cond160, label %.lr.ph.i.i.i.i.i.i56.preheader162, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph.i.i.i.i.i.i56.preheader
  %n.vec148 = and i64 %i.jh, 9223372036854775800  ; 3 uses
  %i.jj = shl i64 %n.vec148, 2                    ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jd, i64 %i.jj  ; 2 uses
  %i.jl = getelementptr i8, ptr %i.is, i64 %i.jj
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %i.jm = shl i64 %index150, 2                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.jd, i64 %i.jm ; 2 uses
  %next.gep152 = getelementptr i8, ptr %i.is, i64 %i.jm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.jn = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load153 = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !16, !alias.scope !1164, !noalias !1161
  %wide.load154 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !16, !alias.scope !1164, !noalias !1161
  %i.jo = getelementptr i8, ptr %next.gep151, i64 16
  store <4 x i32> %wide.load153, ptr %next.gep151, align 4, !tbaa !16, !alias.scope !1161, !noalias !1164
  store <4 x i32> %wide.load154, ptr %i.jo, align 4, !tbaa !16, !alias.scope !1161, !noalias !1164
  %index.next155 = add nuw i64 %index150, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.jp, label %middle.block156, label %vector.body149, !llvm.loop !1166

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.jh, %n.vec148
  br i1 %cmp.n157, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i56.preheader162

.lr.ph.i.i.i.i.i.i56.preheader162:                ; preds = %.lr.ph.i.i.i.i.i.i56.preheader, %middle.block156
  %.012.i.i.i.i.i.i57.ph = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i.i56.preheader ], [ %i.jk, %middle.block156 ]
  %.0911.i.i.i.i.i.i58.ph = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i56.preheader ], [ %i.jl, %middle.block156 ]
  br label %.lr.ph.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i56:                             ; preds = %.lr.ph.i.i.i.i.i.i56.preheader162, %.lr.ph.i.i.i.i.i.i56
  %.012.i.i.i.i.i.i57 = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i56 ], [ %.012.i.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i.i56.preheader162 ] ; 2 uses
  %.0911.i.i.i.i.i.i58 = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i56 ], [ %.0911.i.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i.i56.preheader162 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.jq = load i32, ptr %.0911.i.i.i.i.i.i58, align 4, !tbaa !16, !alias.scope !1164, !noalias !1161
  store i32 %i.jq, ptr %.012.i.i.i.i.i.i57, align 4, !tbaa !16, !alias.scope !1161, !noalias !1164
  %i.jr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i58, i64 4 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i57, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i59 = icmp eq ptr %i.jr, %i.ap
  br i1 %.not.i.i.i.i.i.i59, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i56, !llvm.loop !1167

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i56, %middle.block156, %.noexc65
  %.0.lcssa.i.i.i.i.i.i61 = phi ptr [ %i.jd, %.noexc65 ], [ %i.jk, %middle.block156 ], [ %i.js, %.lr.ph.i.i.i.i.i.i56 ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i61, i64 4 ; 2 uses
  %.not.i23.i.i.i62 = icmp eq ptr %i.is, null
  br i1 %.not.i23.i.i.i62, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.iv) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63: ; preds = %bb.y, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i60
  store ptr %i.jd, ptr %4, align 8, !tbaa !262
  store ptr %i.jt, ptr %i.ak, align 8, !tbaa !459
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jb
  store ptr %i.ju, ptr %i.al, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit66

bb.z:                                             ; preds = %.loopexit86, %.loopexit.i.i.i41, %bb.p
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.loopexit87:                                      ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body46

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit66: ; preds = %bb.v, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit
  %i.jw = phi ptr [ %i.ir, %bb.v ], [ %i.jt, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i63 ], [ %i.fs, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backEOS2_.exit ]
  %i.jx = add nuw nsw i32 %.015101, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jx, %.0
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1168

_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpESt6vectorIS2_SaIS2_EENS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit: ; preds = %._crit_edge
  %i.jy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.aa unwind label %bb.ac     ; 0 uses

bb.aa:                                            ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpESt6vectorIS2_SaIS2_EENS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit
  %i.jz = load ptr, ptr %4, align 8, !tbaa !262   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !263
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.jz to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.ke) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.ac:                                            ; preds = %._crit_edge, %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpESt6vectorIS2_SaIS2_EENS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.body46:                                          ; preds = %.loopexit87, %.loopexit.split-lp, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i42, %bb.z, %.body, %bb.ac
  %.pn23.pn.pn = phi { ptr, i32 } [ %i.kf, %bb.ac ], [ %.pn23, %.body ], [ %i.ic, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i42 ], [ %i.jv, %bb.z ], [ %lpad.loopexit, %.loopexit87 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.kg = load ptr, ptr %4, align 8, !tbaa !262   ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit68, label %bb.ad

bb.ad:                                            ; preds = %.body46
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !263
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kg to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kl) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit68

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit68: ; preds = %.body46, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE13replaceReturnERNS0_5BcRefINS0_7BcBlockEEENS0_4BcOpES9_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 %2, i32 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Luau::Bytecode::BcReturn", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.211", align 8   ; 14 uses
  %6 = alloca %"struct.Luau::Bytecode::BcMove", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !955, !nonnull !167, !align !168
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !956, !nonnull !167, !align !168 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !146, !alias.scope !1169
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !215, !alias.scope !1169
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %3, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !1169
  %i.g = lshr i32 %3, 4
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !194
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !218
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.l, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.n = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.o = zext nneg i32 %i.n to i64
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !336
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1                    ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.u = icmp eq i32 %i.s, 0
  br i1 %i.u, label %_ZN4Luau8Bytecode8BcReturnIP10lua_TValueE6valuesEv.exit.thread, label %_ZN4Luau8Bytecode8BcReturnIP10lua_TValueE6valuesEv.exit

_ZN4Luau8Bytecode8BcReturnIP10lua_TValueE6valuesEv.exit.thread: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !1172
  br label %._crit_edge

_ZN4Luau8Bytecode8BcReturnIP10lua_TValueE6valuesEv.exit: ; preds = %bb.b
  call void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_8BcReturnIS3_EEE11sliceInputsEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.211") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !459
  %.pre108 = load ptr, ptr %5, align 8, !tbaa !262
  %i.v = icmp eq ptr %.pre, %.pre108
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau8Bytecode8BcReturnIP10lua_TValueE6valuesEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = lshr i32 %2, 4
  %i.aa = zext nneg i32 %i.z to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %i.ab = phi i64 [ 0, %.lr.ph ], [ %i.cl, %bb.j ]
end_hunk_14
begin_hunk_15_@_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !977  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !977
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !245 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !246
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !244  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !977
  store ptr %i.o, ptr %.031, align 8, !tbaa !245
  store ptr %.031, ptr %i.g, align 8, !tbaa !977
  store ptr %i.g, ptr %i.m, align 8, !tbaa !244
  %i.p = load ptr, ptr %.031, align 8, !tbaa !245
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !244
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !245
  store ptr %i.r, ptr %.031, align 8, !tbaa !245
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !244
  store ptr %.031, ptr %i.s, align 8, !tbaa !245
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1199

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !596    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !597
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #25
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !597
  store ptr %.0.i, ptr %0, align 8, !tbaa !596
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !459  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !262    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !263
  %i.i = load ptr, ptr %0, align 8, !tbaa !262    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i, !prof !477

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -4
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false), !tbaa !16
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #25
  br label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !262
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !263
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !459
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 4
  br i1 %i.y, label %bb.h, label %bb.i, !prof !572

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 4
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !16
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !16
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 4
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !572

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !16
  store i32 %i.ad, ptr %i.i, align 4, !tbaa !16
  br label %_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !262   ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !459 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !262
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !459 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = add i64 %i.ai, %i.an
  %i.ap = add i64 %i.am, %i.ah
  %2 = sub i64 %i.ao, %i.ap
  %3 = add i64 %2, -4                             ; 2 uses
  %i.aq = lshr i64 %3, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.as = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.af, i64 %i.at
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.aw ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep33, align 4, !tbaa !16
  %wide.load34 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !16
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load34, ptr %i.ay, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %i.ba = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !16
  store i32 %i.ba, ptr %.011.i.i.i.i, align 4, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1201

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !262
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !459
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<Luau::Bytecode::BcOp, std::pair<const Luau::Bytecode::BcOp, std::vector<Luau::Bytecode::BcOp>>, std::allocator<std::pair<const Luau::Bytecode::BcOp, std::vector<Luau::Bytecode::BcOp>>>, std::__detail::_Select1st, std::equal_to<Luau::Bytecode::BcOp>, Luau::Bytecode::BcOpHash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %.0.copyload.i.i = load i32, ptr %1, align 4    ; 4 uses
  %.0.insert.ext.i.i = zext i32 %.0.copyload.i.i to i64 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !597  ; 2 uses
  %i.c = urem i64 %.0.insert.ext.i.i, %i.b        ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !596
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !244  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !245  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !246
  %i.k = icmp eq i64 %i.j, %.0.insert.ext.i.i
  %i.l = load i32, ptr %i.h, align 8
  %i.m = icmp eq i32 %.0.copyload.i.i, %i.l
  %i.n = select i1 %i.k, i1 %i.m, i1 false
  br i1 %i.n, label %.loopexit28, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.p = icmp eq i64 %i.v, %.0.insert.ext.i.i
  %i.q = load i32, ptr %i.o, align 8
  %i.r = icmp eq i32 %.0.copyload.i.i, %i.q
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %.loopexit28, label %.lr.ph.i.i, !llvm.loop !1191

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.t, %bb.c ], [ %i.g, %bb.b ]
  %i.t = load ptr, ptr %.020.i.i, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !246  ; 2 uses
  %i.w = urem i64 %i.v, %i.b
  %.not19.i.i = icmp eq i64 %i.w, %i.c
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !1191

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !1191

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !1192
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 5 uses
  store ptr null, ptr %i.y, align 8, !tbaa !245
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %.0.copyload.i.i, ptr %i.z, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store ptr %i.y, ptr %i.x, align 8, !tbaa !1196
  %i.ab = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.c, i64 noundef %.0.insert.ext.i.i, ptr noundef nonnull %i.y, i64 noundef 1)
          to label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.e

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.loopexit28

bb.e:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.ac

.loopexit28:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.ab, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.g, %bb.b ], [ %i.t, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE11setReturnOpEjNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !459
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !262  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.not = icmp ugt i64 %i.i, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %1, 1
  %i.k = zext i32 %i.j to i64
  tail call void @_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !262
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.a ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.a ; 2 uses
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = and i32 %i.n, 15
  switch i32 %i.o, label %bb.e [
    i32 0, label %bb.d
    i32 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  store i32 %2, ptr %i.m, align 4, !tbaa !16
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !955, !nonnull !167, !align !168
  %i.q = tail call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addPhiEv(ptr noundef nonnull align 8 dereferenceable(456) %i.p) ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !955, !nonnull !167, !align !168 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !262
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.a
  %.sroa.011.0.copyload = load i32, ptr %i.u, align 4, !tbaa !16 ; 2 uses
  %i.v = lshr i32 %i.q, 4
  %i.w = zext nneg i32 %i.v to i64
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !332
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.x, i64 %i.w ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !216 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !217
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !218
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_5BcPhiEEENS0_4BcOpE.exit

end_hunk_15
begin_hunk_16_@_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE11setReturnOpEjNS0_4BcOpE:bb.a
bb.j:                                             ; preds = %.critedge
  %i.cg = add i32 %i.bx, 1
  %i.ch = lshr i32 %i.bx, 1
  %i.ci = add i32 %i.ch, %i.bx                    ; 2 uses
  %i.cj = icmp ugt i32 %i.ci, %i.cg
  %i.ck = add i32 %i.bx, 5
  %.09.i.i.i39 = select i1 %i.cj, i32 %i.ci, i32 %i.ck ; 2 uses
  %i.cl = zext i32 %.09.i.i.i39 to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #27 ; 6 uses
  %i.co = load ptr, ptr %i.bu, align 8, !tbaa !218 ; 7 uses
  %i.cp = load i32, ptr %i.bw, align 8, !tbaa !216 ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %.idx.i.i.i40 = shl nuw nsw i64 %i.cq, 2        ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i.i40
  %.not11.i.i.i.i.i.i.i41 = icmp eq i32 %i.cp, 0
  br i1 %.not11.i.i.i.i.i.i.i41, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.j
  %i.cs = ptrtoaddr ptr %i.co to i64
  %i.ct = ptrtoaddr ptr %i.cn to i64
  %i.cu = add nsw i64 %.idx.i.i.i40, -4           ; 2 uses
  %i.cv = lshr exact i64 %i.cu, 2
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cu, 44
  %i.cx = sub i64 %i.cs, %i.ct
  %diff.check = icmp ugt i64 %i.cx, -32
  %or.cond88 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond88, label %.lr.ph.i.i.i.i.i.i.i42.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader
  %n.vec = and i64 %i.cw, 9223372036854775800     ; 3 uses
  %i.cy = shl i64 %n.vec, 2                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cn, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.co, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cn, i64 %i.db ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.co, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !16
  %wide.load69 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !16
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load69, ptr %i.dd, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42.preheader90

.lr.ph.i.i.i.i.i.i.i42.preheader90:               ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader, %middle.block
  %.013.i.i.i.i.i.i.i43.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.cz, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i44.ph = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i42.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i42:                           ; preds = %.lr.ph.i.i.i.i.i.i.i42.preheader90, %.lr.ph.i.i.i.i.i.i.i42
  %.013.i.i.i.i.i.i.i43 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.013.i.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader90 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i44 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i42 ], [ %.sroa.08.012.i.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i.i42.preheader90 ] ; 2 uses
  %i.df = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i44, align 4, !tbaa !16
  store i32 %i.df, ptr %.013.i.i.i.i.i.i.i43, align 4, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i44, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i43, i64 4
  %.not.i.i.i.i.i.i.i45 = icmp eq ptr %i.dg, %i.cr
  br i1 %.not.i.i.i.i.i.i.i45, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i42, !llvm.loop !1205

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i.i42, %middle.block, %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.not.i.i.i47 = icmp eq ptr %i.co, %i.di
  br i1 %.not.i.i.i47, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i49, label %bb.k

bb.k:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i46
  tail call void @_ZdlPv(ptr noundef %i.co) #23
  %.pre2.pre.i.i48 = load i32, ptr %i.bw, align 8, !tbaa !216
  %.pre62 = zext i32 %.pre2.pre.i.i48 to i64
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i49

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i49: ; preds = %bb.k, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i46
  %.pre61.pre-phi = phi i64 [ %.pre62, %bb.k ], [ %i.cq, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i46 ]
  store ptr %i.cn, ptr %i.bu, align 8, !tbaa !218
  store i32 %.09.i.i.i39, ptr %i.cd, align 4, !tbaa !217
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_5BcPhiEEENS0_4BcOpE.exit51

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_5BcPhiEEENS0_4BcOpE.exit51: ; preds = %.critedge, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i49
  %.pre-phi = phi i64 [ %i.by, %.critedge ], [ %.pre61.pre-phi, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i49 ]
  %i.dj = phi ptr [ %i.bv, %.critedge ], [ %i.cn, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i49 ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.pre-phi
  store i32 %2, ptr %i.dk, align 4, !tbaa !16
  %i.dl = load i32, ptr %i.bw, align 8, !tbaa !216
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.bw, align 8, !tbaa !216
  tail call void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.bp, i32 %2, i32 %i.n)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_5BcPhiEEENS0_4BcOpE.exit51, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_5BcPhiEEENS0_4BcOpE.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_8BcReturnIS3_EEE11sliceInputsEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.211") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !216  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %i.k, %2
  br i1 %.not, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.m = sub i32 %i.k, %2
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !262
  store ptr %i.q, ptr %i.o, align 8, !tbaa !459
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i
  %.promoted20 = phi ptr [ null, %bb.a ], [ %i.q, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.a ], [ %i.r, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.s = icmp ult i32 %2, %i.k
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit
  %i.v = phi ptr [ %.promoted20, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.w = phi ptr [ %.promoted, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.x = phi ptr [ %.promoted20, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 13 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.e, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.w, ptr %i.l, align 8
  store ptr %i.x, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #24
          to label %.noexc15 unwind label %.loopexit ; 8 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = load i32, ptr %i.z, align 4, !tbaa !16
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc15
  %i.ap = ptrtoaddr ptr %i.am to i64
  %3 = sub i64 %i.ac, %i.ad
  %4 = add i64 %3, -4                             ; 2 uses
  %i.aq = lshr i64 %4, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.as = sub i64 %i.ad, %i.ap
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.x, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.aw ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.x, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.ax = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !16, !alias.scope !1209, !noalias !1206
  %wide.load69 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !16, !alias.scope !1209, !noalias !1206
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !1206, !noalias !1209
  store <4 x i32> %wide.load69, ptr %i.ay, align 4, !tbaa !16, !alias.scope !1206, !noalias !1209
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.preheader71:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.ba = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1209, !noalias !1206
  store i32 %i.ba, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1206, !noalias !1209
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1212

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %.noexc15 ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ae) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bd, ptr %i.t, align 8, !tbaa !459
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c
  %i.bf = phi ptr [ %i.bd, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ab, %bb.c ]
  %i.bg = phi ptr [ %i.am, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.x, %bb.c ] ; 2 uses
  %i.bh = phi ptr [ %i.be, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !216
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !1213

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.w, ptr %i.l, align 8
  store ptr %i.x, ptr %0, align 8
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %.lcssa21 = phi ptr [ %.promoted20, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ]
  %.lcssa17 = phi ptr [ %.promoted, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa17, ptr %i.l, align 8
  store ptr %.lcssa21, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = ptrtoint ptr %i.v to i64
  %i.bm = ptrtoint ptr %i.x to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.bn) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt11__remove_ifIPN4Luau8Bytecode11BcBlockEdgeEN9__gnu_cxx5__ops10_Iter_predIZNS1_11CallInlinerIP10lua_TValueE12inlineTargetEjEUlRS2_E_EEET_SE_SE_T0_(ptr noundef %0, ptr noundef %1, ptr %2, i32 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = and i64 %i.c, -32
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %.047.i.i = phi i64 [ %i.ai, %bb.e ], [ %i.d, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02946.i.i = phi ptr [ %i.ah, %bb.e ], [ %0, %.lr.ph.preheader.i.i ] ; 13 uses
  %i.g = load i32, ptr %.02946.i.i, align 4, !tbaa !970
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, %3
  %i.l = select i1 %i.h, i1 %i.k, i1 false
  br i1 %i.l, label %_ZSt9__find_ifIPN4Luau8Bytecode11BcBlockEdgeEN9__gnu_cxx5__ops10_Iter_predIZNS1_11CallInlinerIP10lua_TValueE12inlineTargetEjEUlRS2_E_EEET_SE_SE_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !970
  %i.o = icmp eq i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, %3
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  br i1 %i.s, label %_ZSt9__find_ifIPN4Luau8Bytecode11BcBlockEdgeEN9__gnu_cxx5__ops10_Iter_predIZNS1_11CallInlinerIP10lua_TValueE12inlineTargetEjEUlRS2_E_EEET_SE_SE_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !970
  %i.v = icmp eq i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, %3
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZSt9__find_ifIPN4Luau8Bytecode11BcBlockEdgeEN9__gnu_cxx5__ops10_Iter_predIZNS1_11CallInlinerIP10lua_TValueE12inlineTargetEjEUlRS2_E_EEET_SE_SE_T0_.exit.loopexit.split.loop.exit40, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 24
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !970
  %i.ac = icmp eq i32 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 28
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, %3
  %i.ag = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZSt9__find_ifIPN4Luau8Bytecode11BcBlockEdgeEN9__gnu_cxx5__ops10_Iter_predIZNS1_11CallInlinerIP10lua_TValueE12inlineTargetEjEUlRS2_E_EEET_SE_SE_T0_.exit.loopexit.split.loop.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 32
  %i.ai = add nsw i64 %.047.i.i, -1
  %i.aj = icmp sgt i64 %.047.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !1214

._crit_edge.loopexit.i.i:                         ; preds = %bb.e
  %.pre.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre52.i.i = sub i64 %i.a, %.pre.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.pre-phi53.i.i = phi i64 [ %.pre52.i.i, %._crit_edge.loopexit.i.i ], [ %i.c, %bb.a ]
  %.029.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.ak = ashr exact i64 %.pre-phi53.i.i, 3
  switch i64 %i.ak, label %_ZSt9__find_ifIPN4Luau8Bytecode11BcBlockEdgeEN9__gnu_cxx5__ops10_Iter_predIZNS1_11CallInlinerIP10lua_TValueE12inlineTargetEjEUlRS2_E_EEET_SE_SE_T0_.exit.thread [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.al = load i32, ptr %.029.lcssa.i.i, align 4, !tbaa !970
  %i.am = icmp eq i32 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, %3
  %i.aq = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %i.aq, label %_ZSt9__find_ifIPN4Luau8Bytecode11BcBlockEdgeEN9__gnu_cxx5__ops10_Iter_predIZNS1_11CallInlinerIP10lua_TValueE12inlineTargetEjEUlRS2_E_EEET_SE_SE_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_16
begin_hunk_17_@_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_9BcSetListIS3_EEE7getBcOpEj:bb.a
.lr.ph.i.i.i.i.i.i.preheader16:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !16
  store i32 %i.ao, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1234

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.not.i.i = icmp eq ptr %i.x, %i.ar
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.x) #23
  %.pre.pre.i = load i32, ptr %i.j, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i: ; preds = %bb.e, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  %.pre.i = phi i32 [ %i.y, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i ], [ %.pre.pre.i, %bb.e ]
  store ptr %i.w, ptr %i.i, align 8, !tbaa !218
  store i32 %.09.i.i, ptr %i.n, align 4, !tbaa !217
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, %bb.c
  %i.as = phi i32 [ %.pre.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.at = icmp ult i32 %i.as, %i.l
  br i1 %i.at, label %.lr.ph13.preheader.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit

.lr.ph13.preheader.i:                             ; preds = %bb.f
  %i.au = zext i32 %i.as to i64                   ; 4 uses
  %wide.trip.count.i = zext i32 %i.l to i64       ; 3 uses
  %i.av = sub nsw i64 %wide.trip.count.i, %i.au
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph13.i.prol.loopexit, label %.lr.ph13.i.prol

.lr.ph13.i.prol:                                  ; preds = %.lr.ph13.preheader.i, %.lr.ph13.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph13.i.prol ], [ %i.au, %.lr.ph13.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph13.i.prol ], [ 0, %.lr.ph13.preheader.i ]
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.prol
  store i32 0, ptr %i.ax, align 4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph13.i.prol.loopexit, label %.lr.ph13.i.prol, !llvm.loop !1235

.lr.ph13.i.prol.loopexit:                         ; preds = %.lr.ph13.i.prol, %.lr.ph13.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.au, %.lr.ph13.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph13.i.prol ]
  %i.ay = sub nsw i64 %i.au, %wide.trip.count.i
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph13.i ], [ %indvars.iv.i.unr, %.lr.ph13.i.prol.loopexit ] ; 5 uses
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  store i32 0, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 0, ptr %i.be, align 4
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bk, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i, !llvm.loop !911

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit: ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %bb.b, %bb.f
  store i32 %i.l, ptr %i.j, align 8, !tbaa !216
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !195
  %.pre3 = load i32, ptr %i.c, align 8
  %.pre4 = load ptr, ptr %.pre, align 8, !tbaa !194
  %.pre5 = lshr i32 %.pre3, 4
  %.pre6 = zext nneg i32 %.pre5 to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, %bb.a
  %.pre-phi7 = phi i64 [ %.pre6, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.f, %bb.a ]
  %i.bl = phi ptr [ %.pre4, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.g, %bb.a ]
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.bl, i64 %.pre-phi7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = zext i32 %1 to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !218
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %.sroa.0.0.copyload = load i32, ptr %i.bq, align 4, !tbaa !16
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_9BcSetListIS3_EEE11sliceInputsEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.211") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !216  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %i.k, %2
  br i1 %.not, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.m = sub i32 %i.k, %2
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !262
  store ptr %i.q, ptr %i.o, align 8, !tbaa !459
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i
  %.promoted20 = phi ptr [ null, %bb.a ], [ %i.q, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.a ], [ %i.r, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.s = icmp ult i32 %2, %i.k
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit
  %i.v = phi ptr [ %.promoted20, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.w = phi ptr [ %.promoted, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.x = phi ptr [ %.promoted20, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 13 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.e, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.w, ptr %i.l, align 8
  store ptr %i.x, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #24
          to label %.noexc15 unwind label %.loopexit ; 8 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = load i32, ptr %i.z, align 4, !tbaa !16
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc15
  %i.ap = ptrtoaddr ptr %i.am to i64
  %3 = sub i64 %i.ac, %i.ad
  %4 = add i64 %3, -4                             ; 2 uses
  %i.aq = lshr i64 %4, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.as = sub i64 %i.ad, %i.ap
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.x, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.aw ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.x, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.ax = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !16, !alias.scope !1239, !noalias !1236
  %wide.load69 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !16, !alias.scope !1239, !noalias !1236
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !1236, !noalias !1239
  store <4 x i32> %wide.load69, ptr %i.ay, align 4, !tbaa !16, !alias.scope !1236, !noalias !1239
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.preheader71:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.ba = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1239, !noalias !1236
  store i32 %i.ba, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1236, !noalias !1239
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1242

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %.noexc15 ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ae) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bd, ptr %i.t, align 8, !tbaa !459
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c
  %i.bf = phi ptr [ %i.bd, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ab, %bb.c ]
  %i.bg = phi ptr [ %i.am, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.x, %bb.c ] ; 2 uses
  %i.bh = phi ptr [ %i.be, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !216
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !1243

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.w, ptr %i.l, align 8
  store ptr %i.x, ptr %0, align 8
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %.lcssa21 = phi ptr [ %.promoted20, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ]
  %.lcssa17 = phi ptr [ %.promoted, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa17, ptr %i.l, align 8
  store ptr %.lcssa21, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = ptrtoint ptr %i.v to i64
  %i.bm = ptrtoint ptr %i.x to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.bn) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_8BcReturnIS3_EEE11setImmInputEji(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i32 @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_8BcReturnIS3_EEE7getBcOpEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  %i.b = and i32 %i.a, 15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i32 %1 to i64
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1244, !nonnull !167, !align !168 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !641  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !337
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %i.g, align 4
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !641
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !641
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !336
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !336  ; 4 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24 ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store i64 1, ptr %i.x, align 4
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.w, ptr %i.e, align 8, !tbaa !336
  store ptr %i.z, ptr %i.f, align 8, !tbaa !641
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !337
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addImmENS0_9BcImmKindE.exit: ; preds = %bb.c, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ab = phi ptr [ %.pre.i, %bb.c ], [ %i.w, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ac = phi ptr [ %i.k, %bb.c ], [ %i.z, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = shl i32 %i.ag, 1
  %i.ai = and i32 %i.ah, -16
end_hunk_17
begin_hunk_18_@_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_6BcCallIS3_EEE7getBcOpEj:bb.a
.lr.ph.i.i.i.i.i.i.preheader16:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !16
  store i32 %i.ao, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1252

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.not.i.i = icmp eq ptr %i.x, %i.ar
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.x) #23
  %.pre.pre.i = load i32, ptr %i.j, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i: ; preds = %bb.e, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  %.pre.i = phi i32 [ %i.y, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i ], [ %.pre.pre.i, %bb.e ]
  store ptr %i.w, ptr %i.i, align 8, !tbaa !218
  store i32 %.09.i.i, ptr %i.n, align 4, !tbaa !217
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, %bb.c
  %i.as = phi i32 [ %.pre.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.at = icmp ult i32 %i.as, %i.l
  br i1 %i.at, label %.lr.ph13.preheader.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit

.lr.ph13.preheader.i:                             ; preds = %bb.f
  %i.au = zext i32 %i.as to i64                   ; 4 uses
  %wide.trip.count.i = zext i32 %i.l to i64       ; 3 uses
  %i.av = sub nsw i64 %wide.trip.count.i, %i.au
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph13.i.prol.loopexit, label %.lr.ph13.i.prol

.lr.ph13.i.prol:                                  ; preds = %.lr.ph13.preheader.i, %.lr.ph13.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph13.i.prol ], [ %i.au, %.lr.ph13.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph13.i.prol ], [ 0, %.lr.ph13.preheader.i ]
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.prol
  store i32 0, ptr %i.ax, align 4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph13.i.prol.loopexit, label %.lr.ph13.i.prol, !llvm.loop !1253

.lr.ph13.i.prol.loopexit:                         ; preds = %.lr.ph13.i.prol, %.lr.ph13.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.au, %.lr.ph13.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph13.i.prol ]
  %i.ay = sub nsw i64 %i.au, %wide.trip.count.i
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph13.i ], [ %indvars.iv.i.unr, %.lr.ph13.i.prol.loopexit ] ; 5 uses
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  store i32 0, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 0, ptr %i.be, align 4
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bk, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i, !llvm.loop !911

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit: ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %bb.b, %bb.f
  store i32 %i.l, ptr %i.j, align 8, !tbaa !216
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !195
  %.pre3 = load i32, ptr %i.c, align 8
  %.pre4 = load ptr, ptr %.pre, align 8, !tbaa !194
  %.pre5 = lshr i32 %.pre3, 4
  %.pre6 = zext nneg i32 %.pre5 to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, %bb.a
  %.pre-phi7 = phi i64 [ %.pre6, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.f, %bb.a ]
  %i.bl = phi ptr [ %.pre4, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.g, %bb.a ]
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.bl, i64 %.pre-phi7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = zext i32 %1 to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !218
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %.sroa.0.0.copyload = load i32, ptr %i.bq, align 4, !tbaa !16
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode12BcInstHelperIP10lua_TValueNS0_6BcCallIS3_EEE11sliceInputsEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.211") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195, !nonnull !167, !align !168
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !216  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %i.k, %2
  br i1 %.not, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.m = sub i32 %i.k, %2
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !262
  store ptr %i.q, ptr %i.o, align 8, !tbaa !459
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i
  %.promoted20 = phi ptr [ null, %bb.a ], [ %i.q, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.a ], [ %i.r, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.s = icmp ult i32 %2, %i.k
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit
  %i.v = phi ptr [ %.promoted20, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.w = phi ptr [ %.promoted, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.x = phi ptr [ %.promoted20, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 13 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.e, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.w, ptr %i.l, align 8
  store ptr %i.x, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #24
          to label %.noexc15 unwind label %.loopexit ; 8 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = load i32, ptr %i.z, align 4, !tbaa !16
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc15
  %i.ap = ptrtoaddr ptr %i.am to i64
  %3 = sub i64 %i.ac, %i.ad
  %4 = add i64 %3, -4                             ; 2 uses
  %i.aq = lshr i64 %4, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.as = sub i64 %i.ad, %i.ap
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.x, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.aw ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.x, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.ax = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !16, !alias.scope !1257, !noalias !1254
  %wide.load69 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !16, !alias.scope !1257, !noalias !1254
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !1254, !noalias !1257
  store <4 x i32> %wide.load69, ptr %i.ay, align 4, !tbaa !16, !alias.scope !1254, !noalias !1257
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.preheader71:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.ba = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1257, !noalias !1254
  store i32 %i.ba, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1254, !noalias !1257
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1260

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %.noexc15 ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ae) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bd, ptr %i.t, align 8, !tbaa !459
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c
  %i.bf = phi ptr [ %i.bd, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ab, %bb.c ]
  %i.bg = phi ptr [ %i.am, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.x, %bb.c ] ; 2 uses
  %i.bh = phi ptr [ %i.be, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !216
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !1261

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.w, ptr %i.l, align 8
  store ptr %i.x, ptr %0, align 8
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %.lcssa21 = phi ptr [ %.promoted20, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ]
  %.lcssa17 = phi ptr [ %.promoted, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa17, ptr %i.l, align 8
  store ptr %.lcssa21, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = ptrtoint ptr %i.v to i64
  %i.bm = ptrtoint ptr %i.x to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.bn) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode11CallInlinerIP10lua_TValueE22replaceCallUsagesInOpsENS0_4BcOpERNS_11SmallVectorIS5_Lj4EEE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !218    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !216  ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit.thread
  %.024 = phi ptr [ %i.a, %.lr.ph ], [ %i.ay, %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit.thread ] ; 3 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !1007
  %.not.not.i.i = icmp eq i64 %i.k, 0
  %i.l = load i32, ptr %.024, align 4             ; 5 uses
  br i1 %.not.not.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.i, %bb.b ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !245 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit, label %.preheader, !llvm.loop !1262

bb.d:                                             ; preds = %bb.b
  %.0.insert.ext.i.i.i.i = zext i32 %i.l to i64   ; 3 uses
  %i.p = load i64, ptr %i.h, align 8, !tbaa !595  ; 2 uses
  %i.q = urem i64 %.0.insert.ext.i.i.i.i, %i.p    ; 2 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !594
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !245  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !246
  %i.y = icmp eq i64 %i.x, %.0.insert.ext.i.i.i.i
  %i.z = load i32, ptr %i.v, align 8
  %i.aa = icmp eq i32 %i.l, %i.z
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %i.ab, label %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ad = icmp eq i64 %i.aj, %.0.insert.ext.i.i.i.i
  %i.ae = load i32, ptr %i.ac, align 8
  %i.af = icmp eq i32 %i.l, %i.ae
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1009

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %i.u, %bb.e ]
  %i.ah = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !245 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !246 ; 2 uses
  %i.ak = urem i64 %i.aj, %i.p
  %.not19.i.i.i.i = icmp eq i64 %i.ak, %i.q
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1009

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %_ZNSt13unordered_setIN4Luau8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit.thread, !llvm.loop !1009

end_hunk_18
begin_hunk_19_@_ZN4Luau8Bytecode4SccpIP10lua_TValueE9propagateEv:bb.a
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !1271 ; 3 uses
  %i.ov = lshr i64 %i.os, 6                       ; 2 uses
  %i.ow = and i64 %i.os, 63                       ; 2 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ov
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !551 ; 2 uses
  %i.oz = lshr i64 %i.oy, %i.ow
  %i.pa = trunc i64 %i.oz to i1
  %.pre.i.i130 = load ptr, ptr %i.ng, align 8, !tbaa !1272 ; 2 uses
  br i1 %i.pa, label %.lr.ph.i.i.i137, label %.loopexit.i3.i131

.lr.ph.i.i.i137:                                  ; preds = %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127, %bb.ak
  %.08.i.i.i138 = phi i64 [ %i.pf, %bb.ak ], [ %i.os, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127 ] ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i130, i64 %.08.i.i.i138
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = icmp eq i32 %i.pc, %.sroa.054.0.copyload
  br i1 %i.pd, label %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE6insertERKS2_.exit141, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i137
  %i.pe = add i64 %.08.i.i.i138, 1
  %i.pf = and i64 %i.pe, %i.oo                    ; 4 uses
  %i.pg = lshr i64 %i.pf, 6                       ; 2 uses
  %i.ph = and i64 %i.pf, 63                       ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.pg
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !551 ; 2 uses
  %i.pk = lshr i64 %i.pj, %i.ph
  %i.pl = trunc i64 %i.pk to i1
  br i1 %i.pl, label %.lr.ph.i.i.i137, label %.loopexit.i3.i131, !llvm.loop !1274

.loopexit.i3.i131:                                ; preds = %bb.ak, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127
  %.pre-phi14.i.i132 = phi i64 [ %i.ow, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127 ], [ %i.ph, %bb.ak ]
  %i.pm = phi i64 [ %i.oy, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127 ], [ %i.pj, %bb.ak ]
  %.pre-phi.i.i133 = phi i64 [ %i.ov, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127 ], [ %i.pg, %bb.ak ]
  %.0.lcssa.i.ph.i.i134 = phi i64 [ %i.os, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127 ], [ %i.pf, %bb.ak ]
  %i.pn = shl nuw i64 1, %.pre-phi14.i.i132
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %.pre-phi.i.i133
  %i.pp = or i64 %i.pm, %i.pn
  store i64 %i.pp, ptr %i.po, align 8, !tbaa !551
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i130, i64 %.0.lcssa.i.ph.i.i134
  store i32 %.sroa.054.0.copyload, ptr %i.pq, align 4, !tbaa !16
  %i.pr = load i64, ptr %i.nh, align 8, !tbaa !1269
  %i.ps = add i64 %i.pr, 1
  store i64 %i.ps, ptr %i.nh, align 8, !tbaa !1269
  br label %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE6insertERKS2_.exit141

_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE6insertERKS2_.exit141: ; preds = %.lr.ph.i.i.i137, %.loopexit.i3.i131
  %i.pt = load i64, ptr %i.at, align 8, !tbaa !1269
  %i.pu = icmp eq i64 %i.pt, 0
  br i1 %i.pu, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE6insertERKS2_.exit141
  %i.pv = load i64, ptr %i.au, align 8, !tbaa !1270
  %i.pw = add i64 %i.pv, -1
  %i.px = mul i64 %.sroa.4.0.extract.shift, -7046029254386353131
  %i.py = load i8, ptr %i.av, align 8, !tbaa !625
  %i.pz = zext nneg i8 %i.py to i64
  %i.qa = lshr i64 %i.px, %i.pz                   ; 3 uses
  %i.qb = load ptr, ptr %i.aw, align 8, !tbaa !1271 ; 2 uses
  %i.qc = lshr i64 %i.qa, 6
  %i.qd = and i64 %i.qa, 63
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.qc
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !551
  %i.qg = lshr i64 %i.qf, %i.qd
  %i.qh = trunc i64 %i.qg to i1
  br i1 %i.qh, label %.lr.ph.i.i.i145, label %.loopexit

.lr.ph.i.i.i145:                                  ; preds = %bb.al
  %i.qi = load ptr, ptr %i.as, align 8, !tbaa !1272
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph.i.i.i145
  %.08.i.i.i146 = phi i64 [ %i.qa, %.lr.ph.i.i.i145 ], [ %i.qn, %bb.an ] ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %.08.i.i.i146
  %i.qk = load i32, ptr %i.qj, align 4
  %i.ql = icmp eq i32 %i.qk, %.sroa.4.0.extract.trunc
  br i1 %i.ql, label %_ZNK4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE8containsERKS2_.exit147, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qm = add i64 %.08.i.i.i146, 1
  %i.qn = and i64 %i.qm, %i.pw                    ; 3 uses
  %i.qo = lshr i64 %i.qn, 6
  %i.qp = and i64 %i.qn, 63
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.qo
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !551
  %i.qs = lshr i64 %i.qr, %i.qp
  %i.qt = trunc i64 %i.qs to i1
  br i1 %i.qt, label %bb.am, label %.loopexit, !llvm.loop !1274

.loopexit:                                        ; preds = %bb.an, %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE6insertERKS2_.exit141, %bb.al
  %i.qu = load i64, ptr %i.ab, align 8, !tbaa !1264 ; 10 uses
  %i.qv = load i64, ptr %i.ad, align 8, !tbaa !1265 ; 2 uses
  %i.qw = icmp eq i64 %i.qu, %i.qv
  br i1 %i.qw, label %bb.ao, label %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge

.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge: ; preds = %.loopexit
  %.pre254 = load i64, ptr %i.ai, align 8, !tbaa !1266
  %.pre255 = load ptr, ptr %i.y, align 8, !tbaa !1267
  br label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150

bb.ao:                                            ; preds = %.loopexit
  %.not.i = icmp eq i64 %i.qu, 0
  %i.qx = mul i64 %i.qu, 3
  %i.qy = lshr i64 %i.qx, 1
  %i.qz = add nuw i64 %i.qy, 1
  %i.ra = select i1 %.not.i, i64 4, i64 %i.qz     ; 5 uses
  %i.rb = icmp ugt i64 %i.ra, 4611686018427387903
  br i1 %i.rb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.rc = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt20bad_array_new_length, i64 16), ptr %i.rc, align 8, !tbaa !342
  call void @__cxa_throw(ptr nonnull %i.rc, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #26
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.rd = icmp samesign ugt i64 %i.ra, 2305843009213693951
  br i1 %i.rd, label %bb.ar, label %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i, !prof !477

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i: ; preds = %bb.aq
  %i.re = shl nuw nsw i64 %i.ra, 2
  %i.rf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.re) #24 ; 8 uses
  %i.rg = ptrtoaddr ptr %i.rf to i64              ; 2 uses
  %i.rh = load i64, ptr %i.ai, align 8, !tbaa !1266 ; 3 uses
  %i.ri = sub i64 %i.qu, %i.rh                    ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ri, i64 %i.qu) ; 6 uses
  %i.rj = sub i64 %i.qu, %.sroa.speculated.i
  %.not19.i = icmp eq i64 %.sroa.speculated.i, 0
  %.pre.pre.i = load ptr, ptr %i.y, align 8, !tbaa !1267 ; 8 uses
  %.pre.pre.i313 = ptrtoaddr ptr %.pre.pre.i to i64 ; 2 uses
  br i1 %.not19.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.i, i64 %i.rh ; 5 uses
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.idx.i
  %i.rm = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.rn = lshr exact i64 %i.rm, 2
  %i.ro = add nuw nsw i64 %i.rn, 1                ; 2 uses
  %min.iters.check320 = icmp ult i64 %i.rm, 28
  br i1 %min.iters.check320, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck317

vector.memcheck317:                               ; preds = %bb.as
  %i.rp = shl i64 %i.rh, 2
  %i.rq = add i64 %i.rp, %.pre.pre.i313
  %i.rr = sub i64 %i.rq, %i.rg
  %diff.check318 = icmp ugt i64 %i.rr, -32
  br i1 %diff.check318, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck317
  %n.vec322 = and i64 %i.ro, 9223372036854775800  ; 3 uses
  %i.rs = shl i64 %n.vec322, 2                    ; 2 uses
  %i.rt = getelementptr i8, ptr %i.rf, i64 %i.rs
  %i.ru = getelementptr i8, ptr %i.rk, i64 %i.rs
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.rv = shl i64 %index324, 2                    ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.rf, i64 %i.rv ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.rk, i64 %i.rv ; 2 uses
  %i.rw = getelementptr i8, ptr %next.gep326, i64 16
  %wide.load327 = load <4 x i32>, ptr %next.gep326, align 4, !tbaa !16
  %wide.load328 = load <4 x i32>, ptr %i.rw, align 4, !tbaa !16
  %i.rx = getelementptr i8, ptr %next.gep325, i64 16
  store <4 x i32> %wide.load327, ptr %next.gep325, align 4, !tbaa !16
  store <4 x i32> %wide.load328, ptr %i.rx, align 4, !tbaa !16
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.ry = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.ry, label %middle.block330, label %vector.body323, !llvm.loop !1284

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.ro, %n.vec322
  br i1 %cmp.n331, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck317, %bb.as, %middle.block330
  %.013.i.i.i.i.i.ph = phi ptr [ %i.rf, %vector.memcheck317 ], [ %i.rf, %bb.as ], [ %i.rt, %middle.block330 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.rk, %vector.memcheck317 ], [ %i.rk, %bb.as ], [ %i.ru, %middle.block330 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.sb, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.rz = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !16
  store i32 %i.rz, ptr %.013.i.i.i.i.i, align 4, !tbaa !16
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.sa, %i.rl
  br i1 %.not.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1285

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block330, %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i
  %.not20.not.i = icmp ugt i64 %i.qu, %i.ri
  br i1 %.not20.not.i, label %bb.at, label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit

bb.at:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i
  %.idx29.i = shl nuw nsw i64 %i.rj, 2
  %i.sc = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 %.idx29.i
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %.sroa.speculated.i ; 4 uses
  %4 = sub i64 %i.qu, %.sroa.speculated.i
  %i.se = add i64 %4, 4611686018427387903
  %5 = and i64 %i.se, 4611686018427387903         ; 2 uses
  %i.sf = add nuw nsw i64 %5, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %5, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i22.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.at
  %i.sg = shl i64 %.sroa.speculated.i, 2
  %i.sh = add i64 %i.sg, %i.rg
  %i.si = sub i64 %.pre.pre.i313, %i.sh
  %diff.check = icmp ugt i64 %i.si, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i22.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.sf, 9223372036854775800     ; 3 uses
  %i.sj = shl i64 %n.vec, 2                       ; 2 uses
  %i.sk = getelementptr i8, ptr %i.sd, i64 %i.sj
  %i.sl = getelementptr i8, ptr %.pre.pre.i, i64 %i.sj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.sm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.sd, i64 %i.sm ; 2 uses
  %next.gep314 = getelementptr i8, ptr %.pre.pre.i, i64 %i.sm ; 2 uses
  %i.sn = getelementptr i8, ptr %next.gep314, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep314, align 4, !tbaa !16
  %wide.load315 = load <4 x i32>, ptr %i.sn, align 4, !tbaa !16
  %i.so = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load315, ptr %i.so, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sp = icmp eq i64 %index.next, %n.vec
  br i1 %i.sp, label %middle.block, label %vector.body, !llvm.loop !1286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sf, %n.vec
  br i1 %cmp.n, label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit, label %.lr.ph.i.i.i.i22.i.preheader

.lr.ph.i.i.i.i22.i.preheader:                     ; preds = %vector.memcheck, %bb.at, %middle.block
  %.013.i.i.i.i23.i.ph = phi ptr [ %i.sd, %vector.memcheck ], [ %i.sd, %bb.at ], [ %i.sk, %middle.block ]
  %.sroa.08.012.i.i.i.i24.i.ph = phi ptr [ %.pre.pre.i, %vector.memcheck ], [ %.pre.pre.i, %bb.at ], [ %i.sl, %middle.block ]
  br label %.lr.ph.i.i.i.i22.i

.lr.ph.i.i.i.i22.i:                               ; preds = %.lr.ph.i.i.i.i22.i.preheader, %.lr.ph.i.i.i.i22.i
  %.013.i.i.i.i23.i = phi ptr [ %i.ss, %.lr.ph.i.i.i.i22.i ], [ %.013.i.i.i.i23.i.ph, %.lr.ph.i.i.i.i22.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i24.i = phi ptr [ %i.sr, %.lr.ph.i.i.i.i22.i ], [ %.sroa.08.012.i.i.i.i24.i.ph, %.lr.ph.i.i.i.i22.i.preheader ] ; 2 uses
  %i.sq = load i32, ptr %.sroa.08.012.i.i.i.i24.i, align 4, !tbaa !16
  store i32 %i.sq, ptr %.013.i.i.i.i23.i, align 4, !tbaa !16
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i24.i, i64 4 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i23.i, i64 4
  %.not.i.i.i.i25.i = icmp eq ptr %i.sr, %i.sc
  br i1 %.not.i.i.i.i25.i, label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit, label %.lr.ph.i.i.i.i22.i, !llvm.loop !1287

_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit: ; preds = %.lr.ph.i.i.i.i22.i, %middle.block, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i
  %i.st = shl i64 %i.qu, 2
  call void @_ZdlPvm(ptr noundef %.pre.pre.i, i64 noundef %i.st) #25
  store ptr %i.rf, ptr %i.y, align 8, !tbaa !1267
  store i64 %i.ra, ptr %i.ad, align 8, !tbaa !1265
  store i64 0, ptr %i.ai, align 8, !tbaa !1266
  %.pre.i148 = load i64, ptr %i.ab, align 8, !tbaa !1264
  br label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150

_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150: ; preds = %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit
  %i.su = phi ptr [ %i.rf, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit ], [ %.pre255, %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge ]
  %i.sv = phi i64 [ 0, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit ], [ %.pre254, %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge ]
  %i.sw = phi i64 [ %i.ra, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit ], [ %i.qv, %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge ]
  %i.sx = phi i64 [ %.pre.i148, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit ], [ %i.qu, %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge ]
  %i.sy = add i64 %i.sv, %i.sx
  %i.sz = urem i64 %i.sy, %i.sw
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %i.sz
  store i32 %.sroa.4.0.extract.trunc, ptr %i.ta, align 4, !tbaa !16
  %i.tb = load i64, ptr %i.ab, align 8, !tbaa !1264
  %i.tc = add i64 %i.tb, 1
  store i64 %i.tc, ptr %i.ab, align 8, !tbaa !1264
  br label %_ZNK4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE8containsERKS2_.exit147

_ZNK4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE8containsERKS2_.exit147: ; preds = %bb.aa, %bb.am, %bb.y, %_ZN4Luau13DenseHashMap2IjNS_13DenseHashSet2INS_8Bytecode4BcOpENS2_8BcOpHashESt8equal_toIS3_EEESt4hashIjES5_IjEEixERKj.exit, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150, %bb.q
  %i.td = getelementptr inbounds nuw i8, ptr %.067221, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.td, %i.eq
  br i1 %.not, label %._crit_edge224, label %bb.q

_ZNK4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE8containsERKS2_.exit: ; preds = %bb.f, %.lr.ph.i.i.i84, %.loopexit.i3.i
  %i.te = load i64, ptr %i.ab, align 8, !tbaa !1264 ; 2 uses
  %i.tf = icmp eq i64 %i.te, 0
  br i1 %i.tf, label %.preheader, label %.lr.ph225

bb.au:                                            ; preds = %.lr.ph226, %bb.ay
  %i.tg = phi i64 [ %i.bk, %.lr.ph226 ], [ %i.tt, %bb.ay ]
  %i.th = load ptr, ptr %i.bd, align 8, !tbaa !1267
  %i.ti = load i64, ptr %i.be, align 8, !tbaa !1266 ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.ti
  %.sroa.011.0.copyload = load i32, ptr %i.tj, align 4, !tbaa !16 ; 3 uses
  %i.tk = add i64 %i.ti, 1                        ; 2 uses
  store i64 %i.tk, ptr %i.be, align 8, !tbaa !1266
  %i.tl = add i64 %i.tg, -1
  store i64 %i.tl, ptr %i.ar, align 8, !tbaa !1264
  %i.tm = load i64, ptr %i.bf, align 8, !tbaa !1265
  %i.tn = icmp eq i64 %i.tk, %i.tm
  br i1 %i.tn, label %bb.av, label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151

bb.av:                                            ; preds = %bb.au
  store i64 0, ptr %i.be, align 8, !tbaa !1266
  br label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151

_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151: ; preds = %bb.au, %bb.av
  %i.to = and i32 %.sroa.011.0.copyload, 15
  switch i32 %i.to, label %bb.ay [
    i32 2, label %bb.aw
    i32 4, label %bb.ax
  ]

bb.aw:                                            ; preds = %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151
  %i.tp = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  call void @_ZN4Luau8Bytecode4SccpIP10lua_TValueE9visitInstENS0_5BcRefINS0_6BcInstEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nonnull %i.tq, i32 %.sroa.011.0.copyload)
  br label %bb.ay

bb.ax:                                            ; preds = %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151
  %i.tr = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 104
  call void @_ZN4Luau8Bytecode4SccpIP10lua_TValueE8visitPhiENS0_5BcRefINS0_5BcPhiEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nonnull %i.ts, i32 %.sroa.011.0.copyload)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151, %bb.ax, %bb.aw
  %i.tt = load i64, ptr %i.ar, align 8, !tbaa !1264 ; 2 uses
  %i.tu = icmp eq i64 %i.tt, 0
  br i1 %i.tu, label %.thread-pre-split_crit_edge, label %bb.au, !llvm.loop !1288

bb.az:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode4SccpIP10lua_TValueED2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1267
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1265
  %i.e = shl i64 %i.d, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.e) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE7destroyEv.exit.i.i

_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE7destroyEv.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #23
  store ptr null, ptr %i.f, align 8, !tbaa !1272
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1271
  tail call void @_ZdlPv(ptr noundef %i.j) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  tail call void @_ZdlPv(ptr noundef null) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.k, align 8, !tbaa !1270
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 64, ptr %i.l, align 8, !tbaa !625
  br label %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit

_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit: ; preds = %bb.a, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE7destroyEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1271
  tail call void @_ZdlPv(ptr noundef %i.n) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1267
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1265
  %i.s = shl i64 %i.r, 2
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1282
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZN4Luau13DenseHashMap2IjNS_13DenseHashSet2INS_8Bytecode4BcOpENS2_8BcOpHashESt8equal_toIS3_EEESt4hashIjES5_IjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit
  invoke void @_ZN4Luau6detail15DenseHashTable2IjSt4pairIjNS_13DenseHashSet2INS_8Bytecode4BcOpENS4_8BcOpHashESt8equal_toIS5_EEEES2_IKjS9_ENS0_17ItemInterfaceMap2IjS9_EESt4hashIjES7_IjEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %_ZN4Luau13DenseHashMap2IjNS_13DenseHashSet2INS_8Bytecode4BcOpENS2_8BcOpHashESt8equal_toIS3_EEESt4hashIjES5_IjEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZN4Luau13DenseHashMap2IjNS_13DenseHashSet2INS_8Bytecode4BcOpENS2_8BcOpHashESt8equal_toIS3_EEESt4hashIjES5_IjEED2Ev.exit: ; preds = %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1281
  tail call void @_ZdlPv(ptr noundef %i.y) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1289 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN4Luau8Bytecode9SccpStateD2Ev.exit, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE7destroyEv.exit.i.i.i

_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE7destroyEv.exit.i.i.i: ; preds = %_ZN4Luau13DenseHashMap2IjNS_13DenseHashSet2INS_8Bytecode4BcOpENS2_8BcOpHashESt8equal_toIS3_EEESt4hashIjES5_IjEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #23
  store ptr null, ptr %i.z, align 8, !tbaa !1289
end_hunk_19
begin_hunk_20_@_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE4growEv:bb.a
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18.0, i64 %i.aj
  %i.am = load i64, ptr %i.al, align 8, !tbaa !551 ; 2 uses
  %i.an = lshr i64 %i.am, %i.ak
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i17, label %.loopexit

.lr.ph.i17:                                       ; preds = %bb.e, %bb.f
  %.08.i = phi i64 [ %i.at, %bb.f ], [ %i.ai, %bb.e ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.08.i
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp eq i32 %i.aq, %.0.copyload.i.i.i
  br i1 %i.ar, label %.lr.ph.i17..loopexit.loopexit_crit_edge, label %bb.f

.lr.ph.i17..loopexit.loopexit_crit_edge:          ; preds = %.lr.ph.i17
  %.pre56 = lshr i64 %.08.i, 6
  %.pre57 = and i64 %.08.i, 63
  br label %.loopexit.loopexit

bb.f:                                             ; preds = %.lr.ph.i17
  %i.as = add i64 %.08.i, 1
  %i.at = and i64 %i.as, %i.ad                    ; 4 uses
  %i.au = lshr i64 %i.at, 6                       ; 2 uses
  %i.av = and i64 %i.at, 63                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18.0, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !551
  %i.ay = lshr i64 %i.ax, %i.av
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %.lr.ph.i17, label %.loopexit.loopexit, !llvm.loop !1274

.loopexit.loopexit:                               ; preds = %bb.f, %.lr.ph.i17..loopexit.loopexit_crit_edge
  %.pre54.pre-phi = phi i64 [ %.pre57, %.lr.ph.i17..loopexit.loopexit_crit_edge ], [ %i.av, %bb.f ]
  %.pre52.pre-phi = phi i64 [ %.pre56, %.lr.ph.i17..loopexit.loopexit_crit_edge ], [ %i.au, %bb.f ] ; 2 uses
  %.0.lcssa.i.ph = phi i64 [ %.08.i, %.lr.ph.i17..loopexit.loopexit_crit_edge ], [ %i.at, %bb.f ]
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18.0, i64 %.pre52.pre-phi
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !551
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %.pre-phi55 = phi i64 [ %.pre54.pre-phi, %.loopexit.loopexit ], [ %i.ak, %bb.e ]
  %i.ba = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.am, %bb.e ]
  %.pre-phi = phi i64 [ %.pre52.pre-phi, %.loopexit.loopexit ], [ %i.aj, %bb.e ]
  %.0.lcssa.i = phi i64 [ %.0.lcssa.i.ph, %.loopexit.loopexit ], [ %i.ai, %bb.e ]
  %i.bb = shl nuw i64 1, %.pre-phi55
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18.0, i64 %.pre-phi
  %i.bd = or i64 %i.ba, %i.bb
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !551
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.0.lcssa.i
  %i.bf = load i32, ptr %i.ag, align 4, !tbaa !16
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !16
  %i.bg = add i64 %.sroa.14.034, -1
  %i.bh = and i64 %i.bg, %.sroa.14.034            ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i18.preheader, label %._crit_edge.i

.lr.ph.i18.preheader:                             ; preds = %.loopexit
  %i.bj = add i64 %.sroa.722.035, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.bj) ; 2 uses
  %i.bk = add i64 %.sroa.722.035, 1               ; 2 uses
  %.not.i1993 = icmp ult i64 %i.bk, %i.s
  br i1 %.not.i1993, label %.lr.ph94, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE6BitSet8iteratorppEv.exit

.lr.ph.i18:                                       ; preds = %.lr.ph94
  %i.bl = add i64 %i.bm, 1                        ; 2 uses
  %.not.i19 = icmp ult i64 %i.bl, %i.s
  br i1 %.not.i19, label %.lr.ph94, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE6BitSet8iteratorppEv.exit, !llvm.loop !1360

.lr.ph94:                                         ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18
  %i.bm = phi i64 [ %i.bl, %.lr.ph.i18 ], [ %i.bk, %.lr.ph.i18.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !551 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i18, label %._crit_edge.i, !llvm.loop !1360

._crit_edge.i:                                    ; preds = %.lr.ph94, %.loopexit
  %.sroa.14.2 = phi i64 [ %i.bh, %.loopexit ], [ %i.bo, %.lr.ph94 ] ; 2 uses
  %.sroa.722.2 = phi i64 [ %.sroa.722.035, %.loopexit ], [ %i.bm, %.lr.ph94 ] ; 2 uses
  %i.bq = shl i64 %.sroa.722.2, 6
  %i.br = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.14.2, i1 true)
  %i.bs = or disjoint i64 %i.bq, %i.br
  br label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE6BitSet8iteratorppEv.exit

_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE6BitSet8iteratorppEv.exit: ; preds = %.lr.ph.i18, %.lr.ph.i18.preheader, %._crit_edge.i
  %.sroa.19.2 = phi i64 [ %i.bs, %._crit_edge.i ], [ %.sroa.19.033, %.lr.ph.i18.preheader ], [ %.sroa.19.033, %.lr.ph.i18 ]
  %.sroa.14.4 = phi i64 [ %.sroa.14.2, %._crit_edge.i ], [ 0, %.lr.ph.i18.preheader ], [ 0, %.lr.ph.i18 ] ; 2 uses
  %.sroa.722.3 = phi i64 [ %.sroa.722.2, %._crit_edge.i ], [ %umax, %.lr.ph.i18.preheader ], [ %umax, %.lr.ph.i18 ] ; 2 uses
  %.not.i14 = icmp ne i64 %.sroa.722.3, %i.s
  %i.bt = icmp ne i64 %.sroa.14.4, 0
  %i.bu = or i1 %i.bt, %.not.i14
  br i1 %i.bu, label %bb.e, label %._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1265 ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  %i.c = mul i64 %i.b, 3
  %i.d = lshr i64 %i.c, 1
  %i.e = add nuw i64 %i.d, 1
  %i.f = select i1 %.not, i64 4, i64 %i.e         ; 4 uses
  %i.g = icmp ugt i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt20bad_array_new_length, i64 16), ptr %i.h, align 8, !tbaa !342
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit, !prof !477

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit: ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.f, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 7 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1266 ; 3 uses
  %i.p = sub i64 %i.b, %i.o                       ; 2 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !551  ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q) ; 6 uses
  %i.r = sub i64 %i.q, %.sroa.speculated
  %.not19 = icmp eq i64 %.sroa.speculated, 0
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !1267 ; 8 uses
  %.pre.pre30 = ptrtoaddr ptr %.pre.pre to i64    ; 2 uses
  br i1 %.not19, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %i.o ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.u = add nsw i64 %.idx, -4                    ; 2 uses
  %i.v = lshr exact i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e
  %i.x = shl i64 %i.o, 2
  %i.y = add i64 %i.x, %.pre.pre30
  %i.z = sub i64 %i.y, %i.l
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ad ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep31, align 4, !tbaa !16
  %wide.load32 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !16
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load32, ptr %i.af, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %bb.e, %middle.block
  %.013.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %bb.e ], [ %i.ab, %middle.block ]
  %.sroa.08.012.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %bb.e ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.013.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.ah = load i32, ptr %.sroa.08.012.i.i.i.i, align 4, !tbaa !16
  store i32 %i.ah, ptr %.013.i.i.i.i, align 4, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1362

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit
  %.not20.not = icmp ugt i64 %i.q, %i.p
  br i1 %.not20.not, label %bb.f, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit27

bb.f:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit
  %.idx29 = shl nuw nsw i64 %i.r, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.idx29
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.speculated ; 4 uses
  %1 = sub i64 %i.q, %.sroa.speculated
  %i.am = add i64 %1, 4611686018427387903
  %2 = and i64 %i.am, 4611686018427387903         ; 2 uses
  %i.an = add nuw nsw i64 %2, 1                   ; 2 uses
  %min.iters.check37 = icmp samesign ult i64 %2, 19
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i22.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %bb.f
  %i.ao = shl i64 %.sroa.speculated, 2
  %i.ap = add i64 %i.ao, %i.l
  %i.aq = sub i64 %.pre.pre30, %i.ap
  %diff.check35 = icmp ugt i64 %i.aq, -32
  br i1 %diff.check35, label %.lr.ph.i.i.i.i22.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %vector.memcheck34
  %n.vec39 = and i64 %i.an, 9223372036854775800   ; 3 uses
  %i.ar = shl i64 %n.vec39, 2                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.at = getelementptr i8, ptr %.pre.pre, i64 %i.ar
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph38
  %index41 = phi i64 [ 0, %vector.ph38 ], [ %index.next46, %vector.body40 ] ; 2 uses
  %i.au = shl i64 %index41, 2                     ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %next.gep43 = getelementptr i8, ptr %.pre.pre, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load44 = load <4 x i32>, ptr %next.gep43, align 4, !tbaa !16
  %wide.load45 = load <4 x i32>, ptr %i.av, align 4, !tbaa !16
  %i.aw = getelementptr i8, ptr %next.gep42, i64 16
  store <4 x i32> %wide.load44, ptr %next.gep42, align 4, !tbaa !16
  store <4 x i32> %wide.load45, ptr %i.aw, align 4, !tbaa !16
  %index.next46 = add nuw i64 %index41, 8         ; 2 uses
  %i.ax = icmp eq i64 %index.next46, %n.vec39
  br i1 %i.ax, label %middle.block47, label %vector.body40, !llvm.loop !1363

middle.block47:                                   ; preds = %vector.body40
  %cmp.n48 = icmp eq i64 %i.an, %n.vec39
  br i1 %cmp.n48, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit27, label %.lr.ph.i.i.i.i22.preheader

.lr.ph.i.i.i.i22.preheader:                       ; preds = %vector.memcheck34, %bb.f, %middle.block47
  %.013.i.i.i.i23.ph = phi ptr [ %i.al, %vector.memcheck34 ], [ %i.al, %bb.f ], [ %i.as, %middle.block47 ]
  %.sroa.08.012.i.i.i.i24.ph = phi ptr [ %.pre.pre, %vector.memcheck34 ], [ %.pre.pre, %bb.f ], [ %i.at, %middle.block47 ]
  br label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %.lr.ph.i.i.i.i22.preheader, %.lr.ph.i.i.i.i22
  %.013.i.i.i.i23 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i22 ], [ %.013.i.i.i.i23.ph, %.lr.ph.i.i.i.i22.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i24 = phi ptr [ %i.az, %.lr.ph.i.i.i.i22 ], [ %.sroa.08.012.i.i.i.i24.ph, %.lr.ph.i.i.i.i22.preheader ] ; 2 uses
  %i.ay = load i32, ptr %.sroa.08.012.i.i.i.i24, align 4, !tbaa !16
  store i32 %i.ay, ptr %.013.i.i.i.i23, align 4, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i24, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i23, i64 4
  %.not.i.i.i.i25 = icmp eq ptr %i.az, %i.ak
  br i1 %.not.i.i.i.i25, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit27, label %.lr.ph.i.i.i.i22, !llvm.loop !1364

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit27: ; preds = %.lr.ph.i.i.i.i22, %middle.block47, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit
  %i.bb = shl i64 %i.b, 2
  tail call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.bb) #25
  store ptr %i.k, ptr %0, align 8, !tbaa !1267
  store i64 %i.f, ptr %i.a, align 8, !tbaa !1265
  store i64 0, ptr %i.n, align 8, !tbaa !1266
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(24) ptr @_ZN4Luau13DenseHashMap2INS_8Bytecode4BcOpENS1_16ConstnessLatticeENS1_8BcOpHashESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1365 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1291 ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.d, -1
  %.0.copyload.i.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %.0.insert.ext.i.i.i.i.i = zext i32 %.0.copyload.i.i.i.i.i to i64
  %i.i = mul i64 %.0.insert.ext.i.i.i.i.i, -7046029254386353131
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !621
  %i.l = zext nneg i8 %i.k to i64
  %i.m = lshr i64 %i.i, %i.l                      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1290 ; 2 uses
  %i.p = lshr i64 %i.m, 6
  %i.q = and i64 %i.m, 63
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !551
  %i.t = lshr i64 %i.s, %i.q
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !1289
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw [28 x i8], ptr %i.v, i64 %.08.i.i.i
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, %.0.copyload.i.i.i.i.i
  br i1 %i.y, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %.08.i.i.i, 1
  %i.aa = and i64 %i.z, %i.h                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = and i64 %i.aa, 63
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ab
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !551
  %i.af = lshr i64 %i.ae, %i.ac
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.d, label %.loopexit.i, !llvm.loop !1366

.loopexit.i:                                      ; preds = %bb.e, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE4growEv(ptr noundef nonnull align 8 dereferenceable(51) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !1291
  br label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit: ; preds = %bb.d, %bb.a, %.loopexit.i
  %i.ah = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.d ]
  %i.ai = add i64 %i.ah, -1
  %.0.copyload.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %.0.insert.ext.i.i.i.i = zext i32 %.0.copyload.i.i.i.i to i64
  %i.aj = mul i64 %.0.insert.ext.i.i.i.i, -7046029254386353131
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !621
  %i.am = zext nneg i8 %i.al to i64
  %i.an = lshr i64 %i.aj, %i.am                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1290 ; 3 uses
  %i.aq = lshr i64 %i.an, 6                       ; 2 uses
  %i.ar = and i64 %i.an, 63                       ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !551 ; 2 uses
  %i.au = lshr i64 %i.at, %i.ar
  %i.av = trunc i64 %i.au to i1
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1289 ; 3 uses
  br i1 %i.av, label %.lr.ph.i.i, label %.loopexit.i3

.lr.ph.i.i:                                       ; preds = %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit, %bb.f
  %.08.i.i = phi i64 [ %i.ba, %bb.f ], [ %i.an, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [28 x i8], ptr %.pre.i, i64 %.08.i.i
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, %.0.copyload.i.i.i.i
  br i1 %i.ay, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE13insert_unsafeERS7_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.az = add i64 %.08.i.i, 1
  %i.ba = and i64 %i.az, %i.ai                    ; 4 uses
  %i.bb = lshr i64 %i.ba, 6                       ; 2 uses
  %i.bc = and i64 %i.ba, 63                       ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bb
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !551 ; 2 uses
  %i.bf = lshr i64 %i.be, %i.bc
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %.lr.ph.i.i, label %.loopexit.i3, !llvm.loop !1366

.loopexit.i3:                                     ; preds = %bb.f, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit
  %.pre-phi14.i = phi i64 [ %i.ar, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit ], [ %i.bc, %bb.f ]
  %i.bh = phi i64 [ %i.at, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit ], [ %i.be, %bb.f ]
  %.pre-phi.i = phi i64 [ %i.aq, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit ], [ %i.bb, %bb.f ]
  %.0.lcssa.i.ph.i = phi i64 [ %i.an, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit ], [ %i.ba, %bb.f ] ; 2 uses
  %i.bi = shl nuw i64 1, %.pre-phi14.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.pre-phi.i
  %i.bk = or i64 %i.bh, %i.bi
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !551
  %i.bl = getelementptr inbounds nuw [28 x i8], ptr %.pre.i, i64 %.0.lcssa.i.ph.i ; 2 uses
  %i.bm = load i32, ptr %1, align 4, !tbaa !16
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !1365
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !1365
  %.pre13.i = load ptr, ptr %0, align 8, !tbaa !1289
  br label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE13insert_unsafeERS7_.exit

_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph.i.i, %.loopexit.i3
  %i.bq = phi ptr [ %.pre13.i, %.loopexit.i3 ], [ %.pre.i, %.lr.ph.i.i ]
  %.0.lcssa.i10.i = phi i64 [ %.0.lcssa.i.ph.i, %.loopexit.i3 ], [ %.08.i.i, %.lr.ph.i.i ]
  %i.br = getelementptr inbounds nuw [28 x i8], ptr %i.bq, i64 %.0.lcssa.i10.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  ret ptr %i.bs
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE4growEv(ptr noundef nonnull align 8 dereferenceable(51) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN4Luau8Bytecode4SccpIP10lua_TValueE8arithToKEv:bb.a
  store ptr %i.fd, ptr %i.el, align 8, !tbaa !336
  store ptr %i.fg, ptr %i.em, align 8, !tbaa !641
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.fh, ptr %i.eo, align 8, !tbaa !337
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i98, %bb.ai
  %i.fi = phi ptr [ %.pre.i92, %bb.ai ], [ %i.fd, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i98 ]
  %i.fj = phi ptr [ %i.er, %bb.ai ], [ %i.fg, %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i98 ]
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = shl i32 %i.fn, 1
  %i.fp = and i32 %i.fo, -16
  %i.fq = add i32 %i.fp, -15
  store i32 %i.fq, ptr %8, align 4
  invoke void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6setOpsENS0_4BcOpENS0_5BcRefINS0_6BcInstEEESt16initializer_listIS5_E(ptr noundef nonnull align 8 dereferenceable(456) %i.ek, i32 %.sroa.029.0.copyload, ptr nonnull %i.ap, i32 %.sroa.046.0.copyload, ptr nonnull %8, i64 1)
          to label %bb.ao unwind label %.loopexit266

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.be

.loopexit266:                                     ; preds = %bb.an, %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i93
  %lpad.loopexit268 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp267:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp267, %.loopexit266
  %lpad.phi270 = phi { ptr, i32 } [ %lpad.loopexit268, %.loopexit266 ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp267 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bk

bb.aq:                                            ; preds = %bb.t
  %i.fr = fcmp oeq double %i.cw, 1.000000e+00
  %i.fs = load ptr, ptr %i.ap, align 8, !tbaa !194
  %i.ft = getelementptr inbounds nuw [80 x i8], ptr %i.fs, i64 %i.ar ; 3 uses
  br i1 %i.fr, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !207
  switch i32 %i.fu, label %bb.be [
    i32 35, label %bb.as
    i32 38, label %bb.as
    i32 36, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar, %bb.ar
  store i32 6, ptr %i.ft, align 8, !tbaa !207
  %i.fv = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168
  %.sroa.023.0.copyload = load i32, ptr %i.an, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 %.sroa.0152.0, ptr %9, align 4, !tbaa !16
  invoke void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6setOpsENS0_4BcOpENS0_5BcRefINS0_6BcInstEEESt16initializer_listIS5_E(ptr noundef nonnull align 8 dereferenceable(456) %i.fv, i32 %.sroa.023.0.copyload, ptr nonnull %i.ap, i32 %.sroa.046.0.copyload, ptr nonnull %9, i64 1)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.be

bb.au:                                            ; preds = %bb.as
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bk

bb.av:                                            ; preds = %bb.aq
  store i32 %.sroa.0157.0, ptr %i.ft, align 8, !tbaa !207
  %i.fx = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168 ; 2 uses
  %.sroa.011.0.copyload = load i32, ptr %i.an, align 4, !tbaa !16 ; 2 uses
  br i1 %.070, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i32 %.sroa.0152.0, ptr %10, align 4, !tbaa !16
  %i.fy = load i8, ptr %i.m, align 4, !tbaa !1310, !range !186, !noundef !167
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit103, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt27__throw_bad_optional_accessv() #26
          to label %.noexc102 unwind label %.loopexit.split-lp257

.noexc102:                                        ; preds = %bb.ax
  unreachable

_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit103: ; preds = %bb.aw
  %i.ga = load i32, ptr %i.r, align 4, !tbaa !16
  store i32 %i.ga, ptr %i.s, align 4, !tbaa !16
  invoke void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6setOpsENS0_4BcOpENS0_5BcRefINS0_6BcInstEEESt16initializer_listIS5_E(ptr noundef nonnull align 8 dereferenceable(456) %i.fx, i32 %.sroa.011.0.copyload, ptr nonnull %i.ap, i32 %.sroa.046.0.copyload, ptr nonnull %10, i64 2)
          to label %bb.ay unwind label %.loopexit256

bb.ay:                                            ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.be

.loopexit256:                                     ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit103
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp257:                            ; preds = %bb.ax
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp257, %.loopexit256
  %lpad.phi260 = phi { ptr, i32 } [ %lpad.loopexit258, %.loopexit256 ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp257 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bk

bb.ba:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.gb = load i8, ptr %i.m, align 4, !tbaa !1310, !range !186, !noundef !167
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit105, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt27__throw_bad_optional_accessv() #26
          to label %.noexc104 unwind label %.loopexit.split-lp262

.noexc104:                                        ; preds = %bb.bb
  unreachable

_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit105: ; preds = %bb.ba
  %i.gd = load i32, ptr %i.r, align 4, !tbaa !16
  store i32 %i.gd, ptr %11, align 4, !tbaa !16
  store i32 %.sroa.0152.0, ptr %i.t, align 4, !tbaa !16
  invoke void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6setOpsENS0_4BcOpENS0_5BcRefINS0_6BcInstEEESt16initializer_listIS5_E(ptr noundef nonnull align 8 dereferenceable(456) %i.fx, i32 %.sroa.011.0.copyload, ptr nonnull %i.ap, i32 %.sroa.046.0.copyload, ptr nonnull %11, i64 2)
          to label %bb.bc unwind label %.loopexit261

bb.bc:                                            ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit105
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.be

.loopexit261:                                     ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit105
  %lpad.loopexit263 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp262:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp262, %.loopexit261
  %lpad.phi265 = phi { ptr, i32 } [ %lpad.loopexit263, %.loopexit261 ], [ %lpad.loopexit.split-lp264, %.loopexit.split-lp262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bk

bb.be:                                            ; preds = %bb.ar, %bb.u, %bb.at, %bb.bc, %bb.ay, %bb.w, %bb.ao, %bb.af
  %.not.i = icmp eq ptr %.sroa.11.0345, %.sroa.18.0344
  br i1 %.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 %i.cp, ptr %.sroa.11.0345, align 4, !tbaa !16
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.11.0345, i64 4
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.bg:                                            ; preds = %bb.be
  %i.gf = ptrtoint ptr %.sroa.11.0345 to i64      ; 2 uses
  %i.gg = ptrtoint ptr %.sroa.0221.0346 to i64    ; 3 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 4 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775804
  br i1 %i.gi, label %bb.bh, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
          to label %.noexc106 unwind label %.loopexit.split-lp

.noexc106:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bg
  %i.gj = ashr exact i64 %i.gh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i, %i.gj ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gj
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 2305843009213693951)
  %i.gn = select i1 %i.gl, i64 2305843009213693951, i64 %i.gm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.go = shl nuw nsw i64 %i.gn, 2
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #24
          to label %.noexc107 unwind label %.loopexit ; 8 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh
  store i32 %i.cp, ptr %i.gq, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0221.0346, %.sroa.11.0345
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc107
  %i.gr = ptrtoaddr ptr %i.gp to i64
  %12 = sub i64 %i.gf, %i.gg
  %13 = add i64 %12, -4                           ; 2 uses
  %i.gs = lshr i64 %13, 2
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 28
  %i.gu = sub i64 %i.gg, %i.gr
  %diff.check = icmp ugt i64 %i.gu, -32
  %or.cond561 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond561, label %.lr.ph.i.i.i.i.i.preheader562, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.gt, 9223372036854775800     ; 3 uses
  %i.gv = shl i64 %n.vec, 2                       ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gp, i64 %i.gv  ; 2 uses
  %i.gx = getelementptr i8, ptr %.sroa.0221.0346, i64 %i.gv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gy = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gp, i64 %i.gy ; 2 uses
  %next.gep558 = getelementptr i8, ptr %.sroa.0221.0346, i64 %i.gy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  %i.gz = getelementptr i8, ptr %next.gep558, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep558, align 4, !tbaa !16, !alias.scope !1385, !noalias !1382
  %wide.load559 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !16, !alias.scope !1385, !noalias !1382
  %i.ha = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !1382, !noalias !1385
  store <4 x i32> %wide.load559, ptr %i.ha, align 4, !tbaa !16, !alias.scope !1382, !noalias !1385
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !1387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gt, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader562

.lr.ph.i.i.i.i.i.preheader562:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gw, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0221.0346, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader562, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader562 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader562 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  %i.hc = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1385, !noalias !1382
  store i32 %i.hc, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1382, !noalias !1385
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hd, %.sroa.11.0345
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1388

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc107
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gp, %.noexc107 ], [ %i.gw, %middle.block ], [ %i.he, %.lr.ph.i.i.i.i.i ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %.sroa.0221.0346, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0221.0346, i64 noundef %i.gh) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bi, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gn
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.n, %bb.bf, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %_ZZN4Luau8Bytecode4SccpIP10lua_TValueE8arithToKEvENKUlRKNS0_16ConstnessLatticeEE_clES7_.exit86
  %.sroa.18.1 = phi ptr [ %.sroa.18.0344, %bb.bf ], [ %.sroa.18.0344, %_ZZN4Luau8Bytecode4SccpIP10lua_TValueE8arithToKEvENKUlRKNS0_16ConstnessLatticeEE_clES7_.exit86 ], [ %i.hg, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.18.0344, %bb.n ]
  %.sroa.11.1 = phi ptr [ %i.ge, %bb.bf ], [ %.sroa.11.0345, %_ZZN4Luau8Bytecode4SccpIP10lua_TValueE8arithToKEvENKUlRKNS0_16ConstnessLatticeEE_clES7_.exit86 ], [ %i.hf, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.11.0345, %bb.n ]
  %.sroa.0221.1 = phi ptr [ %.sroa.0221.0346, %bb.bf ], [ %.sroa.0221.0346, %_ZZN4Luau8Bytecode4SccpIP10lua_TValueE8arithToKEvENKUlRKNS0_16ConstnessLatticeEE_clES7_.exit86 ], [ %i.gp, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0221.0346, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph, %bb.e, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit
  %.sroa.18.2 = phi ptr [ %.sroa.18.1, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.18.0344, %bb.e ], [ %.sroa.18.0344, %.lr.ph ] ; 3 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.11.0345, %bb.e ], [ %.sroa.11.0345, %.lr.ph ] ; 3 uses
  %.sroa.0221.2 = phi ptr [ %.sroa.0221.1, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.0221.0346, %bb.e ], [ %.sroa.0221.0346, %.lr.ph ] ; 5 uses
  %.sroa.0218.0 = load ptr, ptr %.sroa.0218.0347, align 8, !tbaa !468 ; 2 uses
  %.not253 = icmp eq ptr %.sroa.0218.0, %i.ag
  br i1 %.not253, label %.preheader, label %.lr.ph, !llvm.loop !1389

bb.bk:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.ag, %bb.ap, %bb.au, %bb.az, %bb.bd, %bb.m
  %.sroa.18.0344376 = phi ptr [ %.sroa.18.0344, %bb.m ], [ %.sroa.18.0344, %bb.az ], [ %.sroa.18.0344, %bb.x ], [ %.sroa.18.0344, %bb.ag ], [ %.sroa.18.0344, %bb.ap ], [ %.sroa.18.0344, %bb.au ], [ %.sroa.18.0344, %bb.bd ], [ %.sroa.18.0344.lcssa361, %.loopexit ], [ %.sroa.18.0344377, %.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.m ], [ %lpad.phi260, %bb.az ], [ %i.dc, %bb.x ], [ %lpad.phi275, %bb.ag ], [ %lpad.phi270, %bb.ap ], [ %i.fw, %bb.au ], [ %lpad.phi265, %bb.bd ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.l
  %.sroa.18.0344375 = phi ptr [ %.sroa.18.0344376, %bb.bk ], [ %.sroa.18.0344, %bb.l ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bk ], [ %i.bw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bu

._crit_edge:                                      ; preds = %_ZN4Luau8Bytecode4SccpIP10lua_TValueE17eraseDeadProducerENS0_4BcOpE.exit, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit, %.preheader
  %.sroa.0221.0.lcssa436 = phi ptr [ %.sroa.11.3, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %.sroa.0221.2, %.preheader ], [ %.sroa.0221.2, %_ZN4Luau8Bytecode4SccpIP10lua_TValueE17eraseDeadProducerENS0_4BcOpE.exit ] ; 3 uses
  %.sroa.18.0.lcssa435 = phi ptr [ %.sroa.18.4, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %.sroa.18.2, %.preheader ], [ %.sroa.18.2, %_ZN4Luau8Bytecode4SccpIP10lua_TValueE17eraseDeadProducerENS0_4BcOpE.exit ]
  %.not.i.i.i108 = icmp eq ptr %.sroa.0221.0.lcssa436, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge
  %i.hh = ptrtoint ptr %.sroa.18.0.lcssa435 to i64
  %i.hi = ptrtoint ptr %.sroa.0221.0.lcssa436 to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0221.0.lcssa436, i64 noundef %i.hj) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

.lr.ph352:                                        ; preds = %.preheader, %_ZN4Luau8Bytecode4SccpIP10lua_TValueE17eraseDeadProducerENS0_4BcOpE.exit
  %.sroa.0115.0351 = phi ptr [ %i.iw, %_ZN4Luau8Bytecode4SccpIP10lua_TValueE17eraseDeadProducerENS0_4BcOpE.exit ], [ %.sroa.0221.2, %.preheader ] ; 2 uses
  %.sroa.06.0.copyload = load i32, ptr %.sroa.0115.0351, align 4, !tbaa !16 ; 4 uses
  %i.hk = and i32 %.sroa.06.0.copyload, 15
  %.not.i109 = icmp eq i32 %i.hk, 2
  br i1 %.not.i109, label %bb.bn, label %_ZN4Luau8Bytecode4SccpIP10lua_TValueE17eraseDeadProducerENS0_4BcOpE.exit

bb.bn:                                            ; preds = %.lr.ph352
  %i.hl = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hn = lshr i32 %.sroa.06.0.copyload, 4
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !194
  %i.hq = getelementptr inbounds nuw [80 x i8], ptr %i.hp, i64 %i.ho ; 4 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !207
  switch i32 %i.hr, label %_ZN4Luau8Bytecode4SccpIP10lua_TValueE17eraseDeadProducerENS0_4BcOpE.exit [
    i32 5, label %bb.bo
    i32 66, label %bb.bo
    i32 4, label %bb.bo
    i32 3, label %bb.bo
    i32 2, label %bb.bo
    i32 9, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !214
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !214
  %i.hw = icmp eq ptr %i.ht, %i.hv
  br i1 %i.hw, label %bb.bp, label %_ZN4Luau8Bytecode4SccpIP10lua_TValueE17eraseDeadProducerENS0_4BcOpE.exit

bb.bp:                                            ; preds = %bb.bo
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.hx, align 4, !tbaa !16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.hz = lshr i32 %.sroa.04.0.copyload.i.i, 4
  %i.ia = zext nneg i32 %i.hz to i64              ; 2 uses
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !170 ; 3 uses
  %i.ic = getelementptr inbounds nuw [136 x i8], ptr %i.ib, i64 %i.ia ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32 ; 6 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !468 ; 3 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.ie, %i.id
  br i1 %.not5.i.i.i.i.i.i, label %_ZSt9__find_ifISt14_List_iteratorIN4Luau8Bytecode4BcOpEEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bp, %bb.bq
  %.sroa.03.06.i.i.i.i.i.i = phi ptr [ %i.ii, %bb.bq ], [ %i.ie, %bb.bp ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i, i64 16
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = icmp eq i32 %i.ig, %.sroa.06.0.copyload
  br i1 %i.ih, label %_ZSt9__find_ifISt14_List_iteratorIN4Luau8Bytecode4BcOpEEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ii = load ptr, ptr %.sroa.03.06.i.i.i.i.i.i, align 8, !tbaa !468 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ii, %i.id
  br i1 %.not.i.i.i.i.i.i, label %_ZSt9__find_ifISt14_List_iteratorIN4Luau8Bytecode4BcOpEEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1390

_ZSt9__find_ifISt14_List_iteratorIN4Luau8Bytecode4BcOpEEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.i: ; preds = %bb.bq, %.lr.ph.i.i.i.i.i.i, %bb.bp
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ie, %bb.bp ], [ %i.ii, %bb.bq ], [ %.sroa.03.06.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %i.ij = icmp eq ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, %i.id
  br i1 %i.ij, label %_ZSt6removeISt14_List_iteratorIN4Luau8Bytecode4BcOpEES3_ET_S5_S5_RKT0_.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZSt9__find_ifISt14_List_iteratorIN4Luau8Bytecode4BcOpEEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.i
  %.sroa.07.016.i.i.i.i = load ptr, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !468 ; 2 uses
  %.not17.i.i.i.i = icmp eq ptr %.sroa.07.016.i.i.i.i, %i.id
  br i1 %.not17.i.i.i.i, label %_ZSt6removeISt14_List_iteratorIN4Luau8Bytecode4BcOpEES3_ET_S5_S5_RKT0_.exit.i.i, label %.lr.ph.i.i.i.i110

.lr.ph.i.i.i.i110:                                ; preds = %.preheader.i.i.i.i, %bb.bs
  %.sroa.07.019.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i, %bb.bs ], [ %.sroa.07.016.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.013.018.i.i.i.i = phi ptr [ %.sroa.013.1.i.i.i.i, %bb.bs ], [ %.sroa.03.0.lcssa.i.i.i.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i.i.i, i64 16
  %i.il = load i32, ptr %i.ik, align 4            ; 2 uses
  %i.im = icmp eq i32 %i.il, %.sroa.06.0.copyload
  br i1 %i.im, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i.i.i110
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.013.018.i.i.i.i, i64 16
  store i32 %i.il, ptr %i.in, align 4, !tbaa !16
  %i.io = load ptr, ptr %.sroa.013.018.i.i.i.i, align 8, !tbaa !468
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph.i.i.i.i110
  %.sroa.013.1.i.i.i.i = phi ptr [ %.sroa.013.018.i.i.i.i, %.lr.ph.i.i.i.i110 ], [ %i.io, %bb.br ] ; 2 uses
  %.sroa.07.0.i.i.i.i = load ptr, ptr %.sroa.07.019.i.i.i.i, align 8, !tbaa !468 ; 2 uses
  %.not.i.i.i.i111 = icmp eq ptr %.sroa.07.0.i.i.i.i, %i.id
  br i1 %.not.i.i.i.i111, label %_ZSt6removeISt14_List_iteratorIN4Luau8Bytecode4BcOpEES3_ET_S5_S5_RKT0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i110, !llvm.loop !1391

_ZSt6removeISt14_List_iteratorIN4Luau8Bytecode4BcOpEES3_ET_S5_S5_RKT0_.exit.loopexit.i.i: ; preds = %bb.bs
  %.pre.i.i = load ptr, ptr %i.hy, align 8, !tbaa !170
end_hunk_21
begin_hunk_22_@_ZN4Luau8Bytecode4SccpIP10lua_TValueE12simplifyPhisEv:bb.a
  br i1 %.not.i43, label %_ZN4Luau8Bytecode4SccpIP10lua_TValueE14replaceOperandENS0_5BcRefINS0_6BcInstEEENS0_4BcOpES8_.exit, label %.lr.ph.i, !llvm.loop !1400

bb.n:                                             ; preds = %bb.j
  %i.du = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 104
  %i.dw = lshr i32 %i.ce, 4
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !332
  %i.dz = getelementptr inbounds nuw [56 x i8], ptr %i.dy, i64 %i.dx ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !218 ; 11 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !216 ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %.idx.i46 = shl nuw nsw i64 %i.ed, 2            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx.i46
  %.not9.i47 = icmp eq i32 %i.ec, 0
  br i1 %.not9.i47, label %_ZN4Luau8Bytecode4SccpIP10lua_TValueE14replaceOperandENS0_5BcRefINS0_6BcInstEEENS0_4BcOpES8_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.n
  %i.ef = add nsw i64 %.idx.i46, -4               ; 2 uses
  %i.eg = lshr exact i64 %i.ef, 2
  %i.eh = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.ef, 28
  br i1 %min.iters.check182, label %.lr.ph.i48.preheader221, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.i48.preheader
  %n.vec184 = and i64 %i.eh, 9223372036854775800  ; 3 uses
  %i.ei = shl i64 %n.vec184, 2
  %i.ej = getelementptr i8, ptr %i.ea, i64 %i.ei
  br label %vector.body187

vector.body187:                                   ; preds = %pred.store.continue214, %vector.ph183
  %index188 = phi i64 [ 0, %vector.ph183 ], [ %index.next215, %pred.store.continue214 ] ; 2 uses
  %i.ek = shl i64 %index188, 2                    ; 8 uses
  %next.gep189 = getelementptr i8, ptr %i.ea, i64 %i.ek ; 3 uses
  %i.el = getelementptr i8, ptr %i.ea, i64 %i.ek
  %next.gep190 = getelementptr i8, ptr %i.el, i64 4
  %i.em = getelementptr i8, ptr %i.ea, i64 %i.ek
  %next.gep191 = getelementptr i8, ptr %i.em, i64 8
  %i.en = getelementptr i8, ptr %i.ea, i64 %i.ek
  %next.gep192 = getelementptr i8, ptr %i.en, i64 12
  %i.eo = getelementptr i8, ptr %i.ea, i64 %i.ek
  %next.gep193 = getelementptr i8, ptr %i.eo, i64 16
  %i.ep = getelementptr i8, ptr %i.ea, i64 %i.ek
  %next.gep194 = getelementptr i8, ptr %i.ep, i64 20
  %i.eq = getelementptr i8, ptr %i.ea, i64 %i.ek
  %next.gep195 = getelementptr i8, ptr %i.eq, i64 24
  %i.er = getelementptr i8, ptr %i.ea, i64 %i.ek
  %next.gep196 = getelementptr i8, ptr %i.er, i64 28
  %i.es = getelementptr i8, ptr %next.gep189, i64 16
  %wide.load197 = load <4 x i32>, ptr %next.gep189, align 4
  %wide.load198 = load <4 x i32>, ptr %i.es, align 4
  %i.et = icmp eq <4 x i32> %wide.load197, %broadcast.splat186 ; 4 uses
  %i.eu = icmp eq <4 x i32> %wide.load198, %broadcast.splat186 ; 4 uses
  %i.ev = extractelement <4 x i1> %i.et, i64 0
  br i1 %i.ev, label %pred.store.if199, label %pred.store.continue200

pred.store.if199:                                 ; preds = %vector.body187
  store i32 %i.ay, ptr %next.gep189, align 4, !tbaa !16
  br label %pred.store.continue200

pred.store.continue200:                           ; preds = %pred.store.if199, %vector.body187
  %i.ew = extractelement <4 x i1> %i.et, i64 1
  br i1 %i.ew, label %pred.store.if201, label %pred.store.continue202

pred.store.if201:                                 ; preds = %pred.store.continue200
  store i32 %i.ay, ptr %next.gep190, align 4, !tbaa !16
  br label %pred.store.continue202

pred.store.continue202:                           ; preds = %pred.store.if201, %pred.store.continue200
  %i.ex = extractelement <4 x i1> %i.et, i64 2
  br i1 %i.ex, label %pred.store.if203, label %pred.store.continue204

pred.store.if203:                                 ; preds = %pred.store.continue202
  store i32 %i.ay, ptr %next.gep191, align 4, !tbaa !16
  br label %pred.store.continue204

pred.store.continue204:                           ; preds = %pred.store.if203, %pred.store.continue202
  %i.ey = extractelement <4 x i1> %i.et, i64 3
  br i1 %i.ey, label %pred.store.if205, label %pred.store.continue206

pred.store.if205:                                 ; preds = %pred.store.continue204
  store i32 %i.ay, ptr %next.gep192, align 4, !tbaa !16
  br label %pred.store.continue206

pred.store.continue206:                           ; preds = %pred.store.if205, %pred.store.continue204
  %i.ez = extractelement <4 x i1> %i.eu, i64 0
  br i1 %i.ez, label %pred.store.if207, label %pred.store.continue208

pred.store.if207:                                 ; preds = %pred.store.continue206
  store i32 %i.ay, ptr %next.gep193, align 4, !tbaa !16
  br label %pred.store.continue208

pred.store.continue208:                           ; preds = %pred.store.if207, %pred.store.continue206
  %i.fa = extractelement <4 x i1> %i.eu, i64 1
  br i1 %i.fa, label %pred.store.if209, label %pred.store.continue210

pred.store.if209:                                 ; preds = %pred.store.continue208
  store i32 %i.ay, ptr %next.gep194, align 4, !tbaa !16
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue208
  %i.fb = extractelement <4 x i1> %i.eu, i64 2
  br i1 %i.fb, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  store i32 %i.ay, ptr %next.gep195, align 4, !tbaa !16
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.fc = extractelement <4 x i1> %i.eu, i64 3
  br i1 %i.fc, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  store i32 %i.ay, ptr %next.gep196, align 4, !tbaa !16
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %index.next215 = add nuw i64 %index188, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next215, %n.vec184
  br i1 %i.fd, label %middle.block216, label %vector.body187, !llvm.loop !1401

middle.block216:                                  ; preds = %pred.store.continue214
  %cmp.n217 = icmp eq i64 %i.eh, %n.vec184
  br i1 %cmp.n217, label %_ZN4Luau8Bytecode4SccpIP10lua_TValueE14replaceOperandENS0_5BcRefINS0_6BcInstEEENS0_4BcOpES8_.exit, label %.lr.ph.i48.preheader221

.lr.ph.i48.preheader221:                          ; preds = %.lr.ph.i48.preheader, %middle.block216
  %.010.i49.ph = phi ptr [ %i.ea, %.lr.ph.i48.preheader ], [ %i.ej, %middle.block216 ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader221, %bb.p
  %.010.i49 = phi ptr [ %i.fg, %bb.p ], [ %.010.i49.ph, %.lr.ph.i48.preheader221 ] ; 3 uses
  %i.fe = load i32, ptr %.010.i49, align 4
  %i.ff = icmp eq i32 %i.fe, %i.am
  br i1 %i.ff, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i48
  store i32 %i.ay, ptr %.010.i49, align 4, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i48
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i49, i64 4 ; 2 uses
  %.not.i50 = icmp eq ptr %i.fg, %i.ee
  br i1 %.not.i50, label %_ZN4Luau8Bytecode4SccpIP10lua_TValueE14replaceOperandENS0_5BcRefINS0_6BcInstEEENS0_4BcOpES8_.exit, label %.lr.ph.i48, !llvm.loop !1402

_ZN4Luau8Bytecode4SccpIP10lua_TValueE14replaceOperandENS0_5BcRefINS0_6BcInstEEENS0_4BcOpES8_.exit: ; preds = %bb.p, %bb.m, %middle.block216, %middle.block178, %bb.n, %bb.k, %bb.j
  %i.fh = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw [80 x i8], ptr %i.fj, i64 %i.br
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 104
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw [56 x i8], ptr %i.fn, i64 %i.br
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %.0.i51 = select i1 %i.bp, ptr %i.fl, ptr %i.fp ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i51, i64 8 ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !459 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i51, i64 16 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !263
  %.not.i52 = icmp eq ptr %i.fr, %i.ft
  br i1 %.not.i52, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4Luau8Bytecode4SccpIP10lua_TValueE14replaceOperandENS0_5BcRefINS0_6BcInstEEENS0_4BcOpES8_.exit
  store i32 %i.ce, ptr %i.fr, align 4, !tbaa !16
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !459
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store ptr %i.fv, ptr %i.fq, align 8, !tbaa !459
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.r:                                             ; preds = %_ZN4Luau8Bytecode4SccpIP10lua_TValueE14replaceOperandENS0_5BcRefINS0_6BcInstEEENS0_4BcOpES8_.exit
  %i.fw = load ptr, ptr %.0.i51, align 8, !tbaa !262 ; 7 uses
  %i.fx = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fy = ptrtoint ptr %i.fw to i64               ; 3 uses
  %i.fz = sub i64 %i.fx, %i.fy                    ; 4 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775804
  br i1 %i.ga, label %bb.s, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.gb = ashr exact i64 %i.fz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 1)
  %i.gc = add nsw i64 %.sroa.speculated.i.i.i, %i.gb ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.gb
  %i.ge = tail call i64 @llvm.umin.i64(i64 %i.gc, i64 2305843009213693951)
  %i.gf = select i1 %i.gd, i64 2305843009213693951, i64 %i.ge ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gg = shl nuw nsw i64 %i.gf, 2
  %i.gh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #24 ; 8 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fz
  store i32 %i.ce, ptr %i.gi, align 4, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.fw, %i.fr
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.gj = ptrtoaddr ptr %i.gh to i64
  %1 = sub i64 %i.fx, %i.fy
  %2 = add i64 %1, -4                             ; 2 uses
  %i.gk = lshr i64 %2, 2
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 28
  %i.gm = sub i64 %i.fy, %i.gj
  %diff.check = icmp ugt i64 %i.gm, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.gl, 9223372036854775800     ; 3 uses
  %i.gn = shl i64 %n.vec, 2                       ; 2 uses
  %i.go = getelementptr i8, ptr %i.gh, i64 %i.gn  ; 2 uses
  %i.gp = getelementptr i8, ptr %i.fw, i64 %i.gn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gh, i64 %i.gq ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.fw, i64 %i.gq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.gr = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep144, align 4, !tbaa !16, !alias.scope !1406, !noalias !1403
  %wide.load145 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !16, !alias.scope !1406, !noalias !1403
  %i.gs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !1403, !noalias !1406
  store <4 x i32> %wide.load145, ptr %i.gs, align 4, !tbaa !16, !alias.scope !1403, !noalias !1406
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !1408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader219

.lr.ph.i.i.i.i.i.preheader219:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.preheader ], [ %i.go, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader219, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader219 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader219 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.gu = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1406, !noalias !1403
  store i32 %i.gu, ptr %.012.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !1403, !noalias !1406
  %i.gv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gv, %i.fr
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1409

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gh, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.go, %middle.block ], [ %i.gw, %.lr.ph.i.i.i.i.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.fz) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.gh, ptr %.0.i51, align 8, !tbaa !262
  store ptr %i.gx, ptr %i.fq, align 8, !tbaa !459
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gf
  store ptr %i.gy, ptr %i.fs, align 8, !tbaa !263
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.q, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.056.0102, i64 4 ; 2 uses
  %.not95 = icmp eq ptr %i.gz, %i.bn
  br i1 %.not95, label %._crit_edge.loopexit, label %bb.j

bb.u:                                             ; preds = %bb.i, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE5clearEv.exit, %bb.f
  %i.ha = phi ptr [ %i.ak, %bb.f ], [ %i.ak, %bb.i ], [ %.pre116, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE5clearEv.exit ] ; 2 uses
  %.sroa.076.2 = phi ptr [ %i.aw, %bb.f ], [ %i.bd, %bb.i ], [ %i.ca, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE5clearEv.exit ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [136 x i8], ptr %i.ha, i64 %i.t
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.not94 = icmp eq ptr %.sroa.076.2, %i.hc
  br i1 %.not94, label %._crit_edge108.loopexit, label %.lr.ph107
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode4SccpIP10lua_TValueE15updateBlockUsesEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::DenseHashSet2.482", align 8 ; 19 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  store i8 64, ptr %i.f, align 8, !tbaa !1410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.g = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.021.0.copyload = load i32, ptr %i.h, align 8, !tbaa !16
  %i.i = lshr i32 %.sroa.021.0.copyload, 4
  store i32 %i.i, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %.sroa.016.0.copyload = load i32, ptr %i.j, align 4, !tbaa !16
  %i.k = lshr i32 %.sroa.016.0.copyload, 4
  store i32 %i.k, ptr %i.b, align 4, !tbaa !138
  %i.l = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE6insertERKj(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %.thread80  ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.m = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE6insertERKj(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i unwind label %.thread80 ; 0 uses

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.b
  %i.n = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24
          to label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit unwind label %.thread80 ; 3 uses

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.o = load i32, ptr %i.a, align 4, !tbaa !138
  store i32 %i.o, ptr %i.n, align 4, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  br label %bb.c

.loopexit87:                                      ; preds = %_ZNK4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE8containsERKj.exit, %bb.c
  %.sroa.21.1.lcssa = phi ptr [ %.sroa.21.0113, %bb.c ], [ %.sroa.21.2, %_ZNK4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE8containsERKj.exit ] ; 3 uses
  %.sroa.11.1.lcssa = phi ptr [ %i.t, %bb.c ], [ %.sroa.11.2, %_ZNK4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE8containsERKj.exit ] ; 3 uses
  %.sroa.061.1.lcssa = phi ptr [ %.sroa.061.0115, %bb.c ], [ %.sroa.061.2, %_ZNK4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE8containsERKj.exit ] ; 4 uses
  %i.s = icmp eq ptr %.sroa.061.1.lcssa, %.sroa.11.1.lcssa
  br i1 %i.s, label %bb.o, label %bb.c, !llvm.loop !1413

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %.loopexit87
  %.sroa.061.0115 = phi ptr [ %i.n, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.061.1.lcssa, %.loopexit87 ] ; 2 uses
  %.sroa.11.0114 = phi ptr [ %i.p, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.11.1.lcssa, %.loopexit87 ]
  %.sroa.21.0113 = phi ptr [ %i.p, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.21.1.lcssa, %.loopexit87 ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.11.0114, i64 -4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !138
  %i.v = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = zext i32 %i.u to i64
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !170
  %i.z = getelementptr inbounds nuw [136 x i8], ptr %i.y, i64 %i.x ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !176 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %.not104 = icmp eq i32 %i.ad, 0
  br i1 %.not104, label %.loopexit87, label %.lr.ph

.thread80:                                        ; preds = %bb.a, %bb.b, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit49

.lr.ph:                                           ; preds = %bb.c, %_ZNK4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE8containsERKj.exit
  %.024110 = phi ptr [ %i.dy, %_ZNK4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE8containsERKj.exit ], [ %i.ab, %bb.c ] ; 2 uses
  %.sroa.061.1109 = phi ptr [ %.sroa.061.2, %_ZNK4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE8containsERKj.exit ], [ %.sroa.061.0115, %bb.c ] ; 7 uses
  %.sroa.11.1106 = phi ptr [ %.sroa.11.2, %_ZNK4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE8containsERKj.exit ], [ %i.t, %bb.c ] ; 7 uses
  %.sroa.21.1105 = phi ptr [ %.sroa.21.2, %_ZNK4Luau13DenseHashSet2IjSt4hashIjESt8equal_toIjEE8containsERKj.exit ], [ %.sroa.21.0113, %bb.c ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.024110, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.ai = lshr i32 %.sroa.0.0.copyload, 4         ; 8 uses
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !1414 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = load i64, ptr %i.e, align 8, !tbaa !1415 ; 8 uses
  br i1 %i.ak, label %.thread76, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.am = add i64 %i.al, -1                       ; 2 uses
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = mul i64 %i.an, -7046029254386353131
  %i.ap = load i8, ptr %i.f, align 8, !tbaa !1410
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = lshr i64 %i.ao, %i.aq                   ; 4 uses
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !1416 ; 3 uses
  %i.at = lshr i64 %i.ar, 6
  %i.au = and i64 %i.ar, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !551
  %i.ax = lshr i64 %i.aw, %i.au
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %.lr.ph.i.i.i, label %.thread

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.az = load ptr, ptr %1, align 8, !tbaa !1417
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ %i.be, %bb.f ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.08.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !138
  %i.bc = icmp eq i32 %i.bb, %i.ai
end_hunk_22
