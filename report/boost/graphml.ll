Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/graphml?download=true
inline.NumInlined: 3050
inline.NumDeleted: 1013
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114graphml_reader8key_kindESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_:bb.a
  %.08.i.i.i.i20.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i19.i, i64 2147483647)
  %.0.i6.i.i.i21.i = trunc nsw i64 %.08.i.i.i.i20.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i
  %.0.i.i.i17.i = phi i32 [ %i.dh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i ], [ %.0.i6.i.i.i21.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i ]
  %i.dj = icmp slt i32 %.0.i.i.i17.i, 0
  br i1 %i.dj, label %.thread.i, label %.thread9.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.exit: ; preds = %bb.q, %bb.n
  %.sroa.021.2.i.i = phi ptr [ null, %bb.q ], [ %i.bo, %bb.n ] ; 2 uses
  %.sroa.12.2.i.i = phi ptr [ %i.cf, %bb.q ], [ %i.bo, %bb.n ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.12.2.i.i, null
  br i1 %.not.i, label %.thread9.i, label %.thread.i

.thread.i:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i, %._crit_edge.thread.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.exit, %bb.s, %bb.p, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %.sroa.12.2.i8.i = phi ptr [ %.sroa.12.2.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.exit ], [ %spec.select30.i.i, %bb.s ], [ %i.at, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ %spec.select28.i.i, %bb.p ], [ %.010.lcssa21.i, %._crit_edge.thread.i ], [ %.010.lcssa20.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i ] ; 4 uses
  %.sroa.021.2.i7.i = phi ptr [ %.sroa.021.2.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.exit ], [ %spec.select29.i.i, %bb.s ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ %spec.select.i.i, %bb.p ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i ]
  %.not.i.i.i11 = icmp ne ptr %.sroa.021.2.i7.i, null
  %i.dk = icmp eq ptr %.sroa.12.2.i8.i, %i.d
  %or.cond.i.i.i = select i1 %.not.i.i.i11, i1 true, i1 %i.dk
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !53 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i12 = call i64 @llvm.umin.i64(i64 %i.dm, i64 %.val9.i) ; 2 uses
  %i.dn = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i12, 0
  br i1 %i.dn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i17, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i13: ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !55
  %i.dq = call i32 @memcmp(ptr noundef %.val8.i, ptr noundef %i.dp, i64 noundef %.sroa.speculated.i.i.i.i.i.i12) #26 ; 2 uses
  %.not.i.i.i.i.i.i14 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i17, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i15

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i17: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i13, %bb.v
  %i.dr = sub i64 %.val9.i, %i.dm
  %spec.select7.i.i.i.i.i.i.i18 = call i64 @llvm.smax.i64(i64 %i.dr, i64 -2147483648)
  %.08.i.i.i.i.i.i.i19 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i18, i64 2147483647)
  %.0.i6.i.i.i.i.i.i20 = trunc nsw i64 %.08.i.i.i.i.i.i.i19 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i15

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i15: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i17, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i13
  %.0.i.i.i.i.i.i16 = phi i32 [ %i.dq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i13 ], [ %.0.i6.i.i.i.i.i.i20, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i17 ]
  %i.ds = icmp slt i32 %.0.i.i.i.i.i.i16, 0
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i15, %.thread.i
  %i.dt = phi i1 [ %i.ds, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i15 ], [ true, %.thread.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dt, ptr noundef nonnull %i.w, ptr noundef nonnull %.sroa.12.2.i8.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #26
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !48
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_.exit

.thread9.i:                                       ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45.i.i
  %.sroa.01.0.ph.i = phi ptr [ %.sroa.021.2.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_.exit ], [ %.08.lcssa.i.i.i30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45.i.i ], [ %.sroa.01.0.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i ]
  %i.dx = icmp eq ptr %.val8.i, %i.y
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.thread9.i
  %i.dy = icmp ult i64 %.val9.i, 16
  call void @llvm.assume(i1 %i.dy)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.thread9.i
  %i.dz = load i64, ptr %i.y, align 8, !tbaa !54
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %.val8.i, i64 noundef %i.ea) #28
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 72) #28
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i, %bb.w, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.028.0 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %i.w, %bb.w ], [ %.sroa.01.0.ph.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_114graphml_reader8key_kindEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 64
  ret ptr %i.eb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.93", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !118 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !0

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %1, ptr %2, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114graphml_reader10get_graphsERKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_EEEmbRSt6vectorIPSD_SaISG_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.split153:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.boost::property_tree::string_path", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -96
  %i.i = select i1 %i.g, ptr null, ptr %i.h       ; 2 uses
  %.not157 = icmp eq ptr %i.i, %i.d
  br i1 %.not157, label %.critedge, label %.preheader112.lr.ph

.preheader112.lr.ph:                              ; preds = %.split153
  %i.j = icmp eq i64 %2, -1                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 29
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 29
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112.lr.ph, %.loopexit
  %.044156 = phi i1 [ %3, %.preheader112.lr.ph ], [ %.us-phi152, %.loopexit ] ; 4 uses
  %.048155 = phi i64 [ 0, %.preheader112.lr.ph ], [ %.us-phi151, %.loopexit ] ; 4 uses
  %.sroa.095.0154 = phi ptr [ %i.i, %.preheader112.lr.ph ], [ %i.ed, %.loopexit ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.095.0154, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.095.0154, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.095.0154, i64 64
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !53
  %i.ac = icmp eq i64 %i.ab, 5
  br i1 %i.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.preheader112
  %i.ad = load ptr, ptr %.sroa.095.0154, align 8, !tbaa !55 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 1885434471
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ai, 104
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ao = icmp eq i64 %.048155, %2
  %or.cond = or i1 %i.j, %i.ao
  br i1 %or.cond, label %bb.a, label %bb.m

bb.a:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !401 ; 4 uses
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !143
  %.not.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %i.ap, align 8, !tbaa !117
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !401
  br label %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE9push_backEOSD_.exit

bb.c:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %4, align 8, !tbaa !142   ; 4 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 5 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.d, label %_ZNKSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #29
  unreachable

_ZNKSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #27 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  store ptr %i.z, ptr %i.be, align 8, !tbaa !117
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.e, label %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i.i

_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i.i
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !143
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bj) #28
  br label %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i.i
  store ptr %i.bd, ptr %4, align 8, !tbaa !142
  store ptr %i.bg, ptr %i.k, align 8, !tbaa !401
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !143
  br label %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE9push_backEOSD_.exit

_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i
  br i1 %.044156, label %bb.g, label %.critedge3.a

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE9push_backEOSD_.exit
  %i.bl = load ptr, ptr %i.aa, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !58 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !63 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -96
  %i.bs = select i1 %i.bq, ptr null, ptr %i.br    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bn
  br i1 %i.bt, label %.critedge3, label %.preheader

.preheader:                                       ; preds = %bb.g, %.split.us
  %.sroa.085.0147 = phi ptr [ %i.dw, %.split.us ], [ %i.bs, %bb.g ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.085.0147, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.085.0147, i64 32 ; 2 uses
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !53
  %i.bx = icmp eq i64 %i.bw, 4
  br i1 %i.bx, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.split.us

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.preheader
  %i.by = load ptr, ptr %.sroa.085.0147, align 8, !tbaa !55
  %i.bz = load i32, ptr %i.by, align 1
  %i.ca = icmp ne i32 %i.bz, 1635017060
  %i.cb = zext i1 %i.ca to i32
  %.not = icmp eq i32 %i.cb, 0
  br i1 %.not, label %bb.h, label %.split.us

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.m, ptr %7, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.m, ptr noundef nonnull align 1 dereferenceable(13) @.str.19, i64 13, i1 false)
  store i64 13, ptr %i.n, align 8, !tbaa !53
  store i8 0, ptr %i.w, align 1, !tbaa !54
  store ptr %i.o, ptr %6, align 8, !tbaa !51, !alias.scope !402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, ptr noundef nonnull align 1 dereferenceable(13) @.str.19, i64 13, i1 false)
  store i64 13, ptr %i.p, align 8, !tbaa !53, !alias.scope !402
  store i8 0, ptr %i.x, align 1, !tbaa !54
  store i8 47, ptr %i.q, align 8, !tbaa !78, !alias.scope !402
  store ptr %i.o, ptr %i.r, align 8, !alias.scope !402
  %i.cc = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_EE9get_childERKNS0_11string_pathIS7_NS0_13id_translatorIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %.noexc59 unwind label %bb.j

.noexc59:                                         ; preds = %bb.h
  invoke void @_ZNK5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_EE9get_valueIS7_NS0_13id_translatorIS7_EEEENS_9enable_ifINS0_6detail13is_translatorIT0_EET_E4typeESH_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.cc)
          to label %_ZNK5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_EE3getIS7_EET_RKNS0_11string_pathIS7_NS0_13id_translatorIS7_EEEE.exit unwind label %bb.j

_ZNK5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_EE3getIS7_EET_RKNS0_11string_pathIS7_NS0_13id_translatorIS7_EEEE.exit: ; preds = %.noexc59
  %i.cd = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.o
  br i1 %i.ce, label %_ZN5boost13property_tree11string_pathINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13id_translatorIS7_EEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_EE3getIS7_EET_RKNS0_11string_pathIS7_NS0_13id_translatorIS7_EEEE.exit
  %i.cf = load i64, ptr %i.o, align 8, !tbaa !54
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #28
  br label %_ZN5boost13property_tree11string_pathINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13id_translatorIS7_EEED2Ev.exit

_ZN5boost13property_tree11string_pathINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13id_translatorIS7_EEED2Ev.exit: ; preds = %_ZNK5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_EE3getIS7_EET_RKNS0_11string_pathIS7_NS0_13id_translatorIS7_EEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ch = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.m
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost13property_tree11string_pathINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13id_translatorIS7_EEED2Ev.exit
  %i.cj = load i64, ptr %i.m, align 8, !tbaa !54
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5boost13property_tree11string_pathINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13id_translatorIS7_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNK5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_EE9get_valueIcEENS_9enable_ifINS0_6detail12is_characterIT_EENS3_ISF_S4_ISF_ESaISF_EEEE4typeEPKSF_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noundef nonnull @.str.3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !111, !nonnull !93, !align !112 ; 2 uses
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc61 unwind label %bb.l

.noexc61:                                         ; preds = %bb.i
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc62 unwind label %bb.l

.noexc62:                                         ; preds = %.noexc61
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !114
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.cn)
          to label %_ZN12_GLOBAL__N_114graphml_reader21handle_graph_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.l, !inline_history !398

_ZN12_GLOBAL__N_114graphml_reader21handle_graph_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %.noexc62
  %i.cr = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.u
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZN12_GLOBAL__N_114graphml_reader21handle_graph_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.ct = load i64, ptr %i.u, align 8, !tbaa !54
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZN12_GLOBAL__N_114graphml_reader21handle_graph_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.cv = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.v
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.cx = load i64, ptr %i.v, align 8, !tbaa !54
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.split.us

bb.j:                                             ; preds = %.noexc59, %bb.h
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.o
  br i1 %i.db, label %_ZN5boost13property_tree11string_pathINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13id_translatorIS7_EEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %bb.j
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !54
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #28
  br label %_ZN5boost13property_tree11string_pathINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13id_translatorIS7_EEED2Ev.exit72

_ZN5boost13property_tree11string_pathINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13id_translatorIS7_EEED2Ev.exit72: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70
  %i.de = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.m
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZN5boost13property_tree11string_pathINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13id_translatorIS7_EEED2Ev.exit72
  %i.dg = load i64, ptr %i.m, align 8, !tbaa !54
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZN5boost13property_tree11string_pathINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13id_translatorIS7_EEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.l:                                             ; preds = %.noexc62, %.noexc61, %bb.i
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.u
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.l
  %i.dm = load i64, ptr %i.u, align 8, !tbaa !54
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.k
  %.pn54 = phi { ptr, i32 } [ %i.di, %bb.k ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.dj, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.do = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.v
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.dq = load i64, ptr %i.v, align 8, !tbaa !54
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn54.pn = phi { ptr, i32 } [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn54.pn

.split.us:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.085.0147, i64 104
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !63 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -96
  %i.dw = select i1 %i.du, ptr null, ptr %i.dv    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bn
  br i1 %i.dx, label %.critedge3, label %.preheader, !llvm.loop !399

.critedge3:                                       ; preds = %.split.us, %bb.g
  call fastcc void @_ZN12_GLOBAL__N_114graphml_reader10get_graphsERKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_EEEmbRSt6vectorIPSD_SaISG_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br i1 %i.j, label %bb.m, label %.critedge

.critedge3.a:                                     ; preds = %_ZNSt6vectorIPKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_EEESaISD_EE9push_backEOSD_.exit
  call fastcc void @_ZN12_GLOBAL__N_114graphml_reader10get_graphsERKN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_EEEmbRSt6vectorIPSD_SaISG_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br i1 %i.j, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.critedge3.a, %.critedge3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.347 = phi i1 [ false, %.critedge3 ], [ %.044156, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ false, %.critedge3.a ]
  %i.dy = add i64 %.048155, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader112, %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.us-phi151 = phi i64 [ %.048155, %.preheader112 ], [ %i.dy, %bb.m ], [ %.048155, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %.us-phi152 = phi i1 [ %.044156, %.preheader112 ], [ %.347, %bb.m ], [ %.044156, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.095.0154, i64 104
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !63 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -96
  %i.ed = select i1 %i.eb, ptr null, ptr %i.ec    ; 2 uses
  %.not186 = icmp eq ptr %i.ed, %i.d
  br i1 %.not186, label %.critedge, label %.preheader112, !llvm.loop !400

.critedge:                                        ; preds = %.critedge3, %.critedge3.a, %.loopexit, %.split153
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114graphml_reader13handle_vertexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::any", align 8        ; 6 uses
  %3 = alloca %"class.boost::any", align 8        ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53   ; 4 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.n = sub i64 %i.i, %i.f
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.o = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.o, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !118 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !2

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.p, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.f) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.w = sub i64 %i.f, %i.r
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.x, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.critedge

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.y = load ptr, ptr %0, align 8, !tbaa !111, !nonnull !93, !align !112 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.boost::any") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.ad = load ptr, ptr %3, align 8, !tbaa !128
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !128
  store ptr %i.ae, ptr %3, align 8, !tbaa !128
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !128
  %i.af = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  store ptr null, ptr %3, align 8, !tbaa !128
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN5boost3anyaSEOS0_.exit.thread, label %_ZN5boost3anyaSEOS0_.exit

_ZN5boost3anyaSEOS0_.exit:                        ; preds = %bb.d
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !114
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #26, !inline_history !403
  %.pr = load ptr, ptr %3, align 8, !tbaa !128    ; 3 uses
  %i.ak = icmp eq ptr %.pr, null
  br i1 %i.ak, label %_ZN5boost3anyaSEOS0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost3anyaSEOS0_.exit
  %i.al = load ptr, ptr %.pr, align 8, !tbaa !114
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #26, !inline_history !5
  br label %_ZN5boost3anyaSEOS0_.exit.thread

bb.f:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5boost3anyD2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #26, !inline_history !5
  br label %_ZN5boost3anyD2Ev.exit6

common.resume:                                    ; preds = %bb.n, %bb.o, %_ZN5boost3anyD2Ev.exit6
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %_ZN5boost3anyD2Ev.exit6 ], [ %i.bx, %bb.o ], [ %i.bx, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost3anyD2Ev.exit6:                          ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

_ZN5boost3anyaSEOS0_.exit.thread:                 ; preds = %bb.d, %bb.e, %_ZN5boost3anyaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not15 = icmp eq ptr %i.av, %i.aw
  br i1 %.not15, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost3anyaSEOS0_.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.07.016 = phi ptr [ %i.av, %.lr.ph ], [ %i.cd, %bb.p ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.016, i64 32 ; 3 uses
  %i.bb = call fastcc noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_114graphml_reader8key_kindESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.016, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bf = load ptr, ptr %0, align 8, !tbaa !111, !nonnull !93, !align !112 ; 2 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !128 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZN5boost3anyC2ERKS0_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !114
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi), !inline_history !404
  br label %_ZN5boost3anyC2ERKS0_.exit.i

_ZN5boost3anyC2ERKS0_.exit.i:                     ; preds = %bb.j, %bb.i
  %i.bn = phi ptr [ %i.bm, %bb.j ], [ null, %bb.i ]
  store ptr %i.bn, ptr %2, align 8, !tbaa !128
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN5boost3anyC2ERKS0_.exit.i
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !114
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %2, align 8, !tbaa !128   ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN12_GLOBAL__N_114graphml_reader20handle_node_propertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_ZN5boost13property_tree11basic_ptreeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_EEC2ERKS7_:bb.a

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !53
  %i.m = load ptr, ptr %0, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %bb.d unwind label %bb.f       ; 4 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #27
          to label %bb.e unwind label %bb.g       ; 6 uses

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 3 uses
  store i64 0, ptr %i.r, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store ptr %i.r, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr %i.r, ptr %i.t, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store ptr %i.u, ptr %i.v, align 8, !tbaa !63
  store ptr %i.u, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.w, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %i.x, align 8, !tbaa !74
  ret void

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 32) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.y, %bb.f ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13property_tree11basic_ptreeISA_SA_St4lessISA_EEEESB_XadL_ZNSH_5firstEEEEESF_NS1_9nth_layerILi2ESH_NS0_10indexed_byINS0_9sequencedINS0_3tagIJEEEEEJNS0_18ordered_non_uniqueINSM_IJNSG_4subs7by_nameEEEESI_SF_EEEEESaISH_EEESS_NS1_22ordered_non_unique_tagENS1_19null_augment_policyEE7insert_INS1_10lvalue_tagEEEPNS1_20sequenced_index_nodeINS1_18ordered_index_nodeISY_NS1_15index_node_baseISH_SV_EEEEEERKSH_RS18_T_(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59
  %i.e = and i64 %i.d, -2                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %select.unfold._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = inttoptr i64 %i.e to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i
  %.pn.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.r, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 2 uses
  %.01115.i = getelementptr inbounds i8, ptr %.pn.i, i64 -72 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.pn.i, i64 -64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.i) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.n = load ptr, ptr %.01115.i, align 8, !tbaa !55
  %i.o = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.p = sub i64 %i.i, %i.l
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i.i, 0              ; 2 uses
  %.in.v.i = select i1 %i.q, i64 80, i64 88
  %.in.i = getelementptr inbounds nuw i8, ptr %.01115.i, i64 %.in.v.i
  %i.r = load ptr, ptr %.in.i, align 8, !tbaa !61 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %select.unfold._crit_edge.loopexit.i, label %bb.b

select.unfold._crit_edge.loopexit.i:              ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.a
  %.012.lcssa.i = phi ptr [ %i.b, %bb.a ], [ %.01115.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 4 uses
  %.0.lcssa.i = phi i1 [ true, %bb.a ], [ %i.q, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.lcssa.i, i64 72 ; 3 uses
  %i.u = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #27 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !185
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost13property_tree11basic_ptreeIS5_S5_St4lessIS5_EEEEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %select.unfold._crit_edge.loopexit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #26 ; 0 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !185
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef 112) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #31
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %select.unfold._crit_edge.loopexit.i
  %i.ac = load ptr, ptr %2, align 8, !tbaa !185   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 9 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !58  ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %.0.lcssa.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.lcssa.i, i64 80
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !61
  %i.ah = icmp eq ptr %.012.lcssa.i, %i.ae
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !59
  %i.ak = and i64 %i.aj, 1
  %i.al = or i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.af, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store ptr %i.ad, ptr %i.am, align 8, !tbaa !61
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.ap = icmp eq ptr %i.t, %i.ao
  br i1 %i.ap, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  store ptr %i.ad, ptr %i.an, align 8, !tbaa !61
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.lcssa.i, i64 88
  store ptr %i.ad, ptr %i.aq, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61
  %i.at = icmp eq ptr %i.t, %i.as
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.ad, ptr %i.ar, align 8, !tbaa !61
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %i.au = ptrtoint ptr %i.t to i64
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !59
  %i.aw = and i64 %i.av, 1
  %i.ax = or i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.ad, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %3, align 8, !tbaa !209, !alias.scope !535
  call void @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE(ptr noundef nonnull %i.ad, ptr noundef nonnull align 8 dead_on_return %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret ptr %i.ac
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost13property_tree11basic_ptreeIS5_S5_St4lessIS5_EEEEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !51
  %i.d = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.f, ptr %i.b, align 8, !tbaa !59
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !55
  %i.i = load i64, ptr %i.b, align 8, !tbaa !59
  store i64 %i.i, ptr %i.c, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !54
  store i8 %i.k, ptr %i.j, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = load ptr, ptr %0, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !51
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !55   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.u, ptr %i.a, align 8, !tbaa !59
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.l, !inline_history !537 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.w, ptr %i.p, align 8, !tbaa !55
  %i.x = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.x, ptr %i.r, align 8, !tbaa !54
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !54
  store i8 %i.z, ptr %i.y, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !53
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ae = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %bb.f unwind label %bb.i, !inline_history !537 ; 5 uses

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ai = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #27
          to label %_ZN5boost11multi_index6detail13header_holderIPNS1_20sequenced_index_nodeINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13property_tree11basic_ptreeISD_SD_St4lessISD_EEEESaISK_EEEEEEENS0_21multi_index_containerISK_NS0_10indexed_byINS0_9sequencedINS0_3tagIJEEEEEJNS0_18ordered_non_uniqueINST_IJNSJ_4subs7by_nameEEEENS0_6memberISK_SE_XadL_ZNSK_5firstEEEEESI_EEEEESL_EEEC2Ev.exit.i unwind label %bb.g, !inline_history !536

_ZN5boost11multi_index6detail13header_holderIPNS1_20sequenced_index_nodeINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13property_tree11basic_ptreeISD_SD_St4lessISD_EEEESaISK_EEEEEEENS0_21multi_index_containerISK_NS0_10indexed_byINS0_9sequencedINS0_3tagIJEEEEEJNS0_18ordered_non_uniqueINST_IJNSJ_4subs7by_nameEEEENS0_6memberISK_SE_XadL_ZNSK_5firstEEEEESI_EEEEESL_EEEC2Ev.exit.i: ; preds = %bb.f
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 0, ptr %i.aj, align 8, !tbaa !72
  invoke void @_ZN5boost11multi_index21multi_index_containerISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13property_tree11basic_ptreeIS8_S8_St4lessIS8_EEEENS0_10indexed_byINS0_9sequencedINS0_3tagIJEEEEEJNS0_18ordered_non_uniqueINSI_IJNSE_4subs7by_nameEEEENS0_6memberISF_S9_XadL_ZNSF_5firstEEEEESD_EEEEESaISF_EE19copy_construct_fromERKSU_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %bb.k unwind label %bb.h, !inline_history !536

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body5

bb.h:                                             ; preds = %_ZN5boost11multi_index6detail13header_holderIPNS1_20sequenced_index_nodeINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13property_tree11basic_ptreeISD_SD_St4lessISD_EEEESaISK_EEEEEEENS0_21multi_index_containerISK_NS0_10indexed_byINS0_9sequencedINS0_3tagIJEEEEEJNS0_18ordered_non_uniqueINST_IJNSJ_4subs7by_nameEEEENS0_6memberISK_SE_XadL_ZNSK_5firstEEEEESI_EEEEESL_EEEC2Ev.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !58
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef 112) #28, !inline_history !536
  br label %.body5

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.body5:                                           ; preds = %bb.g, %bb.h
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.al, %bb.h ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #28, !inline_history !537
  br label %bb.j

bb.j:                                             ; preds = %.body5, %bb.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body6, %.body5 ], [ %i.an, %bb.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !55  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.r
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !54
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #28, !inline_history !537
  br label %.body

bb.k:                                             ; preds = %_ZN5boost11multi_index6detail13header_holderIPNS1_20sequenced_index_nodeINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13property_tree11basic_ptreeISD_SD_St4lessISD_EEEESaISK_EEEEEEENS0_21multi_index_containerISK_NS0_10indexed_byINS0_9sequencedINS0_3tagIJEEEEEJNS0_18ordered_non_uniqueINST_IJNSJ_4subs7by_nameEEEENS0_6memberISK_SE_XadL_ZNSK_5firstEEEEESI_EEEEESL_EEEC2Ev.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ae, ptr %i.as, align 8, !tbaa !74
  ret void

bb.l:                                             ; preds = %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.l ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.i, %bb.j ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.c
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !54
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE(ptr noundef %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !59
  %i.b = and i64 %i.a, -2
  store i64 %i.b, ptr %0, align 8, !tbaa !59
  %i.c = load ptr, ptr %1, align 8, !tbaa !209    ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59
  %i.e = and i64 %i.d, -2
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %.not99 = icmp eq ptr %0, %i.f
  br i1 %.not99, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !59
end_hunk_1
