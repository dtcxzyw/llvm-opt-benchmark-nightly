inline.NumInlined: 8566
inline.NumDeleted: 3991
begin_hunk_0_@_ZN6duckdb16MultiFileOptions27AutoDetectHiveTypesInternalERNS_13MultiFileListERNS_13ClientContextE:bb.a
          cleanup
  br label %.loopexit.split-lp

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stENS9_29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i.i, %bb.t, %.preheader, %.noexc86, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 25)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 64
  store ptr %i.ah, ptr %11, align 8, !tbaa !11
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !14
  %i.ch = icmp ugt i64 %i.cg, 15
  br i1 %i.ch, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.u
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc88 unwind label %bb.ac  ; 2 uses

.noexc88:                                         ; preds = %.noexc.i
  store ptr %i.ci, ptr %11, align 8, !tbaa !16
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !14
  store i64 %i.cj, ptr %i.ah, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc88, %bb.u
  %i.ck = phi ptr [ %i.ci, %.noexc88 ], [ %i.ah, %bb.u ] ; 2 uses
  switch i64 %i.cg, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.cl = load i8, ptr %i.ce, align 1, !tbaa !18
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !18
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.ce, i64 %i.cg, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  store i64 %i.cm, ptr %i.ai, align 8, !tbaa !19
  %i.cn = load ptr, ptr %11, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 0, ptr %i.co, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %11)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ah
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.cp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cr = invoke noundef zeroext i1 @_ZN6duckdb5Value9TryCastAsERNS_13ClientContextERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true)
          to label %.critedge unwind label %bb.ao

bb.z:                                             ; preds = %.critedge
  %i.cs = invoke noundef zeroext i1 @_ZN6duckdb5Value9TryCastAsERNS_13ClientContextERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i1 noundef zeroext true)
          to label %.critedge.1 unwind label %bb.ao

.critedge.1:                                      ; preds = %bb.z
  br i1 %i.cs, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %.critedge.1
  %i.ct = invoke noundef zeroext i1 @_ZN6duckdb5Value9TryCastAsERNS_13ClientContextERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i1 noundef zeroext true)
          to label %.critedge.2 unwind label %bb.ao

.critedge.2:                                      ; preds = %bb.aa
  br i1 %i.ct, label %bb.ae, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ab:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ac:                                            ; preds = %.noexc.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.ad:                                            ; preds = %bb.x
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.ah
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.cx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.cr, label %bb.ae, label %bb.z

bb.ae:                                            ; preds = %.critedge, %.critedge.1, %.critedge.2
  %.062.ptr214.lcssa234 = phi ptr [ %4, %.critedge ], [ %i.d, %.critedge.1 ], [ %i.e, %.critedge.2 ] ; 4 uses
  %i.cz = load i8, ptr %.062.ptr214.lcssa234, align 8, !tbaa !441
  store i8 %i.cz, ptr %9, align 8, !tbaa !441
  %i.da = getelementptr inbounds nuw i8, ptr %.062.ptr214.lcssa234, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !442
  store i8 %i.db, ptr %i.aj, align 1, !tbaa !442
  %i.dc = getelementptr inbounds nuw i8, ptr %.062.ptr214.lcssa234, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.062.ptr214.lcssa234, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !266 ; 2 uses
  %i.df = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !267
  %.not.i.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dk = atomicrmw volatile add ptr %i.dg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.dl = load ptr, ptr %i.al, align 8, !tbaa !266 ; 8 uses
  store <2 x ptr> %i.df, ptr %i.ak, align 8, !tbaa !267
  %.not.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dm, align 8, !tbaa !268
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !270
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #32, !inline_history !461
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #32, !inline_history !461
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dp, %bb.al ], [ %i.dz, %bb.am ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ea, label %bb.an, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !159

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #32
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ao:                                            ; preds = %bb.aa, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %.critedge.2, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aj, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.ec = load i64, ptr %i.am, align 8, !tbaa !801
  %.not.i = icmp ugt i64 %i.ec, 20
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %.sroa.06.016.i = load ptr, ptr %i.h, align 8, !tbaa !199 ; 3 uses
  %.not1117.i = icmp eq ptr %.sroa.06.016.i, null
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !16, !noalias !802 ; 4 uses
  br i1 %.not1117.i, label %.loopexit163, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !19
  %.fr24.i = freeze i64 %i.ee                     ; 3 uses
  %i.ef = icmp eq i64 %.fr24.i, 0
  br i1 %i.ef, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i
  %.sroa.06.018.us.i = phi ptr [ %.sroa.06.0.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i ], [ %.sroa.06.016.i, %.lr.ph.i ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !19
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.06.0.us.i = load ptr, ptr %.sroa.06.018.us.i, align 8, !tbaa !199 ; 2 uses
  %.not11.us.i = icmp eq ptr %.sroa.06.0.us.i, null
  br i1 %.not11.us.i, label %.loopexit163, label %.lr.ph.split.us.i, !llvm.loop !805

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i
  %.sroa.06.018.i = phi ptr [ %.sroa.06.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i ], [ %.sroa.06.016.i, %.lr.ph.i ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !19
  %i.el = icmp eq i64 %.fr24.i, %i.ek
  br i1 %i.el, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i: ; preds = %.lr.ph.split.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !16
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.pre, ptr %i.en, i64 %.fr24.i)
  %i.eo = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.eo, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, %.lr.ph.split.i
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.018.i, align 8, !tbaa !199 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.06.0.i, null
  br i1 %.not11.i, label %.loopexit163, label %.lr.ph.split.i, !llvm.loop !805

bb.aq:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.ep = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 40 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !19
  %i.es = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ep, i64 noundef %i.er, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i unwind label %bb.ar ; 3 uses

bb.ar:                                            ; preds = %bb.aq
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #35
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i: ; preds = %bb.aq
  %i.ev = load i64, ptr %i.g, align 8, !tbaa !796 ; 3 uses
  %i.ew = urem i64 %i.es, %i.ev                   ; 3 uses
  %i.ex = load ptr, ptr %5, align 8, !tbaa !794
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !503 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ez, null
  %.pre240 = load ptr, ptr %i.bi, align 8, !tbaa !16, !noalias !802 ; 6 uses
  br i1 %.not.i.i.i, label %.loopexit163, label %bb.as

bb.as:                                            ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !199 ; 3 uses
  %i.fb = load i64, ptr %i.eq, align 8
  %.fr22.i.i.i = freeze i64 %i.fb                 ; 3 uses
  %i.fc = icmp eq i64 %.fr22.i.i.i, 0
  %.phi.trans.insert25.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %.pre26.i.i.i = load i64, ptr %.phi.trans.insert25.i.i.i, align 8, !tbaa !504 ; 2 uses
  br i1 %i.fc, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.as, %bb.au
  %i.fd = phi i64 [ %i.fk, %bb.au ], [ %.pre26.i.i.i, %bb.as ]
  %.0.us.i.i.i = phi ptr [ %i.fi, %bb.au ], [ %i.fa, %bb.as ] ; 3 uses
  %i.fe = icmp eq i64 %i.es, %i.fd
  br i1 %i.fe, label %bb.at, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i

bb.at:                                            ; preds = %.split.us.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !19
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i: ; preds = %bb.at, %.split.us.i.i.i
  %i.fi = load ptr, ptr %.0.us.i.i.i, align 8, !tbaa !199 ; 3 uses
  %.not18.us.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not18.us.i.i.i, label %.loopexit163, label %bb.au

bb.au:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !504 ; 2 uses
  %i.fl = urem i64 %i.fk, %i.ev
  %.not19.us.i.i.i = icmp eq i64 %i.fl, %i.ew
  br i1 %.not19.us.i.i.i, label %.split.us.i.i.i, label %.loopexit163, !llvm.loop !806

.split.i.i.i:                                     ; preds = %bb.as, %bb.aw
  %i.fm = phi i64 [ %i.fw, %bb.aw ], [ %.pre26.i.i.i, %bb.as ]
  %.0.i.i.i = phi ptr [ %i.fu, %bb.aw ], [ %i.fa, %bb.as ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.fo = icmp eq i64 %i.es, %i.fm
  br i1 %i.fo, label %bb.av, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i

bb.av:                                            ; preds = %.split.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !19
  %i.fr = icmp eq i64 %.fr22.i.i.i, %i.fq
  br i1 %i.fr, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i: ; preds = %bb.av
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !16
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %.pre240, ptr %i.fs, i64 %.fr22.i.i.i)
  %i.ft = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ft, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i, %bb.av, %.split.i.i.i
  %i.fu = load ptr, ptr %.0.i.i.i, align 8, !tbaa !199 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not18.i.i.i, label %.loopexit163, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !504 ; 2 uses
  %i.fx = urem i64 %i.fw, %i.ev
  %.not19.i.i.i = icmp eq i64 %i.fx, %i.ew
  br i1 %.not19.i.i.i, label %.split.i.i.i, label %.loopexit163, !llvm.loop !806

.loopexit163:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i, %bb.aw, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i, %bb.au, %bb.ap, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %i.fy = phi ptr [ %.pre240, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i.i ], [ %.pre240, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i.i ], [ %.pre, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us.i ], [ %.pre240, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i ], [ %.pre, %bb.ap ], [ %.pre240, %bb.au ], [ %.pre240, %bb.aw ], [ %.pre, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  store ptr %i.ap, ptr %12, align 8, !tbaa !11, !alias.scope !802
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0149.0216, i64 40
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !19, !noalias !802 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !802
  store i64 %i.ga, ptr %i.b, align 8, !tbaa !14, !noalias !802
  %i.gb = icmp ugt i64 %i.ga, 15
  br i1 %i.gb, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.loopexit163
  %i.gc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc93 unwind label %bb.bb  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i.i.i
  store ptr %i.gc, ptr %12, align 8, !tbaa !16, !alias.scope !802
  %i.gd = load i64, ptr %i.b, align 8, !tbaa !14, !noalias !802
  store i64 %i.gd, ptr %i.ap, align 8, !tbaa !18, !alias.scope !802
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc93, %.loopexit163
  %i.ge = phi ptr [ %i.gc, %.noexc93 ], [ %i.ap, %.loopexit163 ] ; 2 uses
  switch i64 %i.ga, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %bb.az
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gf = load i8, ptr %i.fy, align 1, !tbaa !18
  store i8 %i.gf, ptr %i.ge, align 1, !tbaa !18
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr align 1 %i.fy, i64 %i.ga, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i.i.i
  %i.gg = load i64, ptr %i.b, align 8, !tbaa !14, !noalias !802 ; 2 uses
  store i64 %i.gg, ptr %i.aq, align 8, !tbaa !19, !alias.scope !802
  %i.gh = load ptr, ptr %12, align 8, !tbaa !16, !alias.scope !802
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg
  store i8 0, ptr %i.gi, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !802
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %9) #32
  %i.gj = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS6_IS5_S9_EEEES6_INSC_14_Node_iteratorISA_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE6insertISC_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISE_OT_EE5valueESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEE4typeESL_.exit unwind label %bb.bc ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE6insertISC_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISE_OT_EE5valueESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEE4typeESL_.exit: ; preds = %bb.az
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #32
  %i.gk = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.ap
  br i1 %i.gl, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE6insertISC_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISE_OT_EE5valueESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEE4typeESL_.exit
  call void @_ZdlPv(ptr noundef %i.gk) #34
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE6insertISC_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISE_OT_EE5valueESC_INSt8__detail14_Node_iteratorISE_Lb0ELb1EEEbEE4typeESL_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.bh

bb.ba:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bb:                                            ; preds = %.noexc.i.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %12) #32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.go, %bb.bc ], [ %i.gn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.bi

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i, %.lr.ph.split.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i, %bb.at
  %.sroa.06.1.i = phi ptr [ %.sroa.06.018.us.i, %.lr.ph.split.us.i ], [ %.0.us.i.i.i, %bb.at ], [ %.0.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i.i ], [ %.sroa.06.018.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 40 ; 2 uses
  %i.gq = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.be unwind label %bb.ba

bb.be:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE4findERSD_.exit
  br i1 %i.gq, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 noundef zeroext 25)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.bg

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.bf
  %i.gr = load i8, ptr %13, align 8, !tbaa !441
  store i8 %i.gr, ptr %i.gp, align 8, !tbaa !441
  %i.gs = load i8, ptr %i.an, align 1, !tbaa !442
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 41
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !442
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 48 ; 2 uses
  %i.gv = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !267
  %i.gw = load <2 x ptr>, ptr %i.gu, align 8, !tbaa !267
  store <2 x ptr> %i.gv, ptr %i.gu, align 8, !tbaa !267
  store <2 x ptr> %i.gw, ptr %i.ao, align 8, !tbaa !267
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread156

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread156: ; preds = %.noexc85, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit, %bb.bh
  %i.gy = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0149.0216) #37 ; 2 uses
  %.not160 = icmp eq ptr %i.gy, %i.ac
  br i1 %.not160, label %._crit_edge, label %.lr.ph

bb.bi:                                            ; preds = %bb.ba, %bb.bd, %bb.bg, %bb.ao
  %.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %bb.ao ], [ %.pn, %bb.bd ], [ %i.gx, %bb.bg ], [ %i.gm, %bb.ba ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.bi, %bb.ac
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bi ], [ %i.cv, %bb.ac ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.cw, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #32
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.ab
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.cu, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit170, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bj
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.bj ], [ %lpad.loopexit, %.loopexit170 ], [ %lpad.loopexit171, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #32
  br label %bb.bn

bb.bk:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.gz = load ptr, ptr %6, align 8, !tbaa !257
  %.not.i.i98 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i98, label %_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZNK6duckdb12optional_ptrIKNS_13MultiFileListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %.noexc99 unwind label %bb.j

.noexc99:                                         ; preds = %bb.bl
  %i.ha = load ptr, ptr %6, align 8, !tbaa !257
  %i.hb = invoke noundef zeroext i1 @_ZNK6duckdb13MultiFileList4ScanERNS_21MultiFileListScanDataERNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %.noexc100 unwind label %bb.j

.noexc100:                                        ; preds = %.noexc99
  br i1 %i.hb, label %.noexc100._ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit_crit_edge, label %bb.bm

.noexc100._ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit_crit_edge: ; preds = %.noexc100
  %.pre241 = load ptr, ptr %6, align 8, !tbaa !257
  br label %_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit

bb.bm:                                            ; preds = %.noexc100
  store i64 0, ptr %6, align 8, !tbaa !251
  store i64 -1, ptr %i.q, align 8, !tbaa !259
  br label %_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit

_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit: ; preds = %.noexc100._ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit_crit_edge, %bb.bk, %bb.bm
  %i.hc = phi ptr [ %.pre241, %.noexc100._ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv.exit_crit_edge ], [ null, %bb.bk ], [ null, %bb.bm ]
  %i.hd = load ptr, ptr %7, align 8, !tbaa !257
  %i.he = icmp ne ptr %i.hc, %i.hd
  %i.hf = load i64, ptr %i.q, align 8
  %i.hg = load i64, ptr %i.r, align 8
  %i.hh = icmp ne i64 %i.hf, %i.hg
  %i.hi = select i1 %i.he, i1 true, i1 %i.hh
  br i1 %i.hi, label %bb.k, label %.critedge82

bb.bn:                                            ; preds = %.loopexit.split-lp, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp ], [ %i.bd, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.cc

.critedge80:                                      ; preds = %bb.l
  %i.hj = load ptr, ptr %i.as, align 8, !tbaa !483
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.hj)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %.critedge80
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #35
  unreachable

bb.bp:                                            ; preds = %.critedge80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !266 ; 8 uses
  %.not.i.i.i.i.i102 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i.i102, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 4 uses
  %i.hq = load atomic i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 4294967297
  %i.hs = trunc i64 %i.hq to i32                  ; 2 uses
  br i1 %i.hr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.hp, align 8, !tbaa !268
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 0, ptr %i.ht, align 4, !tbaa !270
  %i.hu = load ptr, ptr %i.ho, align 8, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #32, !inline_history !481
  %i.hx = load ptr, ptr %i.ho, align 8, !tbaa !20
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #32, !inline_history !481
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i103 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i.i.i.i103, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i104

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !267
  store ptr null, ptr %i.r, align 8, !tbaa !266
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !267
  store ptr null, ptr %2, align 8, !tbaa !700
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !267, !alias.scope !1740, !noalias !1737
  store ptr null, ptr %i.t, align 8, !tbaa !266, !alias.scope !1740, !noalias !1737
  store <2 x ptr> %i.u, ptr %.012.i.i.i.i, align 8, !tbaa !267, !alias.scope !1737, !noalias !1740
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !700, !alias.scope !1740, !noalias !1737
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1742

_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i17 ], [ %i.x, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i.i19, align 8, !tbaa !267, !alias.scope !1746, !noalias !1743
  store ptr null, ptr %i.y, align 8, !tbaa !266, !alias.scope !1746, !noalias !1743
  store <2 x ptr> %i.z, ptr %.012.i.i.i.i18, align 8, !tbaa !267, !alias.scope !1743, !noalias !1746
  store ptr null, ptr %.0911.i.i.i.i19, align 8, !tbaa !700, !alias.scope !1746, !noalias !1743
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !1742

_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !364
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !367
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !699
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !248    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #33
  unreachable

_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i) #32
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i) #32
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1663

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i27
  %.012.i.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i.i27 ], [ %1, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i28, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i29) #32
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i29) #32
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27, !llvm.loop !1663

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i.i27, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i.i27 ]
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !248
  store ptr %.0.lcssa.i.i.i.i31, ptr %i.a, align 8, !tbaa !247
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.x, ptr %i.w, align 8, !tbaa !472
  ret void

bb.d:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #32 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #34
  invoke void @__cxa_rethrow() #33
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #35
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, std::__detail::_Identity, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1748
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %..thread_crit_edge, label %bb.b

..thread_crit_edge:                               ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !16
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.023.038 = load ptr, ptr %i.c, align 8, !tbaa !199 ; 3 uses
  %.not3139 = icmp eq ptr %.sroa.023.038, null
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !16  ; 4 uses
  br i1 %.not3139, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %.fr42 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr42, 0
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27.us
  %.sroa.023.040.us = phi ptr [ %.sroa.023.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27.us ], [ %.sroa.023.038, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.023.040.us, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27.us: ; preds = %.lr.ph.split.us
  %.sroa.023.0.us = load ptr, ptr %.sroa.023.040.us, align 8, !tbaa !199 ; 2 uses
  %.not31.us = icmp eq ptr %.sroa.023.0.us, null
  br i1 %.not31.us, label %.thread, label %.lr.ph.split.us, !llvm.loop !1749

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27
  %.sroa.023.040 = phi ptr [ %.sroa.023.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27 ], [ %.sroa.023.038, %.lr.ph ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.023.040, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19
  %i.l = icmp eq i64 %.fr42, %i.k
  br i1 %i.l, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.023.040, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.pre52, ptr %i.n, i64 %.fr42)
  %i.o = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.o, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.023.0 = load ptr, ptr %.sroa.023.040, align 8, !tbaa !199 ; 2 uses
  %.not31 = icmp eq ptr %.sroa.023.0, null
  br i1 %.not31, label %.thread, label %.lr.ph.split, !llvm.loop !1749

.thread:                                          ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27.us, %..thread_crit_edge, %bb.b
  %i.p = phi ptr [ %.pre, %..thread_crit_edge ], [ %.pre52, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27.us ], [ %.pre52, %bb.b ], [ %.pre52, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread27 ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.p, i64 noundef %i.r, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit unwind label %bb.c ; 4 uses

bb.c:                                             ; preds = %.thread
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #35
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit: ; preds = %.thread
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !776  ; 3 uses
  %i.x = urem i64 %i.s, %i.w                      ; 4 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1748
  %i.z = icmp ugt i64 %i.y, 20
  br i1 %i.z, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !774
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.x
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !503 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !199 ; 3 uses
  %i.ae = load i64, ptr %i.q, align 8
  %.fr22.i.i = freeze i64 %i.ae                   ; 3 uses
  %i.af = icmp eq i64 %.fr22.i.i, 0
  %i.ag = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !504 ; 2 uses
  br i1 %i.af, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ah = phi i64 [ %i.ao, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.am, %bb.g ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ai = icmp eq i64 %i.s, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !19
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.am = load ptr, ptr %.0.us.i.i, align 8, !tbaa !199 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.am, null
  br i1 %.not18.us.i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !504 ; 2 uses
  %i.ap = urem i64 %i.ao, %i.w
  %.not19.us.i.i = icmp eq i64 %i.ap, %i.x
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge, !llvm.loop !1750

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.aq = phi i64 [ %i.ba, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ay, %bb.i ], [ %i.ad, %bb.e ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.as = icmp eq i64 %i.s, %i.aq
  br i1 %i.as, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !19
  %i.av = icmp eq i64 %.fr22.i.i, %i.au
  br i1 %i.av, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !16
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ag, ptr %i.aw, i64 %.fr22.i.i)
  %i.ax = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ay = load ptr, ptr %.0.i.i, align 8, !tbaa !199 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ay, null
  br i1 %.not18.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !504 ; 2 uses
  %i.bb = urem i64 %i.ba, %i.w
  %.not19.i.i = icmp eq i64 %i.bb, %i.x
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge, !llvm.loop !1750

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i, %bb.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i, %bb.d, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.bc = load ptr, ptr %3, align 8, !tbaa !1751, !nonnull !173
  %i.bd = tail call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  store ptr %0, ptr %4, align 8, !tbaa !1753
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !1756
  %i.bf = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.x, i64 noundef %i.s, ptr noundef %i.bd, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.j

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread

bb.j:                                             ; preds = %.critedge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.bg

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.026.1 = phi ptr [ %i.bf, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.023.040.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.f ], [ %.sroa.023.040, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %.lr.ph.split.us ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ 0, %bb.f ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.026.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !776
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1748
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #32 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !1144
  invoke void @__cxa_rethrow() #33
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb10shared_ptrINS0_13BaseUnionDataELb1EEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EE:bb.a
bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ai, align 8, !tbaa !268
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !270
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #32, !inline_history !1763
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #32, !inline_history !1763
  br label %_ZN6duckdb10shared_ptrINS_13BaseUnionDataELb1EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.al, %bb.l ], [ %i.av, %bb.m ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.n, label %_ZN6duckdb10shared_ptrINS_13BaseUnionDataELb1EED2Ev.exit, !prof !159

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #32
  br label %_ZN6duckdb10shared_ptrINS_13BaseUnionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13BaseUnionDataELb1EED2Ev.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6duckdb10shared_ptrINS2_13BaseUnionDataELb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS6_IS5_S9_EEEES6_INSC_14_Node_iteratorISA_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, duckdb::LogicalType>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, duckdb::LogicalType>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %0, ptr %2, align 8, !tbaa !1764
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #36 ; 8 uses
  store ptr null, ptr %i.a, align 8, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !11
  %i.d = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS6_IS5_S9_EEEEPNSC_16_Hashtable_allocISaINSC_10_Hash_nodeISA_Lb1EEEEEEDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !16
  %i.k = load i64, ptr %i.e, align 8, !tbaa !18
  store i64 %i.k, ptr %i.c, align 8, !tbaa !18
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !19
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS6_IS5_S9_EEEEPNSC_16_Hashtable_allocISaINSC_10_Hash_nodeISA_Lb1EEEEEEDpOT_.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS6_IS5_S9_EEEEPNSC_16_Hashtable_allocISaINSC_10_Hash_nodeISA_Lb1EEEEEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 %i.l, ptr %i.o, align 8, !tbaa !19
  store ptr %i.e, ptr %1, align 8, !tbaa !16
  store i64 0, ptr %i.n, align 8, !tbaa !19
  store i8 0, ptr %i.e, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #32
  store ptr %i.a, ptr %i.m, align 8, !tbaa !1766
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !801
  %.not = icmp ugt i64 %i.s, 20
  br i1 %.not, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS6_IS5_S9_EEEEPNSC_16_Hashtable_allocISaINSC_10_Hash_nodeISA_Lb1EEEEEEDpOT_.exit..critedge_crit_edge, label %bb.c

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS6_IS5_S9_EEEEPNSC_16_Hashtable_allocISaINSC_10_Hash_nodeISA_Lb1EEEEEEDpOT_.exit..critedge_crit_edge: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS6_IS5_S9_EEEEPNSC_16_Hashtable_allocISaINSC_10_Hash_nodeISA_Lb1EEEEEEDpOT_.exit
  %.pre = load i64, ptr %i.o, align 8, !tbaa !19
  br label %.critedge

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS6_IS5_S9_EEEEPNSC_16_Hashtable_allocISaINSC_10_Hash_nodeISA_Lb1EEEEEEDpOT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.032.052 = load ptr, ptr %i.t, align 8, !tbaa !199 ; 3 uses
  %.not4553 = icmp eq ptr %.sroa.032.052, null
  %.pre66 = load i64, ptr %i.o, align 8, !tbaa !19
  %.fr56 = freeze i64 %.pre66                     ; 6 uses
  br i1 %.not4553, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.u = icmp eq i64 %.fr56, 0
  br i1 %i.u, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37.us
  %.sroa.032.054.us = phi ptr [ %.sroa.032.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37.us ], [ %.sroa.032.052, %.lr.ph ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.054.us, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37.us: ; preds = %.lr.ph.split.us
  %.sroa.032.0.us = load ptr, ptr %.sroa.032.054.us, align 8, !tbaa !199 ; 2 uses
  %.not45.us = icmp eq ptr %.sroa.032.0.us, null
  br i1 %.not45.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !1767

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37
  %.sroa.032.054 = phi ptr [ %.sroa.032.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37 ], [ %.sroa.032.052, %.lr.ph ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.054, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19
  %i.aa = icmp eq i64 %.fr56, %i.z
  br i1 %i.aa, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.054, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !16
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ad, ptr %i.ac, i64 %.fr56)
  %i.ae = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ae, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit
  %.sroa.032.0 = load ptr, ptr %.sroa.032.054, align 8, !tbaa !199 ; 2 uses
  %.not45 = icmp eq ptr %.sroa.032.0, null
  br i1 %.not45, label %.critedge, label %.lr.ph.split, !llvm.loop !1767

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37.us, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS6_IS5_S9_EEEEPNSC_16_Hashtable_allocISaINSC_10_Hash_nodeISA_Lb1EEEEEEDpOT_.exit..critedge_crit_edge, %bb.c
  %i.af = phi i64 [ %.pre, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS6_IS5_S9_EEEEPNSC_16_Hashtable_allocISaINSC_10_Hash_nodeISA_Lb1EEEEEEDpOT_.exit..critedge_crit_edge ], [ %.fr56, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37.us ], [ %.fr56, %bb.c ], [ %.fr56, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread37 ]
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.ah = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ag, i64 noundef %i.af, i64 noundef 3339675911)
          to label %bb.e unwind label %bb.d       ; 4 uses

bb.d:                                             ; preds = %.critedge
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #35
  unreachable

bb.e:                                             ; preds = %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !796 ; 3 uses
  %i.am = urem i64 %i.ah, %i.al                   ; 4 uses
  %i.an = load i64, ptr %i.r, align 8, !tbaa !801
  %i.ao = icmp ugt i64 %i.an, 20
  br i1 %i.ao, label %bb.f, label %.critedge27

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %0, align 8, !tbaa !794
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !503 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %.critedge27, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !199 ; 3 uses
  %i.at = load i64, ptr %i.o, align 8
  %.fr22.i.i = freeze i64 %i.at                   ; 3 uses
  %i.au = icmp eq i64 %.fr22.i.i, 0
  %i.av = load ptr, ptr %i.b, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !504 ; 2 uses
  br i1 %i.au, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.g, %bb.i
  %i.aw = phi i64 [ %i.bd, %bb.i ], [ %.pre26.i.i, %bb.g ]
  %.0.us.i.i = phi ptr [ %i.bb, %bb.i ], [ %i.as, %bb.g ] ; 3 uses
  %i.ax = icmp eq i64 %i.ah, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i

bb.h:                                             ; preds = %.split.us.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.h, %.split.us.i.i
  %i.bb = load ptr, ptr %.0.us.i.i, align 8, !tbaa !199 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bb, null
  br i1 %.not18.us.i.i, label %.critedge27, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !504 ; 2 uses
  %i.be = urem i64 %i.bd, %i.al
  %.not19.us.i.i = icmp eq i64 %i.be, %i.am
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge27, !llvm.loop !806

.split.i.i:                                       ; preds = %bb.g, %bb.k
  %i.bf = phi i64 [ %i.bp, %bb.k ], [ %.pre26.i.i, %bb.g ]
  %.0.i.i = phi ptr [ %i.bn, %bb.k ], [ %i.as, %bb.g ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bh = icmp eq i64 %i.ah, %i.bf
  br i1 %i.bh, label %bb.j, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i

bb.j:                                             ; preds = %.split.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !19
  %i.bk = icmp eq i64 %.fr22.i.i, %i.bj
  br i1 %i.bk, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i: ; preds = %bb.j
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !16
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.bl, i64 %.fr22.i.i)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bm, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i, %bb.j, %.split.i.i
  %i.bn = load ptr, ptr %.0.i.i, align 8, !tbaa !199 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.bn, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !504 ; 2 uses
  %i.bq = urem i64 %i.bp, %i.al
  %.not19.i.i = icmp eq i64 %i.bq, %i.am
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge27, !llvm.loop !806

.critedge27:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i, %bb.k, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.e
  %i.br = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeISA_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.am, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %.critedge27
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.bs

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i, %bb.h
  %.sroa.036.0.ph = phi ptr [ %.sroa.032.054.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.h ], [ %.sroa.032.054, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit ]
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #32
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.c
  br i1 %i.bu, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread
  tail call void @_ZdlPv(ptr noundef %i.bt) #34
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11LogicalTypeEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #34
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i
  %.sroa.4.044 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i ], [ 1, %.critedge27 ]
  %.sroa.036.043 = phi ptr [ %.sroa.036.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i ], [ %i.br, %.critedge27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.036.043, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.044, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeISA_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !796
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !801
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #32 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !1144
  invoke void @__cxa_rethrow() #33
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #35
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !796
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %2, ptr %i.t, align 8, !tbaa !504
  %i.u = load ptr, ptr %0, align 8, !tbaa !794    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !503  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !199
  store ptr %i.x, ptr %3, align 8, !tbaa !199
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !503
  store ptr %3, ptr %i.y, align 8, !tbaa !199
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !807
  store ptr %i.aa, ptr %3, align 8, !tbaa !199
  store ptr %3, ptr %i.z, align 8, !tbaa !807
  %i.ab = load ptr, ptr %3, align 8, !tbaa !199   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !796
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !504
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !503
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !503
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSC_10_Hash_nodeISA_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !801
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !801
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1766 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #32
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.e) #34
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #34
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE18_M_deallocate_nodeEPSD_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !159

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1768
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !159

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #36 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
end_hunk_2
begin_hunk_3_@llvm.smin.i64
!602 = distinct !{!602, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!603 = !{!604, !601}
!604 = distinct !{!604, !605, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!605 = distinct !{!605, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!606 = !{!607}
!607 = distinct !{!607, !608, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!608 = distinct !{!608, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!609 = !{!610, !612}
!610 = distinct !{!610, !611, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_11LogicalTypeES7_S8_S7_S7_S7_EEES7_RKS7_DpRKT_: argument 0"}
!611 = distinct !{!611, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_11LogicalTypeES7_S8_S7_S7_S7_EEES7_RKS7_DpRKT_"}
!612 = distinct !{!612, !613, !"_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_11LogicalTypeES7_S8_S7_S7_S7_EEES7_S7_DpT_: argument 0"}
!613 = distinct !{!613, !"_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_11LogicalTypeES7_S8_S7_S7_S7_EEES7_S7_DpT_"}
!614 = !{!615, !617}
!615 = distinct !{!615, !616, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_11LogicalTypeES8_S7_S7_S7_EEES7_RKS7_DpRKT_: argument 0"}
!616 = distinct !{!616, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_11LogicalTypeES8_S7_S7_S7_EEES7_RKS7_DpRKT_"}
!617 = distinct !{!617, !618, !"_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_11LogicalTypeES8_S7_S7_S7_EEES7_S7_DpT_: argument 0"}
!618 = distinct !{!618, !"_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_11LogicalTypeES8_S7_S7_S7_EEES7_S7_DpT_"}
!619 = !{!620, !622}
!620 = distinct !{!620, !621, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeES8_EEES7_RKS7_DpRKT_: argument 0"}
!621 = distinct !{!621, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeES8_EEES7_RKS7_DpRKT_"}
!622 = distinct !{!622, !623, !"_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeES8_EEES7_S7_DpT_: argument 0"}
!623 = distinct !{!623, !"_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeES8_EEES7_S7_DpT_"}
!624 = !{!585, !587, i64 9}
!625 = !{!626, !633, i64 24}
!626 = !{!"_ZTSN6duckdb18ExpressionExecutorE", !627, i64 0, !633, i64 24, !302, i64 32, !634, i64 40, !640, i64 64}
!627 = !{!"_ZTSN6duckdb6vectorIPKNS_10ExpressionELb1ESaIS3_EEE", !628, i64 0}
!628 = !{!"_ZTSSt6vectorIPKN6duckdb10ExpressionESaIS3_EE", !629, i64 0}
!629 = !{!"_ZTSSt12_Vector_baseIPKN6duckdb10ExpressionESaIS3_EE", !630, i64 0}
!630 = !{!"_ZTSNSt12_Vector_baseIPKN6duckdb10ExpressionESaIS3_EE12_Vector_implE", !631, i64 0}
!631 = !{!"_ZTSNSt12_Vector_baseIPKN6duckdb10ExpressionESaIS3_EE17_Vector_impl_dataE", !632, i64 0, !632, i64 8, !632, i64 16}
!632 = !{!"p2 _ZTSN6duckdb10ExpressionE", !73, i64 0}
!633 = !{!"p1 _ZTSN6duckdb9DataChunkE", !10, i64 0}
!634 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !635, i64 0}
!635 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !636, i64 0}
!636 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !637, i64 0}
!637 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !638, i64 0}
!638 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !639, i64 0, !639, i64 8, !639, i64 16}
!639 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_23ExpressionExecutorStateESt14default_deleteIS1_ELb1EEE", !10, i64 0}
!640 = !{!"_ZTSN6duckdb23DebugVectorVerificationE", !5, i64 0}
!641 = !{!631, !632, i64 8}
!642 = !{!631, !632, i64 0}
!643 = !{!644, !15, i64 24}
!644 = !{!"_ZTSN6duckdb9DataChunkE", !645, i64 0, !15, i64 24, !15, i64 32, !15, i64 40, !651, i64 48}
!645 = !{!"_ZTSN6duckdb6vectorINS_6VectorELb1ESaIS1_EEE", !646, i64 0}
!646 = !{!"_ZTSSt6vectorIN6duckdb6VectorESaIS1_EE", !647, i64 0}
!647 = !{!"_ZTSSt12_Vector_baseIN6duckdb6VectorESaIS1_EE", !648, i64 0}
!648 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE12_Vector_implE", !649, i64 0}
!649 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE17_Vector_impl_dataE", !650, i64 0, !650, i64 8, !650, i64 16}
!650 = !{!"p1 _ZTSN6duckdb6VectorE", !10, i64 0}
!651 = !{!"_ZTSN6duckdb6vectorINS_11VectorCacheELb1ESaIS1_EEE", !652, i64 0}
!652 = !{!"_ZTSSt6vectorIN6duckdb11VectorCacheESaIS1_EE", !653, i64 0}
!653 = !{!"_ZTSSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE", !654, i64 0}
!654 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE12_Vector_implE", !655, i64 0}
!655 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE17_Vector_impl_dataE", !656, i64 0, !656, i64 8, !656, i64 16}
!656 = !{!"p1 _ZTSN6duckdb11VectorCacheE", !10, i64 0}
!657 = !{!658, !658, i64 0}
!658 = !{!"_ZTSN6duckdb13ExceptionTypeE", !5, i64 0}
!659 = distinct !{!659, !30}
!660 = !{!649, !650, i64 8}
!661 = !{!649, !650, i64 0}
!662 = !{!663}
!663 = distinct !{!663, !664, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_EEES7_RKS7_DpRKT_: argument 0"}
!664 = distinct !{!664, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_EEES7_RKS7_DpRKT_"}
!665 = !{!666, !75, i64 16}
!666 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !72, i64 0, !15, i64 8, !74, i64 16, !15, i64 24, !76, i64 32, !75, i64 48}
!667 = distinct !{!667, !30}
!668 = !{!666, !72, i64 0}
!669 = !{!666, !15, i64 8}
!670 = !{!551, !551, i64 0}
!671 = !{!672, !673, i64 8}
!672 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19ColumnPartitionDataESaIS1_EE17_Vector_impl_dataE", !673, i64 0, !673, i64 8, !673, i64 16}
!673 = !{!"p1 _ZTSN6duckdb19ColumnPartitionDataE", !10, i64 0}
!674 = !{!672, !673, i64 16}
!675 = !{!676, !678, i64 8}
!676 = !{!"_ZTSN6duckdb27TableFunctionPartitionInputE", !677, i64 0, !678, i64 8}
!677 = !{!"_ZTSN6duckdb12optional_ptrIKNS_12FunctionDataELb1EEE", !91, i64 0}
!678 = !{!"p1 _ZTSN6duckdb6vectorImLb1ESaImEEE", !10, i64 0}
!679 = !{!680, !681, i64 8}
!680 = !{!"_ZTSNSt12_Vector_baseIN6duckdb13TableFunctionESaIS1_EE17_Vector_impl_dataE", !681, i64 0, !681, i64 8, !681, i64 16}
!681 = !{!"p1 _ZTSN6duckdb13TableFunctionE", !10, i64 0}
!682 = !{!680, !681, i64 16}
!683 = !{!80, !81, i64 0}
!684 = distinct !{ptr @_ZN6duckdb13TableFunctionD2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!685 = !{ptr @_ZN6duckdb13TableFunctionD2Ev}
!686 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!687 = !{!680, !681, i64 0}
!688 = distinct !{null, null, null, null}
!689 = distinct !{!689, !30}
!690 = !{!691}
!691 = distinct !{!691, !692, !"_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!692 = distinct !{!692, !"_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!693 = !{!694, !223, i64 0}
!694 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10ExpressionELb0EE", !223, i64 0}
!695 = !{!696}
!696 = distinct !{!696, !697, !"_ZN6duckdb9make_uniqINS_24BoundReferenceExpressionEJRKNS_11LogicalTypeEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!697 = distinct !{!697, !"_ZN6duckdb9make_uniqINS_24BoundReferenceExpressionEJRKNS_11LogicalTypeEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!698 = !{!366, !366, i64 0}
!699 = !{!365, !366, i64 16}
!700 = !{!701, !702, i64 0}
!701 = !{!"_ZTSSt12__shared_ptrIN6duckdb13BaseUnionDataELN9__gnu_cxx12_Lock_policyE2EE", !702, i64 0, !68, i64 8}
!702 = !{!"p1 _ZTSN6duckdb13BaseUnionDataE", !10, i64 0}
!703 = distinct !{!703, !30}
!704 = distinct !{null, null, null, ptr @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!705 = !{!706}
!706 = distinct !{!706, !707, !"_ZN6duckdb9make_uniqINS_17UnionByReaderTaskEJRNS_12TaskExecutorERNS_13ClientContextERKNS_12OpenFileInfoERmRNS_6vectorINS_10shared_ptrINS_13BaseUnionDataELb1EEELb1ESaISD_EEERNS_21BaseFileReaderOptionsERNS_16MultiFileOptionsERNS_15MultiFileReaderERNS_24MultiFileReaderInterfaceEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!707 = distinct !{!707, !"_ZN6duckdb9make_uniqINS_17UnionByReaderTaskEJRNS_12TaskExecutorERNS_13ClientContextERKNS_12OpenFileInfoERmRNS_6vectorINS_10shared_ptrINS_13BaseUnionDataELb1EEELb1ESaISD_EEERNS_21BaseFileReaderOptionsERNS_16MultiFileOptionsERNS_15MultiFileReaderERNS_24MultiFileReaderInterfaceEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!708 = !{!709, !15, i64 56}
!709 = !{!"_ZTSN6duckdb17UnionByReaderTaskE", !710, i64 0, !292, i64 40, !191, i64 48, !15, i64 56, !721, i64 64, !722, i64 72, !723, i64 80, !342, i64 88, !388, i64 96}
!710 = !{!"_ZTSN6duckdb16BaseExecutorTaskE", !711, i64 0, !720, i64 32}
!711 = !{!"_ZTSN6duckdb4TaskE", !712, i64 8, !718, i64 24}
!712 = !{!"_ZTSN6duckdb23enable_shared_from_thisINS_4TaskEEE", !713, i64 0}
!713 = !{!"_ZTSN6duckdb8weak_ptrINS_4TaskELb1EEE", !714, i64 0}
!714 = !{!"_ZTSSt8weak_ptrIN6duckdb4TaskEE", !715, i64 0}
!715 = !{!"_ZTSSt10__weak_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EE", !716, i64 0, !717, i64 8}
!716 = !{!"p1 _ZTSN6duckdb4TaskE", !10, i64 0}
!717 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !69, i64 0}
!718 = !{!"_ZTSN6duckdb12optional_ptrINS_13ProducerTokenELb1EEE", !719, i64 0}
!719 = !{!"p1 _ZTSN6duckdb13ProducerTokenE", !10, i64 0}
!720 = !{!"p1 _ZTSN6duckdb12TaskExecutorE", !10, i64 0}
!721 = !{!"p1 _ZTSN6duckdb6vectorINS_10shared_ptrINS_13BaseUnionDataELb1EEELb1ESaIS3_EEE", !10, i64 0}
!722 = !{!"p1 _ZTSN6duckdb21BaseFileReaderOptionsE", !10, i64 0}
!723 = !{!"p1 _ZTSN6duckdb16MultiFileOptionsE", !10, i64 0}
!724 = !{!721, !721, i64 0}
!725 = !{!722, !722, i64 0}
!726 = !{!723, !723, i64 0}
!727 = !{!728, !716, i64 0}
!728 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb4TaskELb0EE", !716, i64 0}
!729 = !{!716, !716, i64 0}
!730 = distinct !{null, null}
!731 = distinct !{!731, !30}
!732 = !{!733}
!733 = distinct !{!733, !734, !"_ZNK6duckdb13MultiFileList12GetFirstFileEv: argument 0"}
!734 = distinct !{!734, !"_ZNK6duckdb13MultiFileList12GetFirstFileEv"}
!735 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!736 = !{!378, !378, i64 0}
!737 = distinct !{null, null, ptr @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!738 = !{!566, !566, i64 0}
!739 = !{!740, !252, i64 8}
!740 = !{!"_ZTSN6duckdb20MultiFileGlobalStateE", !741, i64 0, !252, i64 8, !254, i64 16, !742, i64 32, !748, i64 40, !296, i64 48, !56, i64 88, !754, i64 96, !15, i64 104, !756, i64 112, !15, i64 136, !15, i64 144, !100, i64 152, !50, i64 176, !146, i64 200, !574, i64 224, !762, i64 232, !764, i64 240, !772, i64 248}
!741 = !{!"_ZTSN6duckdb24GlobalTableFunctionStateE"}
!742 = !{!"_ZTSN6duckdb10unique_ptrINS_13MultiFileListESt14default_deleteIS1_ELb1EEE", !743, i64 0}
!743 = !{!"_ZTSSt10unique_ptrIN6duckdb13MultiFileListESt14default_deleteIS1_EE", !744, i64 0}
!744 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb13MultiFileListESt14default_deleteIS1_ELb1ELb1EE", !745, i64 0}
!745 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb13MultiFileListESt14default_deleteIS1_EE", !746, i64 0}
!746 = !{!"_ZTSSt5tupleIJPN6duckdb13MultiFileListESt14default_deleteIS1_EEE", !747, i64 0}
!747 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb13MultiFileListESt14default_deleteIS1_EEE", !283, i64 0}
!748 = !{!"_ZTSN6duckdb10unique_ptrINS_26MultiFileReaderGlobalStateESt14default_deleteIS1_ELb1EEE", !749, i64 0}
!749 = !{!"_ZTSSt10unique_ptrIN6duckdb26MultiFileReaderGlobalStateESt14default_deleteIS1_EE", !750, i64 0}
!750 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb26MultiFileReaderGlobalStateESt14default_deleteIS1_ELb1ELb1EE", !751, i64 0}
!751 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb26MultiFileReaderGlobalStateESt14default_deleteIS1_EE", !752, i64 0}
!752 = !{!"_ZTSSt5tupleIJPN6duckdb26MultiFileReaderGlobalStateESt14default_deleteIS1_EEE", !753, i64 0}
!753 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb26MultiFileReaderGlobalStateESt14default_deleteIS1_EEE", !565, i64 0}
!754 = !{!"_ZTSSt6atomicImE", !755, i64 0}
!755 = !{!"_ZTSSt13__atomic_baseImE", !15, i64 0}
!756 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !757, i64 0}
!757 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE", !758, i64 0}
!758 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE", !759, i64 0}
!759 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !760, i64 0}
!760 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !761, i64 0, !761, i64 8, !761, i64 16}
!761 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS1_ELb1EEE", !10, i64 0}
!762 = !{!"_ZTSSt6atomicIbE", !763, i64 0}
!763 = !{!"_ZTSSt13__atomic_baseIbE", !56, i64 0}
!764 = !{!"_ZTSN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEE", !765, i64 0}
!765 = !{!"_ZTSSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EE", !766, i64 0}
!766 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_ELb1ELb1EE", !767, i64 0}
!767 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EE", !768, i64 0}
!768 = !{!"_ZTSSt5tupleIJPN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EEE", !769, i64 0}
!769 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EEE", !770, i64 0}
!770 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb24GlobalTableFunctionStateELb0EE", !771, i64 0}
!771 = !{!"p1 _ZTSN6duckdb24GlobalTableFunctionStateE", !10, i64 0}
!772 = !{!"_ZTSN6duckdb12optional_ptrIKNS_16PhysicalOperatorELb1EEE", !773, i64 0}
!773 = !{!"p1 _ZTSN6duckdb16PhysicalOperatorE", !10, i64 0}
!774 = !{!775, !72, i64 0}
!775 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !72, i64 0, !15, i64 8, !74, i64 16, !15, i64 24, !76, i64 32, !75, i64 48}
!776 = !{!775, !15, i64 8}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_ZN6duckdb28MultiFileListIterationHelper5beginEv: argument 0"}
!779 = distinct !{!779, !"_ZN6duckdb28MultiFileListIterationHelper5beginEv"}
!780 = !{!781, !781, i64 0}
!781 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEE", !10, i64 0}
!782 = !{!562, !562, i64 0}
!783 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!784 = distinct !{!784, !30}
!785 = !{!775, !75, i64 16}
!786 = distinct !{!786, !30}
!787 = distinct !{!787, !30}
!788 = !{!789}
!789 = distinct !{!789, !790, !"_ZNK6duckdb13MultiFileList12GetFirstFileEv: argument 0"}
!790 = distinct !{!790, !"_ZNK6duckdb13MultiFileList12GetFirstFileEv"}
!791 = !{!792}
!792 = distinct !{!792, !793, !"_ZN6duckdb28MultiFileListIterationHelper5beginEv: argument 0"}
!793 = distinct !{!793, !"_ZN6duckdb28MultiFileListIterationHelper5beginEv"}
!794 = !{!795, !72, i64 0}
!795 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !72, i64 0, !15, i64 8, !74, i64 16, !15, i64 24, !76, i64 32, !75, i64 48}
!796 = !{!795, !15, i64 8}
!797 = !{!798}
!798 = distinct !{!798, !799, !"_ZN6duckdb28MultiFileListIterationHelper5beginEv: argument 0"}
!799 = distinct !{!799, !"_ZN6duckdb28MultiFileListIterationHelper5beginEv"}
!800 = distinct !{!800, !30}
!801 = !{!795, !15, i64 24}
!802 = !{!803}
!803 = distinct !{!803, !804, !"_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_: argument 0"}
!804 = distinct !{!804, !"_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_"}
!805 = distinct !{!805, !30}
!806 = distinct !{!806, !30}
!807 = !{!795, !75, i64 16}
!808 = !{!809}
!809 = distinct !{!809, !810, !"_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_: argument 0"}
!810 = distinct !{!810, !"_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_"}
!811 = !{!571, !571, i64 0}
!812 = !{!572, !572, i64 0}
!813 = !{!573, !573, i64 0}
!814 = !{!576, !576, i64 0}
!815 = !{!570, !252, i64 16}
!816 = !{!817}
!817 = distinct !{!817, !818, !"_ZNK6duckdb13MultiFileList12GetFirstFileEv: argument 0"}
!818 = distinct !{!818, !"_ZNK6duckdb13MultiFileList12GetFirstFileEv"}
!819 = !{!820}
!820 = distinct !{!820, !821, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_S7_EEES7_RKS7_DpRKT_: argument 0"}
!821 = distinct !{!821, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_S7_EEES7_RKS7_DpRKT_"}
!822 = distinct !{!822, !30}
!823 = !{!824, !824, i64 0}
!824 = !{!"p1 _ZTSN6duckdb12ColumnMapperE", !10, i64 0}
!825 = distinct !{null, null}
!826 = !{!827, !72, i64 0}
!827 = !{!"_ZTSSt10_HashtableImSt4pairIKmSt17reference_wrapperIKN6duckdb11ColumnIndexEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE", !72, i64 0, !15, i64 8, !74, i64 16, !15, i64 24, !76, i64 32, !75, i64 48}
!828 = !{!827, !15, i64 8}
!829 = !{!827, !15, i64 24}
!830 = distinct !{!830, !30}
!831 = !{!832}
!832 = distinct !{!832, !833, !"_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!833 = distinct !{!833, !"_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!834 = distinct !{null, null, null, null, null, null}
!835 = !{!170, !171, i64 72}
!836 = !{!837}
!837 = distinct !{!837, !838, !"_ZSt9make_pairIiN6duckdb10unique_ptrINS0_21MultiFileIndexMappingESt14default_deleteIS2_ELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_: argument 0"}
!838 = distinct !{!838, !"_ZSt9make_pairIiN6duckdb10unique_ptrINS0_21MultiFileIndexMappingESt14default_deleteIS2_ELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_"}
!839 = !{!840, !4, i64 0}
!840 = !{!"_ZTSSt4pairIiN6duckdb10unique_ptrINS0_21MultiFileIndexMappingESt14default_deleteIS2_ELb1EEEE", !4, i64 0, !841, i64 8}
!841 = !{!"_ZTSN6duckdb10unique_ptrINS_21MultiFileIndexMappingESt14default_deleteIS1_ELb1EEE", !842, i64 0}
!842 = !{!"_ZTSSt10unique_ptrIN6duckdb21MultiFileIndexMappingESt14default_deleteIS1_EE", !843, i64 0}
!843 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb21MultiFileIndexMappingESt14default_deleteIS1_ELb1ELb1EE", !844, i64 0}
!844 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb21MultiFileIndexMappingESt14default_deleteIS1_EE", !845, i64 0}
!845 = !{!"_ZTSSt5tupleIJPN6duckdb21MultiFileIndexMappingESt14default_deleteIS1_EEE", !846, i64 0}
!846 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb21MultiFileIndexMappingESt14default_deleteIS1_EEE", !847, i64 0}
!847 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb21MultiFileIndexMappingELb0EE", !848, i64 0}
!848 = !{!"p1 _ZTSN6duckdb21MultiFileIndexMappingE", !10, i64 0}
!849 = !{!848, !848, i64 0}
!850 = distinct !{ptr @_ZNSt10unique_ptrIN6duckdb21MultiFileIndexMappingESt14default_deleteIS1_EED2Ev, null, null, null}
!851 = distinct !{ptr @_ZNSt10unique_ptrIN6duckdb21MultiFileIndexMappingESt14default_deleteIS1_EED2Ev, null}
!852 = !{!853, !853, i64 0}
!853 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEE", !10, i64 0}
!854 = !{!855, !853, i64 0}
!855 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE17_Vector_impl_dataE", !853, i64 0, !853, i64 8, !853, i64 16}
!856 = !{!855, !853, i64 8}
!857 = !{!855, !853, i64 16}
!858 = distinct !{!858, !30}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!861 = distinct !{!861, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!862 = !{!863}
!863 = distinct !{!863, !861, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!864 = !{!863, !865}
!865 = distinct !{!865, !866}
!866 = distinct !{!866, !"LVerDomain"}
!867 = !{!860, !868}
!868 = distinct !{!868, !866}
!869 = distinct !{!869, !30, !236, !237}
!870 = distinct !{!870, !30, !236}
!871 = !{!872, !872, i64 0}
!872 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEE", !10, i64 0}
!873 = !{!874, !872, i64 16}
!874 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE17_Vector_impl_dataE", !872, i64 0, !872, i64 8, !872, i64 16}
!875 = !{!874, !872, i64 0}
!876 = !{!874, !872, i64 8}
!877 = distinct !{!877, !30}
!878 = !{!879}
!879 = distinct !{!879, !880, !"_ZN6duckdb9make_uniqINS_22VariableReturnBindDataEJRNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!880 = distinct !{!880, !"_ZN6duckdb9make_uniqINS_22VariableReturnBindDataEJRNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!881 = distinct !{null}
!882 = !{!883, !883, i64 0}
!883 = !{!"p1 _ZTSN6duckdb22VariableReturnBindDataE", !10, i64 0}
!884 = !{!885, !885, i64 0}
!885 = !{!"p1 _ZTSN6duckdb23BoundFunctionExpressionE", !10, i64 0}
!886 = distinct !{null, null}
!887 = distinct !{null, null}
!888 = distinct !{ptr @_ZN6duckdb14ScalarFunctionD2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!889 = !{ptr @_ZN6duckdb14ScalarFunctionD2Ev}
!890 = !{!891, !10, i64 16}
!891 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!892 = !{!893, !15, i64 0}
!893 = !{!"_ZTSN6duckdb22MultiFileLocalColumnIdE", !15, i64 0}
!894 = !{!895}
!895 = distinct !{!895, !896, !"_ZN6duckdb9make_uniqINS_11ColumnIndexEJmNS_6vectorIS1_Lb1ESaIS1_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!896 = distinct !{!896, !"_ZN6duckdb9make_uniqINS_11ColumnIndexEJmNS_6vectorIS1_Lb1ESaIS1_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!897 = distinct !{ptr @_ZN6duckdb11ColumnIndexD2Ev, ptr @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev, null, null}
!898 = !{ptr @_ZN6duckdb11ColumnIndexD2Ev, ptr @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev}
!899 = !{ptr @_ZN6duckdb11ColumnIndexD2Ev}
!900 = distinct !{null, null, null}
!901 = distinct !{null}
!902 = !{!827, !75, i64 16}
!903 = distinct !{!903, !30}
!904 = !{!905}
!905 = distinct !{!905, !906, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!906 = distinct !{!906, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!907 = !{!847, !848, i64 0}
!908 = !{!909, !15, i64 0}
!909 = !{!"_ZTSN6duckdb21MultiFileIndexMappingE", !15, i64 0, !910, i64 8}
!910 = !{!"_ZTSSt13unordered_mapImN6duckdb10unique_ptrINS0_21MultiFileIndexMappingESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE", !911, i64 0}
!911 = !{!"_ZTSSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_21MultiFileIndexMappingESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE", !72, i64 0, !15, i64 8, !74, i64 16, !15, i64 24, !76, i64 32, !75, i64 48}
!912 = !{!913}
!913 = distinct !{!913, !914, !"_ZN6duckdb9make_uniqINS_21MultiFileIndexMappingEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!914 = distinct !{!914, !"_ZN6duckdb9make_uniqINS_21MultiFileIndexMappingEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!915 = !{!911, !72, i64 0}
!916 = !{!911, !15, i64 8}
!917 = !{!918}
!918 = distinct !{!918, !919, !"_ZN6duckdb9make_uniqINS_11ColumnIndexEJmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!919 = distinct !{!919, !"_ZN6duckdb9make_uniqINS_11ColumnIndexEJmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!920 = !{!921, !10, i64 24}
!921 = !{!"_ZTSSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEE", !891, i64 0, !10, i64 24}
!922 = !{i64 0, i64 16, !18}
!923 = !{!924, !925, i64 0}
!924 = !{!"_ZTSSt12__shared_ptrIN6duckdb18ScalarFunctionInfoELN9__gnu_cxx12_Lock_policyE2EE", !925, i64 0, !68, i64 8}
!925 = !{!"p1 _ZTSN6duckdb18ScalarFunctionInfoE", !10, i64 0}
!926 = !{!49, !49, i64 0}
!927 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!928 = !{!929, !930, i64 8}
!929 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17reference_wrapperIKN6duckdb25MultiFileColumnDefinitionEEESaISC_EE17_Vector_impl_dataE", !930, i64 0, !930, i64 8, !930, i64 16}
!930 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17reference_wrapperIKN6duckdb25MultiFileColumnDefinitionEEE", !10, i64 0}
!931 = !{!929, !930, i64 16}
!932 = !{!933, !378, i64 0}
!933 = !{!"_ZTSSt17reference_wrapperIKN6duckdb25MultiFileColumnDefinitionEE", !378, i64 0}
!934 = !{!929, !930, i64 0}
!935 = !{!936}
!936 = distinct !{!936, !937, !"_ZN6duckdbL21MapColumnMapComponentERNS_13ClientContextERKSt13unordered_mapImSt17reference_wrapperIKNS_11ColumnIndexEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEERS5_RKNS_12ColumnMapperEmRKNS_25MultiFileColumnDefinitionESO_: argument 0"}
!937 = distinct !{!937, !"_ZN6duckdbL21MapColumnMapComponentERNS_13ClientContextERKSt13unordered_mapImSt17reference_wrapperIKNS_11ColumnIndexEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEERS5_RKNS_12ColumnMapperEmRKNS_25MultiFileColumnDefinitionESO_"}
!938 = distinct !{null}
!939 = !{!940}
!940 = distinct !{!940, !941, !"_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!941 = distinct !{!941, !"_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!942 = distinct !{null, null, null, null, null, null, null}
!943 = !{!944}
!944 = distinct !{!944, !945, !"_ZSt9make_pairIRmN6duckdb10unique_ptrINS1_21MultiFileIndexMappingESt14default_deleteIS3_ELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_: argument 0"}
!945 = distinct !{!945, !"_ZSt9make_pairIRmN6duckdb10unique_ptrINS1_21MultiFileIndexMappingESt14default_deleteIS3_ELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_"}
!946 = !{!947, !15, i64 0}
!947 = !{!"_ZTSSt4pairImN6duckdb10unique_ptrINS0_21MultiFileIndexMappingESt14default_deleteIS2_ELb1EEEE", !15, i64 0, !841, i64 8}
!948 = !{!949}
!949 = distinct !{!949, !950, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!950 = distinct !{!950, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!951 = !{!952}
!952 = distinct !{!952, !950, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!953 = !{!952, !954}
!954 = distinct !{!954, !955}
!955 = distinct !{!955, !"LVerDomain"}
!956 = !{!949, !957}
!957 = distinct !{!957, !955}
!958 = distinct !{!958, !30, !236, !237}
!959 = distinct !{!959, !30, !236}
!960 = distinct !{!960, !30}
!961 = !{!962}
!962 = distinct !{!962, !963, !"_ZN6duckdb9make_uniqINS_22VariableReturnBindDataEJRNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!963 = distinct !{!963, !"_ZN6duckdb9make_uniqINS_22VariableReturnBindDataEJRNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!964 = !{!965}
!965 = distinct !{!965, !966, !"_ZN6duckdb9make_uniqINS_11ColumnIndexEJmNS_6vectorIS1_Lb1ESaIS1_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!966 = distinct !{!966, !"_ZN6duckdb9make_uniqINS_11ColumnIndexEJmNS_6vectorIS1_Lb1ESaIS1_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!967 = distinct !{!967, !30}
!968 = !{!969}
!969 = distinct !{!969, !970, !"_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!970 = distinct !{!970, !"_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!971 = !{!972}
!972 = distinct !{!972, !973, !"_ZSt9make_pairIRmN6duckdb10unique_ptrINS1_21MultiFileIndexMappingESt14default_deleteIS3_ELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_: argument 0"}
!973 = distinct !{!973, !"_ZSt9make_pairIRmN6duckdb10unique_ptrINS1_21MultiFileIndexMappingESt14default_deleteIS3_ELb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_"}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!976 = distinct !{!976, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!977 = !{!978}
!978 = distinct !{!978, !976, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!979 = !{!978, !980}
!980 = distinct !{!980, !981}
!981 = distinct !{!981, !"LVerDomain"}
!982 = !{!975, !983}
!983 = distinct !{!983, !981}
!984 = distinct !{!984, !30, !236, !237}
!985 = distinct !{!985, !30, !236}
!986 = distinct !{!986, !30}
!987 = !{!988}
!988 = distinct !{!988, !989, !"_ZN6duckdb9make_uniqINS_22VariableReturnBindDataEJRNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!989 = distinct !{!989, !"_ZN6duckdb9make_uniqINS_22VariableReturnBindDataEJRNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!990 = !{!991}
!991 = distinct !{!991, !992, !"_ZN6duckdb9make_uniqINS_11ColumnIndexEJmNS_6vectorIS1_Lb1ESaIS1_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!992 = distinct !{!992, !"_ZN6duckdb9make_uniqINS_11ColumnIndexEJmNS_6vectorIS1_Lb1ESaIS1_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!993 = !{!994, !378, i64 0}
!994 = !{!"_ZTSN6duckdb12optional_ptrIKNS_25MultiFileColumnDefinitionELb1EEE", !378, i64 0}
!995 = !{!996}
!996 = distinct !{!996, !997, !"_ZN6duckdb9make_uniqINS_24BoundReferenceExpressionEJRKNS_11LogicalTypeERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!997 = distinct !{!997, !"_ZN6duckdb9make_uniqINS_24BoundReferenceExpressionEJRKNS_11LogicalTypeERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1000 = distinct !{!1000, !"_ZN6duckdb9make_uniqINS_23BoundConstantExpressionEJNS_5ValueEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1003, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1003 = distinct !{!1003, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1003, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1006 = !{!1005, !1007}
end_hunk_3
