inline.NumInlined: 1002
inline.NumDeleted: 561
begin_hunk_0_@_ZN6Assimp15ObjFileImporter14createTopologyEPKNS_7ObjFile5ModelEPKNS1_6ObjectEj:bb.a
  br i1 %i.cm, label %.lr.ph, label %._crit_edge, !llvm.loop !38

bb.m:                                             ; preds = %._crit_edge
  %i.cn = zext i32 %.pre to i64                   ; 5 uses
  %i.co = shl nuw nsw i64 %i.cn, 4
  %i.cp = or disjoint i64 %i.co, 8
  %i.cq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #25
end_hunk_0
begin_hunk_1_@_ZN6Assimp15ObjFileImporter14createTopologyEPKNS_7ObjFile5ModelEPKNS1_6ObjectEj:bb.a

bb.n:                                             ; preds = %bb.m
  store i64 %i.cn, ptr %i.cq, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cn
  %5 = add nuw nsw i64 %i.cn, 1152921504606846975
  %6 = and i64 %5, 1152921504606846975
  %xtraiter = and i64 %i.cn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.n, %.prol.preheader
  %7 = phi ptr [ %9, %.prol.preheader ], [ %i.cr, %bb.n ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.n ]
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !39

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.n
  %.unr = phi ptr [ %i.cr, %bb.n ], [ %9, %.prol.preheader ]
  %10 = icmp samesign ult i64 %6, 7
  br i1 %10, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.prol.loopexit, %bb.o
  %i.ct = phi ptr [ %i.cv, %bb.o ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ct, align 8
  %11 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  store ptr null, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %i.ct, i64 96
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  store ptr null, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %i.ct, i64 112
  store i32 0, ptr %24, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  store ptr null, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 128 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cs
  br i1 %i.cw, label %bb.p, label %bb.o

bb.p:                                             ; preds = %bb.o, %.prol.loopexit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 208
  store ptr %i.cr, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 100
end_hunk_1
begin_hunk_2_@_ZN6Assimp15ObjFileImporter14createTopologyEPKNS_7ObjFile5ModelEPKNS1_6ObjectEj:bb.a
  %i.eh = ashr exact i64 %i.eg, 2
  %i.ei = add nsw i64 %i.eh, -1
  %i.ej = icmp ult i64 %i.eb, %i.ei
  br i1 %i.ej, label %.lr.ph107, label %.loopexit, !llvm.loop !41

bb.u:                                             ; preds = %.lr.ph107
  %i.ek = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN6Assimp15ObjFileImporter14createTopologyEPKNS_7ObjFile5ModelEPKNS1_6ObjectEj:bb.a
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 2
  %i.ez = icmp ult i64 %i.es, %i.ey
  br i1 %i.ez, label %.lr.ph102, label %.loopexit, !llvm.loop !42

bb.w:                                             ; preds = %.lr.ph102
  %i.fa = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN6Assimp15ObjFileImporter17createVertexArrayEPKNS_7ObjFile5ModelEPKNS1_6ObjectEjP6aiMeshj:bb.a
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %i.gy, i64 %i.gd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ha, ptr noundef nonnull align 4 dereferenceable(12) %i.gz, i64 12, i1 false)
  %i.hb = add nuw nsw i64 %.0, 1
  br label %.preheader, !llvm.loop !43

.loopexit:                                        ; preds = %.preheader, %bb.ay, %bb.aq
  %.2147 = phi i32 [ %.1146216, %bb.aq ], [ %i.fy, %bb.ay ], [ %i.fy, %.preheader ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6Assimp15ObjFileImporter17createVertexArrayEPKNS_7ObjFile5ModelEPKNS1_6ObjectEjP6aiMeshj:bb.a
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 2
  %i.hp = icmp ult i64 %i.hi, %i.ho
  br i1 %i.hp, label %_ZNSt6vectorIjSaIjEE2atEm.exit, label %._crit_edge, !llvm.loop !44

bb.bc:                                            ; preds = %._crit_edge229
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !54
  store i8 0, ptr %i.a, align 8, !alias.scope !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !54 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !54 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_6
begin_hunk_7_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !54 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
end_hunk_7
begin_hunk_8_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !54 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

end_hunk_8
begin_hunk_9_@_ZN6Assimp7ObjFile4MeshD2Ev:bb.a
  %i.an = phi ptr [ %i.p, %.lr.ph ], [ %.pre, %_ZN6Assimp7ObjFile4FaceD2Ev.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.an
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !55
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
end_hunk_9
begin_hunk_10_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E:bb.a
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
end_hunk_10
begin_hunk_11_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E:bb.a
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
end_hunk_11
begin_hunk_12_@_ZN6aiMeshD2Ev:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = icmp samesign ult i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge56:                                    ; preds = %bb.bd, %._crit_edge
  %i.dh = load ptr, ptr %i.cs, align 8            ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN6aiMeshD2Ev:bb.a
  %i.dr = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #23
  %.not.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !59

_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.bf
  %i.ds = load ptr, ptr %2, align 8
end_hunk_13
begin_hunk_14_@_ZN6aiMeshD2Ev:bb.a
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next67, %i.ek
  br i1 %i.el, label %.lr.ph58, label %._crit_edge59, !llvm.loop !60

bb.bl:                                            ; preds = %._crit_edge59
  call void @_ZdaPv(ptr noundef nonnull %.pre79) #23
end_hunk_14
begin_hunk_15_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !61

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
end_hunk_15
begin_hunk_16_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq ptr %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !62

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
end_hunk_16
begin_hunk_17_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !62

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !62

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
end_hunk_17
begin_hunk_18_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE
define linkonce_odr hidden void @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_18
begin_hunk_19_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !63

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
end_hunk_19
begin_hunk_20_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
end_hunk_20
begin_hunk_21_@llvm.ctpop.i8
!36 = distinct !{!36, !4, !37}
!37 = !{!"llvm.loop.unswitch.partial.disable"}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !4}
!42 = distinct !{!42, !4}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!47 = distinct !{!47, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!50 = distinct !{!50, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!53 = distinct !{!53, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!54 = !{!52, !49, !46}
!55 = distinct !{!55, !4}
!56 = distinct !{!56, !4}
!57 = distinct !{!57, !4}
!58 = distinct !{!58, !4}
!59 = distinct !{!59, !4}
!60 = distinct !{!60, !4}
!61 = distinct !{!61, !4}
!62 = distinct !{!62, !4}
!63 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!64 = distinct !{!64, !4}
end_hunk_21
