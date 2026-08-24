Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/JitInliner?download=true
inline.NumInlined: 5848
inline.NumDeleted: 2548
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12rebuildGraphEPKjjRSt6vectorIjSaIjEESA_:bb.a
  %i.aog = zext i32 %i.aof to i64
  %.idx.i.i.i701 = shl nuw nsw i64 %i.aog, 2      ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %.idx.i.i.i701
  %.not11.i.i.i.i.i.i.i702 = icmp eq i32 %i.aof, 0
  br i1 %.not11.i.i.i.i.i.i.i702, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i707, label %.lr.ph.i.i.i.i.i.i.i703.preheader

.lr.ph.i.i.i.i.i.i.i703.preheader:                ; preds = %.noexc
  %i.aoi = ptrtoaddr ptr %i.aoe to i64
  %i.aoj = ptrtoaddr ptr %i.aod to i64
  %i.aok = add nsw i64 %.idx.i.i.i701, -4         ; 2 uses
  %i.aol = lshr exact i64 %i.aok, 2
  %i.aom = add nuw nsw i64 %i.aol, 1              ; 2 uses
  %min.iters.check1730 = icmp ult i64 %i.aok, 28
  %i.aon = sub i64 %i.aoi, %i.aoj
  %diff.check1728 = icmp ugt i64 %i.aon, -32
  %or.cond1961 = select i1 %min.iters.check1730, i1 true, i1 %diff.check1728
  br i1 %or.cond1961, label %.lr.ph.i.i.i.i.i.i.i703.preheader1984, label %vector.ph1731

vector.ph1731:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i703.preheader
  %n.vec1732 = and i64 %i.aom, 9223372036854775800 ; 3 uses
  %i.aoo = shl i64 %n.vec1732, 2                  ; 2 uses
  %i.aop = getelementptr i8, ptr %i.aod, i64 %i.aoo
  %i.aoq = getelementptr i8, ptr %i.aoe, i64 %i.aoo
  br label %vector.body1733

vector.body1733:                                  ; preds = %vector.body1733, %vector.ph1731
  %index1734 = phi i64 [ 0, %vector.ph1731 ], [ %index.next1739, %vector.body1733 ] ; 2 uses
  %i.aor = shl i64 %index1734, 2                  ; 2 uses
  %next.gep1735 = getelementptr i8, ptr %i.aod, i64 %i.aor ; 2 uses
  %next.gep1736 = getelementptr i8, ptr %i.aoe, i64 %i.aor ; 2 uses
  %i.aos = getelementptr i8, ptr %next.gep1736, i64 16
  %wide.load1737 = load <4 x i32>, ptr %next.gep1736, align 4, !tbaa !16
  %wide.load1738 = load <4 x i32>, ptr %i.aos, align 4, !tbaa !16
  %i.aot = getelementptr i8, ptr %next.gep1735, i64 16
  store <4 x i32> %wide.load1737, ptr %next.gep1735, align 4, !tbaa !16
  store <4 x i32> %wide.load1738, ptr %i.aot, align 4, !tbaa !16
  %index.next1739 = add nuw i64 %index1734, 8     ; 2 uses
  %i.aou = icmp eq i64 %index.next1739, %n.vec1732
  br i1 %i.aou, label %middle.block1740, label %vector.body1733, !llvm.loop !264

middle.block1740:                                 ; preds = %vector.body1733
  %cmp.n1741 = icmp eq i64 %i.aom, %n.vec1732
  br i1 %cmp.n1741, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i707, label %.lr.ph.i.i.i.i.i.i.i703.preheader1984

.lr.ph.i.i.i.i.i.i.i703.preheader1984:            ; preds = %.lr.ph.i.i.i.i.i.i.i703.preheader, %middle.block1740
  %.013.i.i.i.i.i.i.i704.ph = phi ptr [ %i.aod, %.lr.ph.i.i.i.i.i.i.i703.preheader ], [ %i.aop, %middle.block1740 ]
  %.sroa.08.012.i.i.i.i.i.i.i705.ph = phi ptr [ %i.aoe, %.lr.ph.i.i.i.i.i.i.i703.preheader ], [ %i.aoq, %middle.block1740 ]
  br label %.lr.ph.i.i.i.i.i.i.i703

.lr.ph.i.i.i.i.i.i.i703:                          ; preds = %.lr.ph.i.i.i.i.i.i.i703.preheader1984, %.lr.ph.i.i.i.i.i.i.i703
  %.013.i.i.i.i.i.i.i704 = phi ptr [ %i.aox, %.lr.ph.i.i.i.i.i.i.i703 ], [ %.013.i.i.i.i.i.i.i704.ph, %.lr.ph.i.i.i.i.i.i.i703.preheader1984 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i705 = phi ptr [ %i.aow, %.lr.ph.i.i.i.i.i.i.i703 ], [ %.sroa.08.012.i.i.i.i.i.i.i705.ph, %.lr.ph.i.i.i.i.i.i.i703.preheader1984 ] ; 2 uses
  %i.aov = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i705, align 4, !tbaa !16
  store i32 %i.aov, ptr %.013.i.i.i.i.i.i.i704, align 4, !tbaa !16
  %i.aow = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i705, i64 4 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i704, i64 4
  %.not.i.i.i.i.i.i.i706 = icmp eq ptr %i.aow, %i.aoh
  br i1 %.not.i.i.i.i.i.i.i706, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i707, label %.lr.ph.i.i.i.i.i.i.i703, !llvm.loop !265

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i707: ; preds = %.lr.ph.i.i.i.i.i.i.i703, %middle.block1740, %.noexc
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.anp, i64 24
  %.not.i.i.i708 = icmp eq ptr %i.aoe, %i.aoy
  br i1 %.not.i.i.i708, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i710, label %bb.ce

bb.ce:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i707
  call void @_ZdlPv(ptr noundef %i.aoe) #23
  %.pre2.pre.i.i709 = load i32, ptr %i.anr, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i710

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i710: ; preds = %bb.ce, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i707
  %.pre2.i.i711 = phi i32 [ %i.aof, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i707 ], [ %.pre2.pre.i.i709, %bb.ce ]
  store ptr %i.aod, ptr %i.anq, align 8, !tbaa !218
  store i32 %.09.i.i.i700, ptr %i.ant, align 4, !tbaa !217
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i710, %._crit_edge.i.i698
  %i.aoz = phi i32 [ %i.ans, %._crit_edge.i.i698 ], [ %.pre2.i.i711, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i710 ]
  %i.apa = phi ptr [ %.pre.i.i699, %._crit_edge.i.i698 ], [ %i.aod, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i710 ]
  %i.apb = zext i32 %i.aoz to i64
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.apa, i64 %i.apb
  store i32 %.sroa.0292.0.copyload, ptr %i.apc, align 4, !tbaa !16
  %i.apd = load i32, ptr %i.anr, align 8, !tbaa !216
  %i.ape = add i32 %i.apd, 1
  store i32 %i.ape, ptr %i.anr, align 8, !tbaa !216
  invoke void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.anl, i32 %.sroa.0292.0.copyload, i32 %.sroa.2294.0.copyload)
          to label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit713 unwind label %bb.cf

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit713: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i
  %i.apf = getelementptr inbounds nuw i8, ptr %.sroa.01015.01145, i64 4 ; 2 uses
  %.not1055 = icmp eq ptr %i.apf, %i.anf
  br i1 %.not1055, label %._crit_edge1148.loopexit, label %.lr.ph1147

bb.cf:                                            ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i, %bb.cd
  %i.apg = landingpad { ptr, i32 }
          cleanup
  %i.aph = load ptr, ptr %8, align 8, !tbaa !262  ; 3 uses
  %.not.i.i.i714 = icmp eq ptr %i.aph, null
  br i1 %.not.i.i.i714, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit715, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.api = load ptr, ptr %i.cl, align 8, !tbaa !263
  %i.apj = ptrtoint ptr %i.api to i64
  %i.apk = ptrtoint ptr %i.aph to i64
  %i.apl = sub i64 %i.apj, %i.apk
  call void @_ZdlPvm(ptr noundef nonnull %i.aph, i64 noundef %i.apl) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit715

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit715: ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.gc

._crit_edge1143.thread:                           ; preds = %.lr.ph1142, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, %._crit_edge1143
  %i.apm = load i32, ptr %i.ar, align 8
  %i.apn = lshr i32 %i.apm, 4
  %i.apo = zext nneg i32 %i.apn to i64
  %i.app = load ptr, ptr %i.h, align 8, !tbaa !172
  %i.apq = getelementptr inbounds nuw [192 x i8], ptr %i.app, i64 %i.apo
  %.sroa.0288.0.copyload = load i32, ptr %5, align 4, !tbaa !16
  %i.apr = load i32, ptr %i.a, align 4, !tbaa !138
  %i.aps = lshr i32 %i.apr, 8
  %i.apt = trunc i32 %i.aps to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE9applyCallERNS4_14BlockProducersENS0_4BcOpEhi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.apq, i32 %.sroa.0288.0.copyload, i8 noundef zeroext %i.apt, i32 noundef %i.amo)
  %i.apu = load i32, ptr %i.a, align 4, !tbaa !138
  %i.apv = lshr i32 %i.apu, 8
  %i.apw = trunc i32 %i.apv to i8
  %i.apx = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168 ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 400 ; 2 uses
  %.0.copyload.i.i.i.i716 = load i32, ptr %5, align 4 ; 4 uses
  %.0.insert.ext.i.i.i.i717 = zext i32 %.0.copyload.i.i.i.i716 to i64 ; 4 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apx, i64 408
  %i.aqa = load i64, ptr %i.apz, align 8, !tbaa !25 ; 2 uses
  %i.aqb = urem i64 %.0.insert.ext.i.i.i.i717, %i.aqa ; 3 uses
  %i.aqc = load ptr, ptr %i.apy, align 8, !tbaa !17
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %i.aqb
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i718 = icmp eq ptr %i.aqe, null
  br i1 %.not.i.i.i.i718, label %.loopexit.i.i724, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge1143.thread
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !245 ; 4 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqf, i64 16
  %i.aqi = load i64, ptr %i.aqh, align 8, !tbaa !246
  %i.aqj = icmp eq i64 %i.aqi, %.0.insert.ext.i.i.i.i717
  %i.aqk = load i32, ptr %i.aqg, align 8
  %i.aql = icmp eq i32 %.0.copyload.i.i.i.i716, %i.aqk
  %i.aqm = select i1 %i.aqj, i1 %i.aql, i1 false
  br i1 %i.aqm, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit728, label %.lr.ph.i.i.i.i719

bb.ci:                                            ; preds = %bb.cj
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8
  %i.aqo = icmp eq i64 %i.aqu, %.0.insert.ext.i.i.i.i717
  %i.aqp = load i32, ptr %i.aqn, align 8
  %i.aqq = icmp eq i32 %.0.copyload.i.i.i.i716, %i.aqp
  %i.aqr = select i1 %i.aqo, i1 %i.aqq, i1 false
  br i1 %i.aqr, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit728, label %.lr.ph.i.i.i.i719, !llvm.loop !248

.lr.ph.i.i.i.i719:                                ; preds = %bb.ch, %bb.ci
  %.020.i.i.i.i720 = phi ptr [ %i.aqs, %bb.ci ], [ %i.aqf, %bb.ch ]
  %i.aqs = load ptr, ptr %.020.i.i.i.i720, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i.i.i721 = icmp eq ptr %i.aqs, null
  br i1 %.not18.i.i.i.i721, label %.loopexit.i.i724, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i719
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16
  %i.aqu = load i64, ptr %i.aqt, align 8, !tbaa !246 ; 2 uses
  %i.aqv = urem i64 %i.aqu, %i.aqa
  %.not19.i.i.i.i722 = icmp eq i64 %i.aqv, %i.aqb
  br i1 %.not19.i.i.i.i722, label %bb.ci, label %..loopexit_crit_edge21.i.i.i.i723, !llvm.loop !248

..loopexit_crit_edge21.i.i.i.i723:                ; preds = %bb.cj
  br label %.loopexit.i.i724, !llvm.loop !248

.loopexit.i.i724:                                 ; preds = %.lr.ph.i.i.i.i719, %..loopexit_crit_edge21.i.i.i.i723, %._crit_edge1143.thread
  %i.aqw = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  store ptr null, ptr %i.aqw, align 8, !tbaa !245
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8
  store i32 %.0.copyload.i.i.i.i716, ptr %i.aqx, align 8, !tbaa !16
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqw, i64 12
  store i8 0, ptr %i.aqy, align 4, !tbaa !249
  %i.aqz = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.apy, i64 noundef %i.aqb, i64 noundef %.0.insert.ext.i.i.i.i717, ptr noundef nonnull %i.aqw, i64 noundef 1)
          to label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit728 unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i725

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i725: ; preds = %.loopexit.i.i724
  %i.ara = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aqw, i64 noundef 24) #25
  br label %common.resume

_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit728: ; preds = %bb.ci, %bb.ch, %.loopexit.i.i724
  %.pn.i.i726 = phi ptr [ %i.aqz, %.loopexit.i.i724 ], [ %i.aqf, %bb.ch ], [ %i.aqs, %bb.ci ]
  %.1.i.i727 = getelementptr inbounds nuw i8, ptr %.pn.i.i726, i64 12
  store i8 %i.apw, ptr %.1.i.i727, align 1, !tbaa !16
  %i.arb = icmp ugt i32 %i.amj, 33554431
  br i1 %i.arb, label %.lr.ph1150, label %.loopexit1058

.lr.ph1150:                                       ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit728, %.lr.ph1150
  %.05141149 = phi i32 [ %i.ari, %.lr.ph1150 ], [ 0, %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit728 ] ; 3 uses
  %i.arc = load i32, ptr %i.a, align 4, !tbaa !138
  %i.ard = lshr i32 %i.arc, 8
  %i.are = add nuw i32 %i.ard, %.05141149
  %i.arf = trunc i32 %i.are to i8
  %i.arg = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %.sroa.0282.0.copyload = load i32, ptr %5, align 4, !tbaa !16
  %i.arh = call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %i.arg, i32 %.sroa.0282.0.copyload, i32 noundef %.05141149)
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %i.arf, i32 %i.arh)
  %i.ari = add nuw nsw i32 %.05141149, 1          ; 2 uses
  %exitcond1216.not = icmp eq i32 %i.ari, %i.amo
  br i1 %exitcond1216.not, label %.loopexit1058, label %.lr.ph1150, !llvm.loop !266

bb.ck:                                            ; preds = %bb.z
  %i.arj = load i32, ptr %i.a, align 4, !tbaa !138
  %i.ark = lshr i32 %i.arj, 16
  %i.arl = and i32 %i.ark, 255                    ; 3 uses
  %i.arm = add nsw i32 %i.arl, -1                 ; 2 uses
  %.sroa.2276.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %.pre1218, i32 %.sroa.2276.0.copyload, i32 noundef %i.arm)
  %i.arn = icmp samesign ugt i32 %i.arl, 1
  br i1 %i.arn, label %.lr.ph1132, label %._crit_edge1133

._crit_edge1133:                                  ; preds = %bb.ck
  %i.aro = icmp eq i32 %i.arl, 0
  br i1 %i.aro, label %bb.cl, label %._crit_edge1133.thread.thread

.lr.ph1132:                                       ; preds = %bb.ck, %.lr.ph1132
  %.05151130 = phi i32 [ %i.art, %.lr.ph1132 ], [ 0, %bb.ck ] ; 2 uses
  %.sroa.0269.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2270.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.arp = load i32, ptr %i.a, align 4, !tbaa !138
  %i.arq = lshr i32 %i.arp, 8
  %i.arr = add nuw nsw i32 %i.arq, %.05151130
  %i.ars = trunc i32 %i.arr to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0269.0.copyload, i32 %.sroa.2270.0.copyload, i8 noundef zeroext %i.ars)
  %i.art = add nuw nsw i32 %.05151130, 1          ; 2 uses
  %exitcond1214.not = icmp eq i32 %i.art, %i.arm
  br i1 %exitcond1214.not, label %.loopexit1058, label %.lr.ph1132, !llvm.loop !267

bb.cl:                                            ; preds = %._crit_edge1133
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %.sroa.0266.0.copyload = load i32, ptr %i.ar, align 8, !tbaa !16
  %i.aru = load i32, ptr %i.a, align 4, !tbaa !138
  %i.arv = lshr i32 %i.aru, 8
  %i.arw = trunc i32 %i.arv to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE20findProducersUpToTopENS0_4BcOpEh(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.211") align 8 %9, ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %.sroa.0266.0.copyload, i8 noundef zeroext %i.arw)
  %i.arx = load ptr, ptr %9, align 8, !tbaa !214  ; 3 uses
  %i.ary = load ptr, ptr %i.ci, align 8, !tbaa !214 ; 2 uses
  %.not10541134 = icmp eq ptr %i.arx, %i.ary
  br i1 %.not10541134, label %._crit_edge1138, label %.lr.ph1137

._crit_edge1138.loopexit:                         ; preds = %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit748
  %.pre1222 = load ptr, ptr %9, align 8, !tbaa !262
  br label %._crit_edge1138

._crit_edge1138:                                  ; preds = %._crit_edge1138.loopexit, %bb.cl
  %i.arz = phi ptr [ %.pre1222, %._crit_edge1138.loopexit ], [ %i.arx, %bb.cl ] ; 3 uses
  %.not.i.i.i729 = icmp eq ptr %i.arz, null
  br i1 %.not.i.i.i729, label %._crit_edge1133.thread, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge1138
  %i.asa = load ptr, ptr %i.cj, align 8, !tbaa !263
  %i.asb = ptrtoint ptr %i.asa to i64
  %i.asc = ptrtoint ptr %i.arz to i64
  %i.asd = sub i64 %i.asb, %i.asc
  call void @_ZdlPvm(ptr noundef nonnull %i.arz, i64 noundef %i.asd) #25
  br label %._crit_edge1133.thread

.lr.ph1137:                                       ; preds = %bb.cl, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit748
  %.sroa.01011.01135 = phi ptr [ %i.aty, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit748 ], [ %i.arx, %bb.cl ] ; 2 uses
  %i.ase = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %.sroa.0262.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2263.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16 ; 2 uses
  %.sroa.0261.0.copyload = load i32, ptr %.sroa.01011.01135, align 4, !tbaa !16 ; 2 uses
  %i.asf = lshr i32 %.sroa.2263.0.copyload, 4
  %i.asg = zext nneg i32 %i.asf to i64
  %i.ash = load ptr, ptr %.sroa.0262.0.copyload, align 8, !tbaa !194
  %i.asi = getelementptr inbounds nuw [80 x i8], ptr %i.ash, i64 %i.asg ; 4 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 8 ; 3 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asi, i64 16 ; 5 uses
  %i.asl = load i32, ptr %i.ask, align 8, !tbaa !216 ; 6 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asi, i64 20 ; 2 uses
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !217
  %i.aso = icmp eq i32 %i.asl, %i.asn
  br i1 %i.aso, label %bb.cn, label %._crit_edge.i.i731

._crit_edge.i.i731:                               ; preds = %.lr.ph1137
  %.pre.i.i732 = load ptr, ptr %i.asj, align 8, !tbaa !218
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i733

bb.cn:                                            ; preds = %.lr.ph1137
  %i.asp = add i32 %i.asl, 1
  %i.asq = lshr i32 %i.asl, 1
  %i.asr = add i32 %i.asq, %i.asl                 ; 2 uses
  %i.ass = icmp ugt i32 %i.asr, %i.asp
  %i.ast = add i32 %i.asl, 5
  %.09.i.i.i734 = select i1 %i.ass, i32 %i.asr, i32 %i.ast ; 2 uses
  %i.asu = zext i32 %.09.i.i.i734 to i64
  %i.asv = shl nuw nsw i64 %i.asu, 2
  %i.asw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asv) #27
          to label %.noexc746 unwind label %bb.cp ; 6 uses

.noexc746:                                        ; preds = %bb.cn
  %i.asx = load ptr, ptr %i.asj, align 8, !tbaa !218 ; 7 uses
  %i.asy = load i32, ptr %i.ask, align 8, !tbaa !216 ; 3 uses
  %i.asz = zext i32 %i.asy to i64
  %.idx.i.i.i735 = shl nuw nsw i64 %i.asz, 2      ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asx, i64 %.idx.i.i.i735
  %.not11.i.i.i.i.i.i.i736 = icmp eq i32 %i.asy, 0
  br i1 %.not11.i.i.i.i.i.i.i736, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i741, label %.lr.ph.i.i.i.i.i.i.i737.preheader

.lr.ph.i.i.i.i.i.i.i737.preheader:                ; preds = %.noexc746
  %i.atb = ptrtoaddr ptr %i.asx to i64
  %i.atc = ptrtoaddr ptr %i.asw to i64
  %i.atd = add nsw i64 %.idx.i.i.i735, -4         ; 2 uses
  %i.ate = lshr exact i64 %i.atd, 2
  %i.atf = add nuw nsw i64 %i.ate, 1              ; 2 uses
  %min.iters.check1747 = icmp ult i64 %i.atd, 28
  %i.atg = sub i64 %i.atb, %i.atc
  %diff.check1745 = icmp ugt i64 %i.atg, -32
  %or.cond1962 = select i1 %min.iters.check1747, i1 true, i1 %diff.check1745
  br i1 %or.cond1962, label %.lr.ph.i.i.i.i.i.i.i737.preheader1985, label %vector.ph1748

vector.ph1748:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i737.preheader
  %n.vec1749 = and i64 %i.atf, 9223372036854775800 ; 3 uses
  %i.ath = shl i64 %n.vec1749, 2                  ; 2 uses
  %i.ati = getelementptr i8, ptr %i.asw, i64 %i.ath
  %i.atj = getelementptr i8, ptr %i.asx, i64 %i.ath
  br label %vector.body1750

vector.body1750:                                  ; preds = %vector.body1750, %vector.ph1748
  %index1751 = phi i64 [ 0, %vector.ph1748 ], [ %index.next1756, %vector.body1750 ] ; 2 uses
  %i.atk = shl i64 %index1751, 2                  ; 2 uses
  %next.gep1752 = getelementptr i8, ptr %i.asw, i64 %i.atk ; 2 uses
  %next.gep1753 = getelementptr i8, ptr %i.asx, i64 %i.atk ; 2 uses
  %i.atl = getelementptr i8, ptr %next.gep1753, i64 16
  %wide.load1754 = load <4 x i32>, ptr %next.gep1753, align 4, !tbaa !16
  %wide.load1755 = load <4 x i32>, ptr %i.atl, align 4, !tbaa !16
  %i.atm = getelementptr i8, ptr %next.gep1752, i64 16
  store <4 x i32> %wide.load1754, ptr %next.gep1752, align 4, !tbaa !16
  store <4 x i32> %wide.load1755, ptr %i.atm, align 4, !tbaa !16
  %index.next1756 = add nuw i64 %index1751, 8     ; 2 uses
  %i.atn = icmp eq i64 %index.next1756, %n.vec1749
  br i1 %i.atn, label %middle.block1757, label %vector.body1750, !llvm.loop !268

middle.block1757:                                 ; preds = %vector.body1750
  %cmp.n1758 = icmp eq i64 %i.atf, %n.vec1749
  br i1 %cmp.n1758, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i741, label %.lr.ph.i.i.i.i.i.i.i737.preheader1985

.lr.ph.i.i.i.i.i.i.i737.preheader1985:            ; preds = %.lr.ph.i.i.i.i.i.i.i737.preheader, %middle.block1757
  %.013.i.i.i.i.i.i.i738.ph = phi ptr [ %i.asw, %.lr.ph.i.i.i.i.i.i.i737.preheader ], [ %i.ati, %middle.block1757 ]
  %.sroa.08.012.i.i.i.i.i.i.i739.ph = phi ptr [ %i.asx, %.lr.ph.i.i.i.i.i.i.i737.preheader ], [ %i.atj, %middle.block1757 ]
  br label %.lr.ph.i.i.i.i.i.i.i737

.lr.ph.i.i.i.i.i.i.i737:                          ; preds = %.lr.ph.i.i.i.i.i.i.i737.preheader1985, %.lr.ph.i.i.i.i.i.i.i737
  %.013.i.i.i.i.i.i.i738 = phi ptr [ %i.atq, %.lr.ph.i.i.i.i.i.i.i737 ], [ %.013.i.i.i.i.i.i.i738.ph, %.lr.ph.i.i.i.i.i.i.i737.preheader1985 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i739 = phi ptr [ %i.atp, %.lr.ph.i.i.i.i.i.i.i737 ], [ %.sroa.08.012.i.i.i.i.i.i.i739.ph, %.lr.ph.i.i.i.i.i.i.i737.preheader1985 ] ; 2 uses
  %i.ato = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i739, align 4, !tbaa !16
  store i32 %i.ato, ptr %.013.i.i.i.i.i.i.i738, align 4, !tbaa !16
  %i.atp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i739, i64 4 ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i738, i64 4
  %.not.i.i.i.i.i.i.i740 = icmp eq ptr %i.atp, %i.ata
  br i1 %.not.i.i.i.i.i.i.i740, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i741, label %.lr.ph.i.i.i.i.i.i.i737, !llvm.loop !269

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i741: ; preds = %.lr.ph.i.i.i.i.i.i.i737, %middle.block1757, %.noexc746
  %i.atr = getelementptr inbounds nuw i8, ptr %i.asi, i64 24
  %.not.i.i.i742 = icmp eq ptr %i.asx, %i.atr
  br i1 %.not.i.i.i742, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i744, label %bb.co

bb.co:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i741
  call void @_ZdlPv(ptr noundef %i.asx) #23
  %.pre2.pre.i.i743 = load i32, ptr %i.ask, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i744

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i744: ; preds = %bb.co, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i741
  %.pre2.i.i745 = phi i32 [ %i.asy, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i741 ], [ %.pre2.pre.i.i743, %bb.co ]
  store ptr %i.asw, ptr %i.asj, align 8, !tbaa !218
  store i32 %.09.i.i.i734, ptr %i.asm, align 4, !tbaa !217
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i733

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i733: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i744, %._crit_edge.i.i731
  %i.ats = phi i32 [ %i.asl, %._crit_edge.i.i731 ], [ %.pre2.i.i745, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i744 ]
  %i.att = phi ptr [ %.pre.i.i732, %._crit_edge.i.i731 ], [ %i.asw, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i744 ]
  %i.atu = zext i32 %i.ats to i64
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %i.atu
  store i32 %.sroa.0261.0.copyload, ptr %i.atv, align 4, !tbaa !16
  %i.atw = load i32, ptr %i.ask, align 8, !tbaa !216
  %i.atx = add i32 %i.atw, 1
  store i32 %i.atx, ptr %i.ask, align 8, !tbaa !216
  invoke void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.ase, i32 %.sroa.0261.0.copyload, i32 %.sroa.2263.0.copyload)
          to label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit748 unwind label %bb.cp

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit748: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i733
  %i.aty = getelementptr inbounds nuw i8, ptr %.sroa.01011.01135, i64 4 ; 2 uses
  %.not1054 = icmp eq ptr %i.aty, %i.ary
  br i1 %.not1054, label %._crit_edge1138.loopexit, label %.lr.ph1137

bb.cp:                                            ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i733, %bb.cn
  %i.atz = landingpad { ptr, i32 }
          cleanup
  %i.aua = load ptr, ptr %9, align 8, !tbaa !262  ; 3 uses
  %.not.i.i.i749 = icmp eq ptr %i.aua, null
  br i1 %.not.i.i.i749, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit750, label %bb.cq
end_hunk_0
begin_hunk_1_@_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12rebuildGraphEPKjjRSt6vectorIjSaIjEESA_:bb.a
  %i.bez = shl i64 %n.vec1817, 2                  ; 2 uses
  %i.bfa = getelementptr i8, ptr %i.beo, i64 %i.bez
  %i.bfb = getelementptr i8, ptr %i.bep, i64 %i.bez
  br label %vector.body1818

vector.body1818:                                  ; preds = %vector.body1818, %vector.ph1816
  %index1819 = phi i64 [ 0, %vector.ph1816 ], [ %index.next1824, %vector.body1818 ] ; 2 uses
  %i.bfc = shl i64 %index1819, 2                  ; 2 uses
  %next.gep1820 = getelementptr i8, ptr %i.beo, i64 %i.bfc ; 2 uses
  %next.gep1821 = getelementptr i8, ptr %i.bep, i64 %i.bfc ; 2 uses
  %i.bfd = getelementptr i8, ptr %next.gep1821, i64 16
  %wide.load1822 = load <4 x i32>, ptr %next.gep1821, align 4, !tbaa !16
  %wide.load1823 = load <4 x i32>, ptr %i.bfd, align 4, !tbaa !16
  %i.bfe = getelementptr i8, ptr %next.gep1820, i64 16
  store <4 x i32> %wide.load1822, ptr %next.gep1820, align 4, !tbaa !16
  store <4 x i32> %wide.load1823, ptr %i.bfe, align 4, !tbaa !16
  %index.next1824 = add nuw i64 %index1819, 8     ; 2 uses
  %i.bff = icmp eq i64 %index.next1824, %n.vec1817
  br i1 %i.bff, label %middle.block1825, label %vector.body1818, !llvm.loop !278

middle.block1825:                                 ; preds = %vector.body1818
  %cmp.n1826 = icmp eq i64 %i.bex, %n.vec1817
  br i1 %cmp.n1826, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i809, label %.lr.ph.i.i.i.i.i.i.i805.preheader1986

.lr.ph.i.i.i.i.i.i.i805.preheader1986:            ; preds = %.lr.ph.i.i.i.i.i.i.i805.preheader, %middle.block1825
  %.013.i.i.i.i.i.i.i806.ph = phi ptr [ %i.beo, %.lr.ph.i.i.i.i.i.i.i805.preheader ], [ %i.bfa, %middle.block1825 ]
  %.sroa.08.012.i.i.i.i.i.i.i807.ph = phi ptr [ %i.bep, %.lr.ph.i.i.i.i.i.i.i805.preheader ], [ %i.bfb, %middle.block1825 ]
  br label %.lr.ph.i.i.i.i.i.i.i805

.lr.ph.i.i.i.i.i.i.i805:                          ; preds = %.lr.ph.i.i.i.i.i.i.i805.preheader1986, %.lr.ph.i.i.i.i.i.i.i805
  %.013.i.i.i.i.i.i.i806 = phi ptr [ %i.bfi, %.lr.ph.i.i.i.i.i.i.i805 ], [ %.013.i.i.i.i.i.i.i806.ph, %.lr.ph.i.i.i.i.i.i.i805.preheader1986 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i807 = phi ptr [ %i.bfh, %.lr.ph.i.i.i.i.i.i.i805 ], [ %.sroa.08.012.i.i.i.i.i.i.i807.ph, %.lr.ph.i.i.i.i.i.i.i805.preheader1986 ] ; 2 uses
  %i.bfg = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i807, align 4, !tbaa !16
  store i32 %i.bfg, ptr %.013.i.i.i.i.i.i.i806, align 4, !tbaa !16
  %i.bfh = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i807, i64 4 ; 2 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i806, i64 4
  %.not.i.i.i.i.i.i.i808 = icmp eq ptr %i.bfh, %i.bes
  br i1 %.not.i.i.i.i.i.i.i808, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i809, label %.lr.ph.i.i.i.i.i.i.i805, !llvm.loop !279

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i809: ; preds = %.lr.ph.i.i.i.i.i.i.i805, %middle.block1825, %.noexc814
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bea, i64 24
  %.not.i.i.i810 = icmp eq ptr %i.bep, %i.bfj
  br i1 %.not.i.i.i810, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i812, label %bb.dq

bb.dq:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i809
  call void @_ZdlPv(ptr noundef %i.bep) #23
  %.pre2.pre.i.i811 = load i32, ptr %i.bec, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i812

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i812: ; preds = %bb.dq, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i809
  %.pre2.i.i813 = phi i32 [ %i.beq, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i809 ], [ %.pre2.pre.i.i811, %bb.dq ]
  store ptr %i.beo, ptr %i.beb, align 8, !tbaa !218
  store i32 %.09.i.i.i802, ptr %i.bee, align 4, !tbaa !217
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i801

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i801: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i812, %._crit_edge.i.i799
  %i.bfk = phi i32 [ %i.bed, %._crit_edge.i.i799 ], [ %.pre2.i.i813, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i812 ]
  %i.bfl = phi ptr [ %.pre.i.i800, %._crit_edge.i.i799 ], [ %i.beo, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i812 ]
  %i.bfm = zext i32 %i.bfk to i64
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %i.bfl, i64 %i.bfm
  store i32 %.sroa.0193.0.copyload, ptr %i.bfn, align 4, !tbaa !16
  %i.bfo = load i32, ptr %i.bec, align 8, !tbaa !216
  %i.bfp = add i32 %i.bfo, 1
  store i32 %i.bfp, ptr %i.bec, align 8, !tbaa !216
  invoke void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.bdw, i32 %.sroa.0193.0.copyload, i32 %.sroa.2191.0.copyload)
          to label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit816 unwind label %bb.dr

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit816: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i801
  %i.bfq = getelementptr inbounds nuw i8, ptr %.sroa.01006.01120, i64 4 ; 2 uses
  %.not1053 = icmp eq ptr %i.bfq, %i.bdq
  br i1 %.not1053, label %._crit_edge1123.loopexit, label %.lr.ph1122

bb.dr:                                            ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE9push_backERKS2_.exit.i801, %bb.dp
  %i.bfr = landingpad { ptr, i32 }
          cleanup
  %i.bfs = load ptr, ptr %10, align 8, !tbaa !262 ; 3 uses
  %.not.i.i.i817 = icmp eq ptr %i.bfs, null
  br i1 %.not.i.i.i817, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit818, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.bft = load ptr, ptr %i.ch, align 8, !tbaa !263
  %i.bfu = ptrtoint ptr %i.bft to i64
  %i.bfv = ptrtoint ptr %i.bfs to i64
  %i.bfw = sub i64 %i.bfu, %i.bfv
  call void @_ZdlPvm(ptr noundef nonnull %i.bfs, i64 noundef %i.bfw) #25
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit818

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit818: ; preds = %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.gc

bb.dt:                                            ; preds = %bb.z, %bb.z, %bb.z
  %.sroa.2187.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bfx = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bfy = lshr i32 %i.bfx, 8
  %i.bfz = trunc i32 %i.bfy to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %.pre1218, i32 %.sroa.2187.0.copyload, i8 noundef zeroext %i.bfz)
  %.sroa.0183.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2184.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bga = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bgb = lshr i32 %i.bga, 8
  %i.bgc = trunc i32 %i.bgb to i8
  %i.bgd = add i8 %i.bgc, 1
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0183.0.copyload, i32 %.sroa.2184.0.copyload, i8 noundef zeroext %i.bgd)
  %.sroa.0180.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2181.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bge = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bgf = lshr i32 %i.bge, 8
  %i.bgg = trunc i32 %i.bgf to i8
  %i.bgh = add i8 %i.bgg, 2
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0180.0.copyload, i32 %.sroa.2181.0.copyload, i8 noundef zeroext %i.bgh)
  %i.bgi = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bgj = call noundef i32 @_ZN4Luau13getJumpTargetEjj(i32 noundef %i.bgi, i32 noundef %.01154) ; 2 uses
  %.sroa.0175.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2176.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addJumpInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0175.0.copyload, i32 %.sroa.2176.0.copyload, i32 noundef %i.bgj)
  %i.bgk = sext i32 %i.bgj to i64
  %i.bgl = getelementptr [4 x i8], ptr %1, i64 %i.bgk
  %i.bgm = getelementptr i8, ptr %i.bgl, i64 4
  %i.bgn = load i32, ptr %i.bgm, align 4, !tbaa !138
  %i.bgo = and i32 %i.bgn, 255
  %i.bgp = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bgq = lshr i32 %i.bgp, 8
  %i.bgr = trunc i32 %i.bgq to i8
  %i.bgs = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168 ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 400 ; 2 uses
  %.0.copyload.i.i.i.i819 = load i32, ptr %5, align 4 ; 4 uses
  %.0.insert.ext.i.i.i.i820 = zext i32 %.0.copyload.i.i.i.i819 to i64 ; 4 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgs, i64 408
  %i.bgv = load i64, ptr %i.bgu, align 8, !tbaa !25 ; 2 uses
  %i.bgw = urem i64 %.0.insert.ext.i.i.i.i820, %i.bgv ; 3 uses
  %i.bgx = load ptr, ptr %i.bgt, align 8, !tbaa !17
  %i.bgy = getelementptr inbounds nuw [8 x i8], ptr %i.bgx, i64 %i.bgw
  %i.bgz = load ptr, ptr %i.bgy, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i821 = icmp eq ptr %i.bgz, null
  br i1 %.not.i.i.i.i821, label %.loopexit.i.i827, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !245 ; 4 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 8
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bha, i64 16
  %i.bhd = load i64, ptr %i.bhc, align 8, !tbaa !246
  %i.bhe = icmp eq i64 %i.bhd, %.0.insert.ext.i.i.i.i820
  %i.bhf = load i32, ptr %i.bhb, align 8
  %i.bhg = icmp eq i32 %.0.copyload.i.i.i.i819, %i.bhf
  %i.bhh = select i1 %i.bhe, i1 %i.bhg, i1 false
  br i1 %i.bhh, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit831, label %.lr.ph.i.i.i.i822

bb.dv:                                            ; preds = %bb.dw
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhn, i64 8
  %i.bhj = icmp eq i64 %i.bhp, %.0.insert.ext.i.i.i.i820
  %i.bhk = load i32, ptr %i.bhi, align 8
  %i.bhl = icmp eq i32 %.0.copyload.i.i.i.i819, %i.bhk
  %i.bhm = select i1 %i.bhj, i1 %i.bhl, i1 false
  br i1 %i.bhm, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit831, label %.lr.ph.i.i.i.i822, !llvm.loop !248

.lr.ph.i.i.i.i822:                                ; preds = %bb.du, %bb.dv
  %.020.i.i.i.i823 = phi ptr [ %i.bhn, %bb.dv ], [ %i.bha, %bb.du ]
  %i.bhn = load ptr, ptr %.020.i.i.i.i823, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i.i.i824 = icmp eq ptr %i.bhn, null
  br i1 %.not18.i.i.i.i824, label %.loopexit.i.i827, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i822
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 16
  %i.bhp = load i64, ptr %i.bho, align 8, !tbaa !246 ; 2 uses
  %i.bhq = urem i64 %i.bhp, %i.bgv
  %.not19.i.i.i.i825 = icmp eq i64 %i.bhq, %i.bgw
  br i1 %.not19.i.i.i.i825, label %bb.dv, label %..loopexit_crit_edge21.i.i.i.i826, !llvm.loop !248

..loopexit_crit_edge21.i.i.i.i826:                ; preds = %bb.dw
  br label %.loopexit.i.i827, !llvm.loop !248

.loopexit.i.i827:                                 ; preds = %.lr.ph.i.i.i.i822, %..loopexit_crit_edge21.i.i.i.i826, %bb.dt
  %i.bhr = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  store ptr null, ptr %i.bhr, align 8, !tbaa !245
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 8
  store i32 %.0.copyload.i.i.i.i819, ptr %i.bhs, align 8, !tbaa !16
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhr, i64 12
  store i8 0, ptr %i.bht, align 4, !tbaa !249
  %i.bhu = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.bgt, i64 noundef %i.bgw, i64 noundef %.0.insert.ext.i.i.i.i820, ptr noundef nonnull %i.bhr, i64 noundef 1)
          to label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit831 unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i828

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i828: ; preds = %.loopexit.i.i827
  %i.bhv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bhr, i64 noundef 24) #25
  br label %common.resume

_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit831: ; preds = %bb.dv, %bb.du, %.loopexit.i.i827
  %.pn.i.i829 = phi ptr [ %i.bhu, %.loopexit.i.i827 ], [ %i.bha, %bb.du ], [ %i.bhn, %bb.dv ]
  %.1.i.i830 = getelementptr inbounds nuw i8, ptr %.pn.i.i829, i64 12
  store i8 %i.bgr, ptr %.1.i.i830, align 1, !tbaa !16
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.bgo, i32 2)
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit831, %bb.dx
  %.05181114 = phi i32 [ 0, %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit831 ], [ %i.bid, %bb.dx ] ; 3 uses
  %i.bhw = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bhx = lshr i32 %i.bhw, 8
  %i.bhy = add nuw nsw i32 %.05181114, 2          ; 2 uses
  %i.bhz = add nuw i32 %i.bhy, %i.bhx
  %i.bia = trunc i32 %i.bhz to i8
  %i.bib = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %.sroa.0169.0.copyload = load i32, ptr %5, align 4, !tbaa !16
  %i.bic = call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %i.bib, i32 %.sroa.0169.0.copyload, i32 noundef %i.bhy)
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %i.bia, i32 %i.bic)
  %i.bid = add nuw nsw i32 %.05181114, 1
  %exitcond1209.not = icmp eq i32 %.05181114, %.sroa.speculated
  br i1 %exitcond1209.not, label %.loopexit1058, label %bb.dx, !llvm.loop !280

bb.dy:                                            ; preds = %bb.z
  %.sroa.2167.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bie = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bif = lshr i32 %i.bie, 8
  %i.big = trunc i32 %i.bif to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %.pre1218, i32 %.sroa.2167.0.copyload, i8 noundef zeroext %i.big)
  %.sroa.0163.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2164.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bih = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bii = lshr i32 %i.bih, 8
  %i.bij = trunc i32 %i.bii to i8
  %i.bik = add i8 %i.bij, 1
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0163.0.copyload, i32 %.sroa.2164.0.copyload, i8 noundef zeroext %i.bik)
  %.sroa.0160.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2161.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bil = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bim = lshr i32 %i.bil, 8
  %i.bin = trunc i32 %i.bim to i8
  %i.bio = add i8 %i.bin, 2
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0160.0.copyload, i32 %.sroa.2161.0.copyload, i8 noundef zeroext %i.bio)
  %.sroa.0157.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2158.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bip = load i32, ptr %i.b, align 4, !tbaa !138
  %i.biq = icmp slt i32 %i.bip, 0
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0157.0.copyload, i32 %.sroa.2158.0.copyload, i1 noundef zeroext %i.biq)
  %i.bir = load i32, ptr %i.b, align 4, !tbaa !138
  %i.bis = and i32 %i.bir, 255
  %.sroa.0153.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2154.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0153.0.copyload, i32 %.sroa.2154.0.copyload, i32 noundef %i.bis)
  %.sroa.0150.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2151.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bit = load i32, ptr %i.a, align 4, !tbaa !138
  %i.biu = call noundef i32 @_ZN4Luau13getJumpTargetEjj(i32 noundef %i.bit, i32 noundef %.01154)
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addJumpInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0150.0.copyload, i32 %.sroa.2151.0.copyload, i32 noundef %i.biu)
  br label %.loopexit1058

bb.dz:                                            ; preds = %bb.z
  %.sroa.2148.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.biv = load i32, ptr %i.a, align 4, !tbaa !138
  %i.biw = lshr i32 %i.biv, 8
  %i.bix = and i32 %i.biw, 255
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %.pre1218, i32 %.sroa.2148.0.copyload, i32 noundef %i.bix)
  %.sroa.0144.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2145.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.biy = load i32, ptr %i.a, align 4, !tbaa !138
  %i.biz = lshr i32 %i.biy, 24
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0144.0.copyload, i32 %.sroa.2145.0.copyload, i32 noundef %i.biz)
  br label %.loopexit1058

bb.ea:                                            ; preds = %bb.z
  %.sroa.2142.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bja = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bjb = lshr i32 %i.bja, 8
  %i.bjc = and i32 %i.bjb, 255
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %.pre1218, i32 %.sroa.2142.0.copyload, i32 noundef %i.bjc)
  %.sroa.0138.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2139.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bjd = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bje = lshr i32 %i.bjd, 16
  %i.bjf = trunc i32 %i.bje to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0138.0.copyload, i32 %.sroa.2139.0.copyload, i8 noundef zeroext %i.bjf)
  %.sroa.0135.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2136.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bjg = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bjh = lshr i32 %i.bjg, 24
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0135.0.copyload, i32 %.sroa.2136.0.copyload, i32 noundef %i.bjh)
  br label %.loopexit1058

bb.eb:                                            ; preds = %bb.z
  %.sroa.2133.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bji = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bjj = lshr i32 %i.bji, 8
  %i.bjk = and i32 %i.bjj, 255
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %.pre1218, i32 %.sroa.2133.0.copyload, i32 noundef %i.bjk)
  %.sroa.0129.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2130.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bjl = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bjm = lshr i32 %i.bjl, 16
  %i.bjn = trunc i32 %i.bjm to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0129.0.copyload, i32 %.sroa.2130.0.copyload, i8 noundef zeroext %i.bjn)
  %.sroa.0126.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2127.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bjo = load i32, ptr %i.b, align 4, !tbaa !138
  %i.bjp = trunc i32 %i.bjo to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0126.0.copyload, i32 %.sroa.2127.0.copyload, i8 noundef zeroext %i.bjp)
  %.sroa.0123.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2124.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bjq = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bjr = lshr i32 %i.bjq, 24
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0123.0.copyload, i32 %.sroa.2124.0.copyload, i32 noundef %i.bjr)
  br label %.loopexit1058

bb.ec:                                            ; preds = %bb.z
  %.sroa.2121.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bjs = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bjt = lshr i32 %i.bjs, 8
  %i.bju = and i32 %i.bjt, 255
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %.pre1218, i32 %.sroa.2121.0.copyload, i32 noundef %i.bju)
  %.sroa.0117.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2118.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bjv = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bjw = lshr i32 %i.bjv, 16
  %i.bjx = trunc i32 %i.bjw to i8
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE13addVmRegInputENS0_5BcRefINS0_6BcInstEEEh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0117.0.copyload, i32 %.sroa.2118.0.copyload, i8 noundef zeroext %i.bjx)
  %.sroa.0114.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.2115.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16 ; 2 uses
  %i.bjy = load i32, ptr %i.b, align 4, !tbaa !138
  %i.bjz = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.bka = lshr i32 %.sroa.2115.0.copyload, 4
  %i.bkb = zext nneg i32 %i.bka to i64
  %i.bkc = load ptr, ptr %.sroa.0114.0.copyload, align 8, !tbaa !194
  %i.bkd = getelementptr inbounds nuw [80 x i8], ptr %i.bkc, i64 %i.bkb ; 4 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 8 ; 3 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bkd, i64 16 ; 5 uses
  %i.bkg = load i32, ptr %i.bkf, align 8, !tbaa !216 ; 6 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkd, i64 20 ; 2 uses
  %i.bki = load i32, ptr %i.bkh, align 4, !tbaa !217
  %i.bkj = icmp eq i32 %i.bkg, %i.bki
  br i1 %i.bkj, label %bb.ed, label %._crit_edge.i.i.i832

._crit_edge.i.i.i832:                             ; preds = %bb.ec
  %.pre.i.i.i833 = load ptr, ptr %i.bke, align 8, !tbaa !218
  br label %_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit846

bb.ed:                                            ; preds = %bb.ec
  %i.bkk = add i32 %i.bkg, 1
  %i.bkl = lshr i32 %i.bkg, 1
  %i.bkm = add i32 %i.bkl, %i.bkg                 ; 2 uses
  %i.bkn = icmp ugt i32 %i.bkm, %i.bkk
  %i.bko = add i32 %i.bkg, 5
  %.09.i.i.i.i834 = select i1 %i.bkn, i32 %i.bkm, i32 %i.bko ; 2 uses
  %i.bkp = zext i32 %.09.i.i.i.i834 to i64
  %i.bkq = shl nuw nsw i64 %i.bkp, 2
  %i.bkr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bkq) #27 ; 6 uses
  %i.bks = load ptr, ptr %i.bke, align 8, !tbaa !218 ; 7 uses
  %i.bkt = load i32, ptr %i.bkf, align 8, !tbaa !216 ; 3 uses
  %i.bku = zext i32 %i.bkt to i64
  %.idx.i.i.i.i835 = shl nuw nsw i64 %i.bku, 2    ; 2 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bks, i64 %.idx.i.i.i.i835
  %.not11.i.i.i.i.i.i.i.i836 = icmp eq i32 %i.bkt, 0
  br i1 %.not11.i.i.i.i.i.i.i.i836, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i841, label %.lr.ph.i.i.i.i.i.i.i.i837.preheader

.lr.ph.i.i.i.i.i.i.i.i837.preheader:              ; preds = %bb.ed
  %i.bkw = ptrtoaddr ptr %i.bks to i64
  %i.bkx = ptrtoaddr ptr %i.bkr to i64
  %i.bky = add nsw i64 %.idx.i.i.i.i835, -4       ; 2 uses
  %i.bkz = lshr exact i64 %i.bky, 2
  %i.bla = add nuw nsw i64 %i.bkz, 1              ; 2 uses
  %min.iters.check1832 = icmp ult i64 %i.bky, 28
  %i.blb = sub i64 %i.bkw, %i.bkx
  %diff.check1830 = icmp ugt i64 %i.blb, -32
  %or.cond1967 = select i1 %min.iters.check1832, i1 true, i1 %diff.check1830
  br i1 %or.cond1967, label %.lr.ph.i.i.i.i.i.i.i.i837.preheader2008, label %vector.ph1833

vector.ph1833:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i837.preheader
  %n.vec1834 = and i64 %i.bla, 9223372036854775800 ; 3 uses
  %i.blc = shl i64 %n.vec1834, 2                  ; 2 uses
  %i.bld = getelementptr i8, ptr %i.bkr, i64 %i.blc
  %i.ble = getelementptr i8, ptr %i.bks, i64 %i.blc
  br label %vector.body1835

vector.body1835:                                  ; preds = %vector.body1835, %vector.ph1833
  %index1836 = phi i64 [ 0, %vector.ph1833 ], [ %index.next1841, %vector.body1835 ] ; 2 uses
  %i.blf = shl i64 %index1836, 2                  ; 2 uses
  %next.gep1837 = getelementptr i8, ptr %i.bkr, i64 %i.blf ; 2 uses
  %next.gep1838 = getelementptr i8, ptr %i.bks, i64 %i.blf ; 2 uses
  %i.blg = getelementptr i8, ptr %next.gep1838, i64 16
  %wide.load1839 = load <4 x i32>, ptr %next.gep1838, align 4, !tbaa !16
  %wide.load1840 = load <4 x i32>, ptr %i.blg, align 4, !tbaa !16
  %i.blh = getelementptr i8, ptr %next.gep1837, i64 16
  store <4 x i32> %wide.load1839, ptr %next.gep1837, align 4, !tbaa !16
  store <4 x i32> %wide.load1840, ptr %i.blh, align 4, !tbaa !16
  %index.next1841 = add nuw i64 %index1836, 8     ; 2 uses
  %i.bli = icmp eq i64 %index.next1841, %n.vec1834
  br i1 %i.bli, label %middle.block1842, label %vector.body1835, !llvm.loop !281

middle.block1842:                                 ; preds = %vector.body1835
  %cmp.n1843 = icmp eq i64 %i.bla, %n.vec1834
  br i1 %cmp.n1843, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i841, label %.lr.ph.i.i.i.i.i.i.i.i837.preheader2008

.lr.ph.i.i.i.i.i.i.i.i837.preheader2008:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i837.preheader, %middle.block1842
  %.013.i.i.i.i.i.i.i.i838.ph = phi ptr [ %i.bkr, %.lr.ph.i.i.i.i.i.i.i.i837.preheader ], [ %i.bld, %middle.block1842 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i839.ph = phi ptr [ %i.bks, %.lr.ph.i.i.i.i.i.i.i.i837.preheader ], [ %i.ble, %middle.block1842 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i837

.lr.ph.i.i.i.i.i.i.i.i837:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i837.preheader2008, %.lr.ph.i.i.i.i.i.i.i.i837
  %.013.i.i.i.i.i.i.i.i838 = phi ptr [ %i.bll, %.lr.ph.i.i.i.i.i.i.i.i837 ], [ %.013.i.i.i.i.i.i.i.i838.ph, %.lr.ph.i.i.i.i.i.i.i.i837.preheader2008 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i839 = phi ptr [ %i.blk, %.lr.ph.i.i.i.i.i.i.i.i837 ], [ %.sroa.08.012.i.i.i.i.i.i.i.i839.ph, %.lr.ph.i.i.i.i.i.i.i.i837.preheader2008 ] ; 2 uses
  %i.blj = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i839, align 4, !tbaa !16
  store i32 %i.blj, ptr %.013.i.i.i.i.i.i.i.i838, align 4, !tbaa !16
end_hunk_1
begin_hunk_2_@_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12rebuildGraphEPKjjRSt6vectorIjSaIjEESA_:bb.a
  %i.bnb = add i32 %i.bna, %i.bmv                 ; 2 uses
  %i.bnc = icmp ugt i32 %i.bnb, %i.bmz
  %i.bnd = add i32 %i.bmv, 5
  %.09.i.i.i850 = select i1 %i.bnc, i32 %i.bnb, i32 %i.bnd ; 2 uses
  %i.bne = zext i32 %.09.i.i.i850 to i64
  %i.bnf = shl nuw nsw i64 %i.bne, 2
  %i.bng = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bnf) #27 ; 6 uses
  %i.bnh = load ptr, ptr %i.bmt, align 8, !tbaa !218 ; 7 uses
  %i.bni = load i32, ptr %i.bmu, align 8, !tbaa !216 ; 3 uses
  %i.bnj = zext i32 %i.bni to i64
  %.idx.i.i.i851 = shl nuw nsw i64 %i.bnj, 2      ; 2 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnh, i64 %.idx.i.i.i851
  %.not11.i.i.i.i.i.i.i852 = icmp eq i32 %i.bni, 0
  br i1 %.not11.i.i.i.i.i.i.i852, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i857, label %.lr.ph.i.i.i.i.i.i.i853.preheader

.lr.ph.i.i.i.i.i.i.i853.preheader:                ; preds = %bb.eh
  %i.bnl = ptrtoaddr ptr %i.bnh to i64
  %i.bnm = ptrtoaddr ptr %i.bng to i64
  %i.bnn = add nsw i64 %.idx.i.i.i851, -4         ; 2 uses
  %i.bno = lshr exact i64 %i.bnn, 2
  %i.bnp = add nuw nsw i64 %i.bno, 1              ; 2 uses
  %min.iters.check1849 = icmp ult i64 %i.bnn, 28
  %i.bnq = sub i64 %i.bnl, %i.bnm
  %diff.check1847 = icmp ugt i64 %i.bnq, -32
  %or.cond1968 = select i1 %min.iters.check1849, i1 true, i1 %diff.check1847
  br i1 %or.cond1968, label %.lr.ph.i.i.i.i.i.i.i853.preheader2010, label %vector.ph1850

vector.ph1850:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i853.preheader
  %n.vec1851 = and i64 %i.bnp, 9223372036854775800 ; 3 uses
  %i.bnr = shl i64 %n.vec1851, 2                  ; 2 uses
  %i.bns = getelementptr i8, ptr %i.bng, i64 %i.bnr
  %i.bnt = getelementptr i8, ptr %i.bnh, i64 %i.bnr
  br label %vector.body1852

vector.body1852:                                  ; preds = %vector.body1852, %vector.ph1850
  %index1853 = phi i64 [ 0, %vector.ph1850 ], [ %index.next1858, %vector.body1852 ] ; 2 uses
  %i.bnu = shl i64 %index1853, 2                  ; 2 uses
  %next.gep1854 = getelementptr i8, ptr %i.bng, i64 %i.bnu ; 2 uses
  %next.gep1855 = getelementptr i8, ptr %i.bnh, i64 %i.bnu ; 2 uses
  %i.bnv = getelementptr i8, ptr %next.gep1855, i64 16
  %wide.load1856 = load <4 x i32>, ptr %next.gep1855, align 4, !tbaa !16
  %wide.load1857 = load <4 x i32>, ptr %i.bnv, align 4, !tbaa !16
  %i.bnw = getelementptr i8, ptr %next.gep1854, i64 16
  store <4 x i32> %wide.load1856, ptr %next.gep1854, align 4, !tbaa !16
  store <4 x i32> %wide.load1857, ptr %i.bnw, align 4, !tbaa !16
  %index.next1858 = add nuw i64 %index1853, 8     ; 2 uses
  %i.bnx = icmp eq i64 %index.next1858, %n.vec1851
  br i1 %i.bnx, label %middle.block1859, label %vector.body1852, !llvm.loop !283

middle.block1859:                                 ; preds = %vector.body1852
  %cmp.n1860 = icmp eq i64 %i.bnp, %n.vec1851
  br i1 %cmp.n1860, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i857, label %.lr.ph.i.i.i.i.i.i.i853.preheader2010

.lr.ph.i.i.i.i.i.i.i853.preheader2010:            ; preds = %.lr.ph.i.i.i.i.i.i.i853.preheader, %middle.block1859
  %.013.i.i.i.i.i.i.i854.ph = phi ptr [ %i.bng, %.lr.ph.i.i.i.i.i.i.i853.preheader ], [ %i.bns, %middle.block1859 ]
  %.sroa.08.012.i.i.i.i.i.i.i855.ph = phi ptr [ %i.bnh, %.lr.ph.i.i.i.i.i.i.i853.preheader ], [ %i.bnt, %middle.block1859 ]
  br label %.lr.ph.i.i.i.i.i.i.i853

.lr.ph.i.i.i.i.i.i.i853:                          ; preds = %.lr.ph.i.i.i.i.i.i.i853.preheader2010, %.lr.ph.i.i.i.i.i.i.i853
  %.013.i.i.i.i.i.i.i854 = phi ptr [ %i.boa, %.lr.ph.i.i.i.i.i.i.i853 ], [ %.013.i.i.i.i.i.i.i854.ph, %.lr.ph.i.i.i.i.i.i.i853.preheader2010 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i855 = phi ptr [ %i.bnz, %.lr.ph.i.i.i.i.i.i.i853 ], [ %.sroa.08.012.i.i.i.i.i.i.i855.ph, %.lr.ph.i.i.i.i.i.i.i853.preheader2010 ] ; 2 uses
  %i.bny = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i855, align 4, !tbaa !16
  store i32 %i.bny, ptr %.013.i.i.i.i.i.i.i854, align 4, !tbaa !16
  %i.bnz = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i855, i64 4 ; 2 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i854, i64 4
  %.not.i.i.i.i.i.i.i856 = icmp eq ptr %i.bnz, %i.bnk
  br i1 %.not.i.i.i.i.i.i.i856, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i857, label %.lr.ph.i.i.i.i.i.i.i853, !llvm.loop !284

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i857: ; preds = %.lr.ph.i.i.i.i.i.i.i853, %middle.block1859, %bb.eh
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bms, i64 24
  %.not.i.i.i858 = icmp eq ptr %i.bnh, %i.bob
  br i1 %.not.i.i.i858, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i860, label %bb.ei

bb.ei:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i857
  call void @_ZdlPv(ptr noundef %i.bnh) #23
  %.pre2.pre.i.i859 = load i32, ptr %i.bmu, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i860

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i860: ; preds = %bb.ei, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i857
  %.pre2.i.i861 = phi i32 [ %i.bni, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i857 ], [ %.pre2.pre.i.i859, %bb.ei ]
  store ptr %i.bng, ptr %i.bmt, align 8, !tbaa !218
  store i32 %.09.i.i.i850, ptr %i.bmw, align 4, !tbaa !217
  br label %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit862

_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit862: ; preds = %._crit_edge.i.i847, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i860
  %i.boc = phi i32 [ %i.bmv, %._crit_edge.i.i847 ], [ %.pre2.i.i861, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i860 ]
  %i.bod = phi ptr [ %.pre.i.i848, %._crit_edge.i.i847 ], [ %i.bng, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i860 ]
  %i.boe = zext i32 %i.boc to i64
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %i.bod, i64 %i.boe
  store i32 %i.bmo, ptr %i.bof, align 4, !tbaa !16
  %i.bog = load i32, ptr %i.bmu, align 8, !tbaa !216
  %i.boh = add i32 %i.bog, 1
  store i32 %i.boh, ptr %i.bmu, align 8, !tbaa !216
  call void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.bmk, i32 %i.bmo, i32 %.sroa.294.0.copyload)
  %i.boi = load i32, ptr %i.a, align 4, !tbaa !138
  %i.boj = lshr i32 %i.boi, 16                    ; 2 uses
  %i.bok = and i32 %i.boj, 255
  %i.bol = add nsw i32 %i.bok, -1                 ; 2 uses
  %.sroa.087.0.copyload = load ptr, ptr %6, align 8, !tbaa !215
  %.sroa.288.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.087.0.copyload, i32 %.sroa.288.0.copyload, i32 noundef %i.bol)
  %i.bom = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bon = lshr i32 %i.bom, 8
  %i.boo = trunc i32 %i.bon to i8
  %i.bop = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168 ; 2 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 400 ; 2 uses
  %.0.copyload.i.i.i.i863 = load i32, ptr %5, align 4 ; 4 uses
  %.0.insert.ext.i.i.i.i864 = zext i32 %.0.copyload.i.i.i.i863 to i64 ; 4 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bop, i64 408
  %i.bos = load i64, ptr %i.bor, align 8, !tbaa !25 ; 2 uses
  %i.bot = urem i64 %.0.insert.ext.i.i.i.i864, %i.bos ; 3 uses
  %i.bou = load ptr, ptr %i.boq, align 8, !tbaa !17
  %i.bov = getelementptr inbounds nuw [8 x i8], ptr %i.bou, i64 %i.bot
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i865 = icmp eq ptr %i.bow, null
  br i1 %.not.i.i.i.i865, label %.loopexit.i.i871, label %bb.ej

bb.ej:                                            ; preds = %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit862
  %i.box = load ptr, ptr %i.bow, align 8, !tbaa !245 ; 4 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 8
  %i.boz = getelementptr inbounds nuw i8, ptr %i.box, i64 16
  %i.bpa = load i64, ptr %i.boz, align 8, !tbaa !246
  %i.bpb = icmp eq i64 %i.bpa, %.0.insert.ext.i.i.i.i864
  %i.bpc = load i32, ptr %i.boy, align 8
  %i.bpd = icmp eq i32 %.0.copyload.i.i.i.i863, %i.bpc
  %i.bpe = select i1 %i.bpb, i1 %i.bpd, i1 false
  br i1 %i.bpe, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit875, label %.lr.ph.i.i.i.i866

bb.ek:                                            ; preds = %bb.el
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpk, i64 8
  %i.bpg = icmp eq i64 %i.bpm, %.0.insert.ext.i.i.i.i864
  %i.bph = load i32, ptr %i.bpf, align 8
  %i.bpi = icmp eq i32 %.0.copyload.i.i.i.i863, %i.bph
  %i.bpj = select i1 %i.bpg, i1 %i.bpi, i1 false
  br i1 %i.bpj, label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit875, label %.lr.ph.i.i.i.i866, !llvm.loop !248

.lr.ph.i.i.i.i866:                                ; preds = %bb.ej, %bb.ek
  %.020.i.i.i.i867 = phi ptr [ %i.bpk, %bb.ek ], [ %i.box, %bb.ej ]
  %i.bpk = load ptr, ptr %.020.i.i.i.i867, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i.i.i868 = icmp eq ptr %i.bpk, null
  br i1 %.not18.i.i.i.i868, label %.loopexit.i.i871, label %bb.el

bb.el:                                            ; preds = %.lr.ph.i.i.i.i866
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 16
  %i.bpm = load i64, ptr %i.bpl, align 8, !tbaa !246 ; 2 uses
  %i.bpn = urem i64 %i.bpm, %i.bos
  %.not19.i.i.i.i869 = icmp eq i64 %i.bpn, %i.bot
  br i1 %.not19.i.i.i.i869, label %bb.ek, label %..loopexit_crit_edge21.i.i.i.i870, !llvm.loop !248

..loopexit_crit_edge21.i.i.i.i870:                ; preds = %bb.el
  br label %.loopexit.i.i871, !llvm.loop !248

.loopexit.i.i871:                                 ; preds = %.lr.ph.i.i.i.i866, %..loopexit_crit_edge21.i.i.i.i870, %_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE6addUseENS0_5BcRefINS0_6BcInstEEENS0_4BcOpE.exit862
  %i.bpo = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  store ptr null, ptr %i.bpo, align 8, !tbaa !245
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 8
  store i32 %.0.copyload.i.i.i.i863, ptr %i.bpp, align 8, !tbaa !16
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpo, i64 12
  store i8 0, ptr %i.bpq, align 4, !tbaa !249
  %i.bpr = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.boq, i64 noundef %i.bot, i64 noundef %.0.insert.ext.i.i.i.i864, ptr noundef nonnull %i.bpo, i64 noundef 1)
          to label %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit875 unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i872

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i872: ; preds = %.loopexit.i.i871
  %i.bps = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bpo, i64 noundef 24) #25
  br label %common.resume

_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit875: ; preds = %bb.ek, %bb.ej, %.loopexit.i.i871
  %.pn.i.i873 = phi ptr [ %i.bpr, %.loopexit.i.i871 ], [ %i.box, %bb.ej ], [ %i.bpk, %bb.ek ]
  %.1.i.i874 = getelementptr inbounds nuw i8, ptr %.pn.i.i873, i64 12
  store i8 %i.boo, ptr %.1.i.i874, align 1, !tbaa !16
  %trunc1439 = trunc i32 %i.boj to i8
  switch i8 %trunc1439, label %.lr.ph1113 [
    i8 0, label %bb.em
    i8 1, label %.loopexit1058
  ]

bb.em:                                            ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit875
  %i.bpt = load i32, ptr %i.ar, align 8
  %i.bpu = lshr i32 %i.bpt, 4
  %i.bpv = zext nneg i32 %i.bpu to i64
  %i.bpw = load ptr, ptr %i.h, align 8, !tbaa !172
  %i.bpx = getelementptr inbounds nuw [192 x i8], ptr %i.bpw, i64 %i.bpv ; 3 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 112
  %i.bpz = load i32, ptr %5, align 4, !tbaa !16
  store i32 %i.bpz, ptr %i.bpy, align 8, !tbaa !16
  %i.bqa = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bqb = lshr i32 %i.bqa, 8
  %i.bqc = trunc i32 %i.bqb to i8
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpx, i64 116
  store i8 %i.bqc, ptr %i.bqd, align 4, !tbaa !285
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bpx, i64 120
  store i32 255, ptr %i.bqe, align 8, !tbaa !286
  br label %.loopexit1058

.lr.ph1113:                                       ; preds = %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit875, %.lr.ph1113
  %.05191112 = phi i32 [ %i.bql, %.lr.ph1113 ], [ 0, %_ZNSt13unordered_mapIN4Luau8Bytecode4BcOpEhNS1_8BcOpHashESt8equal_toIS2_ESaISt4pairIKS2_hEEEixERS7_.exit875 ] ; 3 uses
  %i.bqf = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bqg = lshr i32 %i.bqf, 8
  %i.bqh = add nuw i32 %i.bqg, %.05191112
  %i.bqi = trunc i32 %i.bqh to i8
  %i.bqj = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %.sroa.079.0.copyload = load i32, ptr %5, align 4, !tbaa !16
  %i.bqk = call i32 @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE7addProjENS0_4BcOpEj(ptr noundef nonnull align 8 dereferenceable(456) %i.bqj, i32 %.sroa.079.0.copyload, i32 noundef %.05191112)
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %i.bqi, i32 %i.bqk)
  %i.bql = add nuw nsw i32 %.05191112, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.bql, %i.bol
  br i1 %exitcond.not, label %.loopexit1058, label %.lr.ph1113, !llvm.loop !287

bb.en:                                            ; preds = %bb.z
  %.sroa.277.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16 ; 2 uses
  %i.bqm = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bqn = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.bqo = lshr i32 %.sroa.277.0.copyload, 4
  %i.bqp = zext nneg i32 %i.bqo to i64
  %i.bqq = load ptr, ptr %.pre1218, align 8, !tbaa !194
  %i.bqr = getelementptr inbounds nuw [80 x i8], ptr %i.bqq, i64 %i.bqp ; 4 uses
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 8 ; 3 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqr, i64 16 ; 5 uses
  %i.bqu = load i32, ptr %i.bqt, align 8, !tbaa !216 ; 6 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqr, i64 20 ; 2 uses
  %i.bqw = load i32, ptr %i.bqv, align 4, !tbaa !217
  %i.bqx = icmp eq i32 %i.bqu, %i.bqw
  br i1 %i.bqx, label %bb.eo, label %._crit_edge.i.i.i876

._crit_edge.i.i.i876:                             ; preds = %bb.en
  %.pre.i.i.i877 = load ptr, ptr %i.bqs, align 8, !tbaa !218
  br label %_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit890

bb.eo:                                            ; preds = %bb.en
  %i.bqy = add i32 %i.bqu, 1
  %i.bqz = lshr i32 %i.bqu, 1
  %i.bra = add i32 %i.bqz, %i.bqu                 ; 2 uses
  %i.brb = icmp ugt i32 %i.bra, %i.bqy
  %i.brc = add i32 %i.bqu, 5
  %.09.i.i.i.i878 = select i1 %i.brb, i32 %i.bra, i32 %i.brc ; 2 uses
  %i.brd = zext i32 %.09.i.i.i.i878 to i64
  %i.bre = shl nuw nsw i64 %i.brd, 2
  %i.brf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bre) #27 ; 6 uses
  %i.brg = load ptr, ptr %i.bqs, align 8, !tbaa !218 ; 7 uses
  %i.brh = load i32, ptr %i.bqt, align 8, !tbaa !216 ; 3 uses
  %i.bri = zext i32 %i.brh to i64
  %.idx.i.i.i.i879 = shl nuw nsw i64 %i.bri, 2    ; 2 uses
  %i.brj = getelementptr inbounds nuw i8, ptr %i.brg, i64 %.idx.i.i.i.i879
  %.not11.i.i.i.i.i.i.i.i880 = icmp eq i32 %i.brh, 0
  br i1 %.not11.i.i.i.i.i.i.i.i880, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i885, label %.lr.ph.i.i.i.i.i.i.i.i881.preheader

.lr.ph.i.i.i.i.i.i.i.i881.preheader:              ; preds = %bb.eo
  %i.brk = ptrtoaddr ptr %i.brg to i64
  %i.brl = ptrtoaddr ptr %i.brf to i64
  %i.brm = add nsw i64 %.idx.i.i.i.i879, -4       ; 2 uses
  %i.brn = lshr exact i64 %i.brm, 2
  %i.bro = add nuw nsw i64 %i.brn, 1              ; 2 uses
  %min.iters.check1866 = icmp ult i64 %i.brm, 28
  %i.brp = sub i64 %i.brk, %i.brl
  %diff.check1864 = icmp ugt i64 %i.brp, -32
  %or.cond1969 = select i1 %min.iters.check1866, i1 true, i1 %diff.check1864
  br i1 %or.cond1969, label %.lr.ph.i.i.i.i.i.i.i.i881.preheader2011, label %vector.ph1867

vector.ph1867:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i881.preheader
  %n.vec1868 = and i64 %i.bro, 9223372036854775800 ; 3 uses
  %i.brq = shl i64 %n.vec1868, 2                  ; 2 uses
  %i.brr = getelementptr i8, ptr %i.brf, i64 %i.brq
  %i.brs = getelementptr i8, ptr %i.brg, i64 %i.brq
  br label %vector.body1869

vector.body1869:                                  ; preds = %vector.body1869, %vector.ph1867
  %index1870 = phi i64 [ 0, %vector.ph1867 ], [ %index.next1875, %vector.body1869 ] ; 2 uses
  %i.brt = shl i64 %index1870, 2                  ; 2 uses
  %next.gep1871 = getelementptr i8, ptr %i.brf, i64 %i.brt ; 2 uses
  %next.gep1872 = getelementptr i8, ptr %i.brg, i64 %i.brt ; 2 uses
  %i.bru = getelementptr i8, ptr %next.gep1872, i64 16
  %wide.load1873 = load <4 x i32>, ptr %next.gep1872, align 4, !tbaa !16
  %wide.load1874 = load <4 x i32>, ptr %i.bru, align 4, !tbaa !16
  %i.brv = getelementptr i8, ptr %next.gep1871, i64 16
  store <4 x i32> %wide.load1873, ptr %next.gep1871, align 4, !tbaa !16
  store <4 x i32> %wide.load1874, ptr %i.brv, align 4, !tbaa !16
  %index.next1875 = add nuw i64 %index1870, 8     ; 2 uses
  %i.brw = icmp eq i64 %index.next1875, %n.vec1868
  br i1 %i.brw, label %middle.block1876, label %vector.body1869, !llvm.loop !288

middle.block1876:                                 ; preds = %vector.body1869
  %cmp.n1877 = icmp eq i64 %i.bro, %n.vec1868
  br i1 %cmp.n1877, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i885, label %.lr.ph.i.i.i.i.i.i.i.i881.preheader2011

.lr.ph.i.i.i.i.i.i.i.i881.preheader2011:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i881.preheader, %middle.block1876
  %.013.i.i.i.i.i.i.i.i882.ph = phi ptr [ %i.brf, %.lr.ph.i.i.i.i.i.i.i.i881.preheader ], [ %i.brr, %middle.block1876 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i883.ph = phi ptr [ %i.brg, %.lr.ph.i.i.i.i.i.i.i.i881.preheader ], [ %i.brs, %middle.block1876 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i881

.lr.ph.i.i.i.i.i.i.i.i881:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i881.preheader2011, %.lr.ph.i.i.i.i.i.i.i.i881
  %.013.i.i.i.i.i.i.i.i882 = phi ptr [ %i.brz, %.lr.ph.i.i.i.i.i.i.i.i881 ], [ %.013.i.i.i.i.i.i.i.i882.ph, %.lr.ph.i.i.i.i.i.i.i.i881.preheader2011 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i883 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i.i.i.i.i881 ], [ %.sroa.08.012.i.i.i.i.i.i.i.i883.ph, %.lr.ph.i.i.i.i.i.i.i.i881.preheader2011 ] ; 2 uses
  %i.brx = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i883, align 4, !tbaa !16
  store i32 %i.brx, ptr %.013.i.i.i.i.i.i.i.i882, align 4, !tbaa !16
  %i.bry = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i883, i64 4 ; 2 uses
  %i.brz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i882, i64 4
  %.not.i.i.i.i.i.i.i.i884 = icmp eq ptr %i.bry, %i.brj
  br i1 %.not.i.i.i.i.i.i.i.i884, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i885, label %.lr.ph.i.i.i.i.i.i.i.i881, !llvm.loop !289

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i885: ; preds = %.lr.ph.i.i.i.i.i.i.i.i881, %middle.block1876, %bb.eo
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bqr, i64 24
  %.not.i.i.i.i886 = icmp eq ptr %i.brg, %i.bsa
  br i1 %.not.i.i.i.i886, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i888, label %bb.ep

bb.ep:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i885
  call void @_ZdlPv(ptr noundef %i.brg) #23
  %.pre2.pre.i.i.i887 = load i32, ptr %i.bqt, align 8, !tbaa !216
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i888

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i888: ; preds = %bb.ep, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i885
  %.pre2.i.i.i889 = phi i32 [ %i.brh, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i885 ], [ %.pre2.pre.i.i.i887, %bb.ep ]
  store ptr %i.brf, ptr %i.bqs, align 8, !tbaa !218
  store i32 %.09.i.i.i.i878, ptr %i.bqv, align 4, !tbaa !217
  br label %_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit890

_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit890: ; preds = %._crit_edge.i.i.i876, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i888
  %i.bsb = phi i32 [ %i.bqu, %._crit_edge.i.i.i876 ], [ %.pre2.i.i.i889, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i888 ]
  %i.bsc = phi ptr [ %.pre.i.i.i877, %._crit_edge.i.i.i876 ], [ %i.brf, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i.i.i888 ]
  %i.bsd = ashr i32 %i.bqm, 12
  %i.bse = and i32 %i.bsd, -16
  %i.bsf = or disjoint i32 %i.bse, 7              ; 2 uses
  %i.bsg = zext i32 %i.bsb to i64
  %i.bsh = getelementptr inbounds nuw [4 x i8], ptr %i.bsc, i64 %i.bsg
  store i32 %i.bsf, ptr %i.bsh, align 4, !tbaa !16
  %i.bsi = load i32, ptr %i.bqt, align 8, !tbaa !216
  %i.bsj = add i32 %i.bsi, 1
  store i32 %i.bsj, ptr %i.bqt, align 8, !tbaa !216
  call void @_ZN4Luau8Bytecode10BcFunctionIP10lua_TValueE9recordUseENS0_4BcOpES5_(ptr noundef nonnull align 8 dereferenceable(456) %i.bqn, i32 %i.bsf, i32 %.sroa.277.0.copyload)
  %i.bsk = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bsl = lshr i32 %i.bsk, 8
  %i.bsm = trunc i32 %i.bsl to i8
  %.sroa.075.0.copyload = load i32, ptr %5, align 4, !tbaa !16
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addProducerEhNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %i.bsm, i32 %.sroa.075.0.copyload)
  br label %.loopexit1058

bb.eq:                                            ; preds = %bb.z
  %.sroa.273.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16
  %i.bsn = load i32, ptr %i.a, align 4, !tbaa !138
  %i.bso = lshr i32 %i.bsn, 8
  %i.bsp = and i32 %i.bso, 255
  call void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE11addImmInputENS0_5BcRefINS0_6BcInstEEEi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %.pre1218, i32 %.sroa.273.0.copyload, i32 noundef %i.bsp)
  br label %.loopexit1058

bb.er:                                            ; preds = %bb.z
  %.sroa.270.0.copyload = load i32, ptr %.sroa.2460.0..sroa_idx, align 8, !tbaa !16 ; 2 uses
  %i.bsq = load i32, ptr %i.b, align 4, !tbaa !138
  %i.bsr = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.bss = lshr i32 %.sroa.270.0.copyload, 4
  %i.bst = zext nneg i32 %i.bss to i64
  %i.bsu = load ptr, ptr %.pre1218, align 8, !tbaa !194
  %i.bsv = getelementptr inbounds nuw [80 x i8], ptr %i.bsu, i64 %i.bst ; 4 uses
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 8 ; 3 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsv, i64 16 ; 5 uses
  %i.bsy = load i32, ptr %i.bsx, align 8, !tbaa !216 ; 6 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsv, i64 20 ; 2 uses
  %i.bta = load i32, ptr %i.bsz, align 4, !tbaa !217
  %i.btb = icmp eq i32 %i.bsy, %i.bta
  br i1 %i.btb, label %bb.es, label %._crit_edge.i.i.i891

._crit_edge.i.i.i891:                             ; preds = %bb.er
  %.pre.i.i.i892 = load ptr, ptr %i.bsw, align 8, !tbaa !218
  br label %_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE15addVmConstInputENS0_5BcRefINS0_6BcInstEEEj.exit905

bb.es:                                            ; preds = %bb.er
  %i.btc = add i32 %i.bsy, 1
  %i.btd = lshr i32 %i.bsy, 1
  %i.bte = add i32 %i.btd, %i.bsy                 ; 2 uses
  %i.btf = icmp ugt i32 %i.bte, %i.btc
  %i.btg = add i32 %i.bsy, 5
  %.09.i.i.i.i893 = select i1 %i.btf, i32 %i.bte, i32 %i.btg ; 2 uses
  %i.bth = zext i32 %.09.i.i.i.i893 to i64
  %i.bti = shl nuw nsw i64 %i.bth, 2
  %i.btj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bti) #27 ; 6 uses
  %i.btk = load ptr, ptr %i.bsw, align 8, !tbaa !218 ; 7 uses
  %i.btl = load i32, ptr %i.bsx, align 8, !tbaa !216 ; 3 uses
  %i.btm = zext i32 %i.btl to i64
  %.idx.i.i.i.i894 = shl nuw nsw i64 %i.btm, 2    ; 2 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btk, i64 %.idx.i.i.i.i894
  %.not11.i.i.i.i.i.i.i.i895 = icmp eq i32 %i.btl, 0
  br i1 %.not11.i.i.i.i.i.i.i.i895, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i.i900, label %.lr.ph.i.i.i.i.i.i.i.i896.preheader

.lr.ph.i.i.i.i.i.i.i.i896.preheader:              ; preds = %bb.es
  %i.bto = ptrtoaddr ptr %i.btk to i64
  %i.btp = ptrtoaddr ptr %i.btj to i64
  %i.btq = add nsw i64 %.idx.i.i.i.i894, -4       ; 2 uses
  %i.btr = lshr exact i64 %i.btq, 2
  %i.bts = add nuw nsw i64 %i.btr, 1              ; 2 uses
  %min.iters.check1883 = icmp ult i64 %i.btq, 28
  %i.btt = sub i64 %i.bto, %i.btp
  %diff.check1881 = icmp ugt i64 %i.btt, -32
  %or.cond1970 = select i1 %min.iters.check1883, i1 true, i1 %diff.check1881
  br i1 %or.cond1970, label %.lr.ph.i.i.i.i.i.i.i.i896.preheader2012, label %vector.ph1884

vector.ph1884:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i896.preheader
  %n.vec1885 = and i64 %i.bts, 9223372036854775800 ; 3 uses
  %i.btu = shl i64 %n.vec1885, 2                  ; 2 uses
  %i.btv = getelementptr i8, ptr %i.btj, i64 %i.btu
  %i.btw = getelementptr i8, ptr %i.btk, i64 %i.btu
  br label %vector.body1886
end_hunk_2
