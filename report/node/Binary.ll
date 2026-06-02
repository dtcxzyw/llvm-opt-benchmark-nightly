inline.NumInlined: 7358
inline.NumDeleted: 3045
begin_hunk_0_@_ZNK4LIEF5MachO6Binary11relocationsEv:bb.a
  br i1 %.not4649, label %._crit_edge53, label %.lr.ph52

.lr.ph:                                           ; preds = %bb.a, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_0ET0_T_SP_SO_T1_.exit"
  %.sroa.043.048 = phi ptr [ %i.ao, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_0ET0_T_SP_SO_T1_.exit" ], [ %i.i, %bb.a ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.043.048, align 8    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.r, %i.t
  br i1 %.not5.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_0ET0_T_SP_SO_T1_.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.e, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i
  %.sroa.02.07.i = phi ptr [ %i.an, %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i ], [ %i.r, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.3.06.i = phi ptr [ %i.am, %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i ], [ %i.u, %.lr.ph.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.val.i = load ptr, ptr %.sroa.02.07.i, align 8
  store ptr %.val.i, ptr %i.b, align 8
  %i.v = call { ptr, ptr } @_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.sroa.3.06.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1        ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.i.i.i = icmp ne ptr %i.w, null
  %i.y = icmp eq ptr %i.x, %i.c
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %i.y
  br i1 %or.cond.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(17) %i.z, ptr noundef nonnull align 8 dereferenceable(17) %i.ab) #22, !inline_history !61
  br label %_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i.i.i

_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.ag = phi i1 [ %i.af, %bb.c ], [ true, %bb.b ]
  %i.ah = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.b, align 8
  store ptr %i.aj, ptr %i.ai, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ag, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #22
  %i.ak = load i64, ptr %i.g, align 8
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.g, align 8
  br label %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i

_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i: ; preds = %_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i.i.i, %.lr.ph.i
  %.sroa.08.0.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i.i.i ], [ %i.w, %.lr.ph.i ]
  %i.am = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.08.0.i.i.i.i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.an, %i.t
  br i1 %.not.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_0ET0_T_SP_SO_T1_.exit", label %.lr.ph.i, !llvm.loop !62

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_0ET0_T_SP_SO_T1_.exit": ; preds = %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i, %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.043.048, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge53:                                    ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_1ET0_T_SP_SO_T1_.exit", %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  call void @_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 5 uses
  store ptr null, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  store ptr %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %i.as, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  store i64 0, ptr %i.av, align 8
  %i.aw = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt3setIPN4LIEF5MachO10RelocationENS1_6Binary6KeyCmpESaIS3_EEaSEOS7_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge53
  %i.ax = load i32, ptr %i.c, align 8
  store i32 %i.ax, ptr %i.as, align 8
  store ptr %i.aw, ptr %i.aq, align 8
  %i.ay = load <2 x ptr>, ptr %i.e, align 8
  store <2 x ptr> %i.ay, ptr %i.at, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.as, ptr %i.az, align 8
  %i.ba = load i64, ptr %i.g, align 8
  store i64 %i.ba, ptr %i.av, align 8
  store ptr null, ptr %i.d, align 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr %i.c, ptr %i.f, align 8
  store i64 0, ptr %i.g, align 8
  %.pre = load ptr, ptr %i.at, align 8
  br label %_ZNSt3setIPN4LIEF5MachO10RelocationENS1_6Binary6KeyCmpESaIS3_EEaSEOS7_.exit

_ZNSt3setIPN4LIEF5MachO10RelocationENS1_6Binary6KeyCmpESaIS3_EEaSEOS7_.exit: ; preds = %._crit_edge53, %bb.d
  %i.bb = phi ptr [ %i.as, %._crit_edge53 ], [ %.pre, %bb.d ]
  store ptr %i.ap, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bd, align 8
  store ptr %i.bb, ptr %i.bc, align 8
  call void @_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

.lr.ph52:                                         ; preds = %._crit_edge, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_1ET0_T_SP_SO_T1_.exit"
  %.sroa.039.050 = phi ptr [ %i.cd, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_1ET0_T_SP_SO_T1_.exit" ], [ %i.m, %._crit_edge ] ; 2 uses
  %i.be = load ptr, ptr %.sroa.039.050, align 8   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 168
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 176
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not5.i24 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not5.i24, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_1ET0_T_SP_SO_T1_.exit", label %.lr.ph.i25.preheader

.lr.ph.i25.preheader:                             ; preds = %.lr.ph52
  %i.bj = load ptr, ptr %i.e, align 8
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.preheader, %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i33
  %.sroa.02.07.i26 = phi ptr [ %i.cc, %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i33 ], [ %i.bg, %.lr.ph.i25.preheader ] ; 2 uses
  %.sroa.3.06.i27 = phi ptr [ %i.cb, %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i33 ], [ %i.bj, %.lr.ph.i25.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %.val.i28 = load ptr, ptr %.sroa.02.07.i26, align 8
  store ptr %.val.i28, ptr %i.a, align 8
  %i.bk = call { ptr, ptr } @_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.sroa.3.06.i27, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1      ; 4 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i29, label %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i33, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i25
  %.not.i.i.i.i.i.i30 = icmp ne ptr %i.bl, null
  %i.bn = icmp eq ptr %i.bm, %i.c
  %or.cond.i.i.i.i.i.i31 = or i1 %.not.i.i.i.i.i.i30, %i.bn
  br i1 %or.cond.i.i.i.i.i.i31, label %_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i.i.i32, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.bo, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(17) %i.bo, ptr noundef nonnull align 8 dereferenceable(17) %i.bq) #22, !inline_history !63
  br label %_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i.i.i32

_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i.i.i32: ; preds = %bb.f, %bb.e
  %i.bv = phi i1 [ %i.bu, %bb.f ], [ true, %bb.e ]
  %i.bw = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.a, align 8
  store ptr %i.by, ptr %i.bx, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bv, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #22
  %i.bz = load i64, ptr %i.g, align 8
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.g, align 8
  br label %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i33

_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i33: ; preds = %_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i.i.i32, %.lr.ph.i25
  %.sroa.08.0.i.i.i.i.i34 = phi ptr [ %i.bw, %_ZNSt8_Rb_treeIPN4LIEF5MachO10RelocationES3_St9_IdentityIS3_ENS1_6Binary6KeyCmpESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i.i.i32 ], [ %i.bl, %.lr.ph.i25 ]
  %i.cb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.08.0.i.i.i.i.i34) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i26, i64 8 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cc, %i.bi
  br i1 %.not.i35, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_1ET0_T_SP_SO_T1_.exit", label %.lr.ph.i25, !llvm.loop !64

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt15insert_iteratorISt3setIPS5_NS4_6Binary6KeyCmpESaISH_EEEZNKSI_11relocationsEvE3$_1ET0_T_SP_SO_T1_.exit": ; preds = %_ZNSt15insert_iteratorISt3setIPN4LIEF5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EEEaSEOS4_.exit.i33, %.lr.ph52
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.039.050, i64 8 ; 2 uses
  %.not46 = icmp eq ptr %i.cd, %i.o
  br i1 %.not46, label %._crit_edge53, label %.lr.ph52
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF5MachO6Binary24get_abstract_relocationsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.179") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(488) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.LIEF::ref_iterator.164", align 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4LIEF5MachO6Binary11relocationsEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator.164") align 8 %2, ptr noundef nonnull align 8 dereferenceable(488) %1)
  %i.a = load ptr, ptr %2, align 8, !nonnull !23, !align !24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not31 = icmp eq i64 %i.c, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = shl nuw nsw i64 %i.c, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 5 uses
  store ptr %i.h, ptr %0, align 8
  store ptr %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c ; 2 uses
  store ptr %i.i, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !65
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit, %bb.c
  %.lcssa11 = phi ptr [ null, %bb.c ], [ %i.ai, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit ]
  %.lcssa = phi ptr [ null, %bb.c ], [ %i.aj, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit ]
  store ptr %.lcssa, ptr %i.e, align 8
  store ptr %.lcssa11, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit
  %i.m = phi ptr [ %i.h, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %.sroa.8.015 = phi i64 [ 0, %.lr.ph ], [ %i.al, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.47.014 = phi ptr [ %i.k, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.n = phi ptr [ %i.i, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.o = phi ptr [ %i.h, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.47.014, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.l, align 8
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t                       ; 6 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.g, label %_ZNKSt6vectorIPN4LIEF10RelocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.n, ptr %i.e, align 8
  store ptr %i.o, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
  unreachable

_ZNKSt6vectorIPN4LIEF10RelocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store ptr %i.q, ptr %i.ad, align 8
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN4LIEF10RelocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.o, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN4LIEF10RelocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.u) #25
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.af, ptr %i.l, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  br label %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ah = phi ptr [ %i.r, %bb.e ], [ %i.af, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ai = phi ptr [ %i.o, %bb.e ], [ %i.ac, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.aj = phi ptr [ %i.n, %bb.e ], [ %i.ag, %_ZNSt6vectorIPN4LIEF10RelocationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ak = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.47.014) #26
  %i.al = add nuw nsw i64 %.sroa.8.015, 1         ; 2 uses
  %.not = icmp eq i64 %i.al, %i.c
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO6Binary11is_exportedERKNS0_6SymbolE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 14
  %i.d = icmp ne i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp ne ptr %i.f, null
  %i.h = select i1 %i.d, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO6Binary11is_importedERKNS0_6SymbolE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 14
  %i.d = icmp eq i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  %i.g = select i1 %i.d, i1 %.not, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(488) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i", %.lr.ph.i.i.i
  %.081.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %i.bk, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i" ] ; 2 uses
  %.sroa.043.080.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.bj, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i" ] ; 13 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.043.080.i.i.i, align 8 ; 2 uses
  %i.k = load ptr, ptr %.val.i.i.i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(56) %.val.i.i.i.i) #22, !inline_history !68 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = load i64, ptr %i.j, align 8
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.i.i"

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i": ; preds = %bb.c
  %i.t = load ptr, ptr %1, align 8
  %i.u = load ptr, ptr %i.n, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.u, ptr %i.t, i64 %i.p)
  %i.v = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.v, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i", %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 8
  %.val.i22.i.i.i = load ptr, ptr %i.w, align 8   ; 2 uses
  %i.x = load ptr, ptr %.val.i22.i.i.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(56) %.val.i22.i.i.i) #22, !inline_history !68 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = load i64, ptr %i.j, align 8
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i"

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.i.i"
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit45", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.i.i.i": ; preds = %bb.d
  %i.ag = load ptr, ptr %1, align 8
  %i.ah = load ptr, ptr %i.aa, align 8
  %bcmp.i.i.i23.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.ag, i64 %i.ac)
  %i.ai = icmp eq i32 %bcmp.i.i.i23.i.i.i, 0
  br i1 %i.ai, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.i.i"
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 16
  %.val.i25.i.i.i = load ptr, ptr %i.aj, align 8  ; 2 uses
  %i.ak = load ptr, ptr %.val.i25.i.i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(56) %.val.i25.i.i.i) #22, !inline_history !68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = load i64, ptr %i.j, align 8
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.i.i"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i"
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit47", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.i.i.i": ; preds = %bb.e
  %i.at = load ptr, ptr %1, align 8
  %i.au = load ptr, ptr %i.an, align 8
  %bcmp.i.i.i26.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.at, i64 %i.ap)
  %i.av = icmp eq i32 %bcmp.i.i.i26.i.i.i, 0
  br i1 %i.av, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit41", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i"
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 24
  %.val.i28.i.i.i = load ptr, ptr %i.aw, align 8  ; 2 uses
  %i.ax = load ptr, ptr %.val.i28.i.i.i, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.az(ptr noundef nonnull align 8 dereferenceable(56) %.val.i28.i.i.i) #22, !inline_history !68 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = load i64, ptr %i.j, align 8
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.f, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i"

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.i.i"
  %i.bf = icmp eq i64 %i.bc, 0
  br i1 %i.bf, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit49", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i": ; preds = %bb.f
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = load ptr, ptr %i.ba, align 8
  %bcmp.i.i.i29.i.i.i = tail call i32 @bcmp(ptr %i.bh, ptr %i.bg, i64 %i.bc)
  %i.bi = icmp eq i32 %bcmp.i.i.i29.i.i.i, 0
  br i1 %i.bi, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit43", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.i.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 32 ; 3 uses
  %i.bk = add nsw i64 %.081.i.i.i, -1
  %i.bl = icmp sgt i64 %.081.i.i.i, 1
  br i1 %i.bl, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !69

._crit_edge.loopexit.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i"
  %.pre.i.i.i = ptrtoint ptr %i.bj to i64
  %.pre89.i.i.i = sub i64 %i.e, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi90.i.i.i = phi i64 [ %.pre89.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.043.0.lcssa.i.i.i = phi ptr [ %i.bj, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.bm = ashr exact i64 %.pre-phi90.i.i.i, 3
  switch i64 %i.bm, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit" [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %.val.i31.i.i.i = load ptr, ptr %.sroa.043.0.lcssa.i.i.i, align 8 ; 2 uses
  %i.bn = load ptr, ptr %.val.i31.i.i.i, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(56) %.val.i31.i.i.i) #22, !inline_history !68 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = icmp eq i64 %i.bs, %i.bu
  br i1 %i.bv, label %bb.h, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp eq i64 %i.bs, 0
  br i1 %i.bw, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.i.i.i": ; preds = %bb.h
  %i.bx = load ptr, ptr %1, align 8
  %i.by = load ptr, ptr %i.bq, align 8
  %bcmp.i.i.i32.i.i.i = tail call i32 @bcmp(ptr %i.by, ptr %i.bx, i64 %i.bs)
  %i.bz = icmp eq i32 %bcmp.i.i.i32.i.i.i, 0
  br i1 %i.bz, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.i.i.i", %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.043.0.lcssa.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i", %._crit_edge.i.i.i
  %.sroa.043.1.i.i.i = phi ptr [ %i.ca, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_6SymbolESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i" ], [ %.sroa.043.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK4LIEF5MachO6Binary28section_from_virtual_addressEm:bb.a
  %i.ad = tail call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(64) %i.z) #22, !inline_history !72
  %.not.i.i22.i.i.i = icmp ugt i64 %i.ad, %1
  br i1 %.not.i.i22.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit23.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit23.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit23.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit.thread.i.i.i"
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(64) %i.z) #22, !inline_history !72
  %i.ai = load ptr, ptr %i.z, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %i.z) #22, !inline_history !72
  %i.am = add i64 %i.al, %i.ah
  %i.an = icmp ult i64 %1, %i.am
  br i1 %i.an, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit23.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit23.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit23.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit.thread.i.i.i"
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.043.062.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 6 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(64) %i.ap) #22, !inline_history !72
  %.not.i.i24.i.i.i = icmp ugt i64 %i.at, %1
  br i1 %.not.i.i24.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit25.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit25.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit25.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit23.thread.i.i.i"
  %i.au = load ptr, ptr %i.ap, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %i.ap) #22, !inline_history !72
  %i.ay = load ptr, ptr %i.ap, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %i.ap) #22, !inline_history !72
  %i.bc = add i64 %i.bb, %i.ax
  %i.bd = icmp ult i64 %1, %i.bc
  br i1 %i.bd, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit20", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit25.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit25.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit25.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit23.thread.i.i.i"
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.043.062.i.i.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8            ; 6 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(64) %i.bf) #22, !inline_history !72
  %.not.i.i26.i.i.i = icmp ugt i64 %i.bj, %1
  br i1 %.not.i.i26.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit27.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit27.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit27.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit25.thread.i.i.i"
  %i.bk = load ptr, ptr %i.bf, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bf) #22, !inline_history !72
  %i.bo = load ptr, ptr %i.bf, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf) #22, !inline_history !72
  %i.bs = add i64 %i.br, %i.bn
  %i.bt = icmp ult i64 %1, %i.bs
  br i1 %i.bt, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit22", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit27.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit27.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit27.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit25.thread.i.i.i"
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.043.062.i.i.i, i64 32 ; 3 uses
  %i.bv = add nsw i64 %.063.i.i.i, -1
  %i.bw = icmp sgt i64 %.063.i.i.i, 1
  br i1 %i.bw, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !73

._crit_edge.loopexit.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit27.thread.i.i.i"
  %.pre.i.i.i = ptrtoint ptr %i.bu to i64
  %.pre68.i.i.i = sub i64 %i.e, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi69.i.i.i = phi i64 [ %.pre68.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.043.0.lcssa.i.i.i = phi ptr [ %i.bu, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.bx = ashr exact i64 %.pre-phi69.i.i.i, 3
  switch i64 %i.bx, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit" [
    i64 3, label %bb.b
    i64 2, label %bb.c
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.by = load ptr, ptr %.sroa.043.0.lcssa.i.i.i, align 8 ; 6 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef i64 %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %i.by) #22, !inline_history !72
  %.not.i.i28.i.i.i = icmp ugt i64 %i.cc, %1
  br i1 %.not.i.i28.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit29.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit29.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit29.i.i.i": ; preds = %bb.b
  %i.cd = load ptr, ptr %i.by, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(64) %i.by) #22, !inline_history !72
  %i.ch = load ptr, ptr %i.by, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef i64 %i.cj(ptr noundef nonnull align 8 dereferenceable(64) %i.by) #22, !inline_history !72
  %i.cl = add i64 %i.ck, %i.cg
  %i.cm = icmp ult i64 %1, %i.cl
  br i1 %i.cm, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit29.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit29.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit29.i.i.i", %bb.b
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.043.0.lcssa.i.i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit29.thread.i.i.i", %._crit_edge.i.i.i
  %.sroa.043.1.i.i.i = phi ptr [ %i.cn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit29.thread.i.i.i" ], [ %.sroa.043.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.co = load ptr, ptr %.sroa.043.1.i.i.i, align 8 ; 6 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef i64 %i.cr(ptr noundef nonnull align 8 dereferenceable(64) %i.co) #22, !inline_history !72
  %.not.i.i30.i.i.i = icmp ugt i64 %i.cs, %1
  br i1 %.not.i.i30.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit31.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit31.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit31.i.i.i": ; preds = %bb.c
  %i.ct = load ptr, ptr %i.co, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef i64 %i.cv(ptr noundef nonnull align 8 dereferenceable(64) %i.co) #22, !inline_history !72
  %i.cx = load ptr, ptr %i.co, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call noundef i64 %i.cz(ptr noundef nonnull align 8 dereferenceable(64) %i.co) #22, !inline_history !72
  %i.db = add i64 %i.da, %i.cw
  %i.dc = icmp ult i64 %1, %i.db
  br i1 %i.dc, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit31.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit31.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit31.i.i.i", %bb.c
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.043.1.i.i.i, i64 8
  br label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit31.thread.i.i.i", %._crit_edge.i.i.i
  %.sroa.043.2.i.i.i = phi ptr [ %i.dd, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit31.thread.i.i.i" ], [ %.sroa.043.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.de = load ptr, ptr %.sroa.043.2.i.i.i, align 8 ; 6 uses
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef i64 %i.dh(ptr noundef nonnull align 8 dereferenceable(64) %i.de) #22, !inline_history !72
  %.not.i.i32.i.i.i = icmp ugt i64 %i.di, %1
  br i1 %.not.i.i32.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit33.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit33.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit33.i.i.i": ; preds = %bb.d
  %i.dj = load ptr, ptr %i.de, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(64) %i.de) #22, !inline_history !72
  %i.dn = load ptr, ptr %i.de, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call noundef i64 %i.dp(ptr noundef nonnull align 8 dereferenceable(64) %i.de) #22, !inline_history !72
  %i.dr = add i64 %i.dq, %i.dm
  %i.ds = icmp ult i64 %1, %i.dr
  br i1 %i.ds, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit33.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit33.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit33.i.i.i", %bb.d
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit23.i.i.i"
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.043.062.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit20": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit25.i.i.i"
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.043.062.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit22": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit27.i.i.i"
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.043.062.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit.i.i.i", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit20", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit22", %._crit_edge.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit29.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit31.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit33.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit33.thread.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.043.1.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit31.i.i.i" ], [ %i.d, %._crit_edge.i.i.i ], [ %.sroa.043.0.lcssa.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit29.i.i.i" ], [ %i.d, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit33.thread.i.i.i" ], [ %.sroa.043.2.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit33.i.i.i" ], [ %i.dv, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit22" ], [ %i.du, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit20" ], [ %i.dt, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.043.062.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary28section_from_virtual_addressEmE3$_0EclINS_17__normal_iteratorIPKPNS3_7SectionESt6vectorISA_SaISA_EEEEEEbT_.exit.i.i.i" ] ; 2 uses
  %i.dw = load ptr, ptr %i.c, align 8
  %i.dx = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.dw
  br i1 %i.dx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit"
  %i.dy = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit", %bb.e
  %.0 = phi ptr [ %i.dy, %bb.e ], [ null, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNKS3_6Binary28section_from_virtual_addressEmE3$_0ET_SE_SE_T0_.exit" ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 -128, 128) i64 @_ZNK4LIEF5MachO6Binary13segment_indexERKNS0_14SegmentCommandE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(488) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load i8, ptr %i.a, align 8
  %i.c = sext i8 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull readonly align 8 dereferenceable(488) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %.critedge28.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp ult i64 %i.m, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 9 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt3mapImPN4LIEF5MachO14SegmentCommandESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !74

_ZNKSt3mapImPN4LIEF5MachO14SegmentCommandESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit: ; preds = %.lr.ph.i.i.i
  %.not59 = icmp eq ptr %.19.i.i.i, %i.k
  br i1 %.not59, label %.critedge28.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapImPN4LIEF5MachO14SegmentCommandESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, %1
  %i.r = icmp eq ptr %.19.i.i.i, %i.e
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %.critedge3, label %.critedge5

.critedge3:                                       ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.v, %1
  br i1 %.not, label %.critedge5, label %bb.e

bb.e:                                             ; preds = %.critedge3
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, %i.v
  %i.z = icmp ult i64 %1, %i.y
  br i1 %i.z, label %bb.k, label %.critedge5

.critedge28.thread:                               ; preds = %_ZNKSt3mapImPN4LIEF5MachO14SegmentCommandESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i5055 = phi ptr [ %i.k, %bb.c ], [ %.19.i.i.i, %_ZNKSt3mapImPN4LIEF5MachO14SegmentCommandESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit ] ; 3 uses
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.k) #26 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i64, ptr %i.ab, align 8
  %.not24 = icmp ult i64 %1, %i.ac
  br i1 %.not24, label %.critedge5, label %bb.f

bb.f:                                             ; preds = %.critedge28.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %.not25 = icmp ugt i64 %i.ag, %1
  br i1 %.not25, label %.critedge5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %1, %i.aj
  br i1 %i.ak, label %bb.k, label %.critedge5

.critedge5:                                       ; preds = %bb.e, %.critedge3, %bb.d, %bb.g, %bb.f, %.critedge28.thread
  %.08.lcssa.i.i.i5054 = phi ptr [ %.08.lcssa.i.i.i5055, %bb.g ], [ %.08.lcssa.i.i.i5055, %.critedge28.thread ], [ %.08.lcssa.i.i.i5055, %bb.f ], [ %.19.i.i.i, %bb.d ], [ %.19.i.i.i, %.critedge3 ], [ %.19.i.i.i, %bb.e ] ; 2 uses
  %i.al = icmp eq ptr %.08.lcssa.i.i.i5054, %i.e
  br i1 %i.al, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.critedge5
  %i.am = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i5054) #26
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %.not26 = icmp ugt i64 %i.aq, %1
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, %i.aq
  %i.au = icmp ult i64 %1, %i.at
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %.critedge5, %bb.i, %bb.j, %bb.g, %bb.e, %bb.a
  %.7 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.t, %bb.e ], [ %i.ao, %bb.i ], [ null, %.critedge5 ], [ null, %bb.j ], [ %i.ae, %bb.g ]
  ret ptr %.7
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 2, 4294967299) i64 @_ZN4LIEF5MachO6Binary14shift_linkeditEm(ptr noundef nonnull align 8 dereferenceable(488) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @.str.5, i64 10, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.d, align 2
  %i.e = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.g = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  br label %_ZN4LIEF5MachO6Binary18refresh_seg_offsetEv.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 14 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 14 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = ashr i64 %i.p, 5                         ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.s = and i64 %i.p, -32
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.k, i64 %i.s ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i.i
  %.045.i.i.i.i.i.i = phi i64 [ %i.an, %bb.f ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i.i.i = phi ptr [ %i.am, %bb.f ], [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.t = load ptr, ptr %.sroa.025.044.i.i.i.i.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_13SymbolCommandEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.aa, 2
  br i1 %i.ab, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_13SymbolCommandEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_13SymbolCommandEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit865, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_13SymbolCommandEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit867, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 32
  %i.an = add nsw i64 %.045.i.i.i.i.i.i, -1
  %i.ao = icmp sgt i64 %.045.i.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !75

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %.pre.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre50.i.i.i.i.i.i = sub i64 %i.n, %.pre.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi51.i.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.p, %bb.b ]
end_hunk_1
