Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-udt_macro?download=true
inline.NumInlined: 8914
inline.NumDeleted: 2719
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE17_M_emplace_uniqueIJS5_SG_EEES6_ISt17_Rb_tree_iteratorISH_EbEDpOT_:bb.a

bb.g:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.am = load i8, ptr %i.p, align 8, !tbaa !49
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i8 noundef zeroext %i.am)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i unwind label %bb.i, !inline_history !3

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #27, !inline_history !3
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i: ; preds = %bb.h
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.c
  br i1 %i.aq, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ap) #28, !inline_history !4
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #28, !inline_history !5
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i
  %.sroa.3.016 = phi i8 [ 1, %.thread ], [ 0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i ]
  %.sroa.011.015 = phi ptr [ %i.a, %.thread ], [ %i.s, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.015, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.016, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !134 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !383

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !44
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !44
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #26 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load i8, ptr %i.c, align 8, !tbaa !49
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.e)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i unwind label %bb.c, !inline_history !3

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27, !inline_history !3
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #28, !inline_history !4
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #28, !inline_history !5
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIPKNS1_6detail8json_refISD_EEEEvT_SM_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24                  ; 4 uses
  %4 = icmp ugt i64 %i.d, 576460752303423487
  br i1 %4, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #29
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !117
  br label %_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !117
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.e
  %.016.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43, !noalias !387 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.01215.i.i.i.i, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %.01215.i.i.i.i, align 8, !tbaa !40, !noalias !387
  %i.n = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !36, !noalias !387
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.o = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !386

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #29
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.t

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.p, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.w, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_24person_with_private_dataE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 7 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %2, align 8
  %i.c = load i32, ptr %i.a, align 8, !tbaa !97
  %i.d = sext i32 %i.c to i64
  store i8 5, ptr %2, align 8, !tbaa !40
  store i64 %i.d, ptr %i.b, align 8, !tbaa !36
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.18)
          to label %bb.b unwind label %bb.i       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.e, align 8, !tbaa !47    ; 2 uses
  store i8 5, ptr %i.e, align 8, !tbaa !47
  store i8 %i.f, ptr %2, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.h = load i64, ptr %i.b, align 8, !tbaa !36
  store i64 %i.h, ptr %i.g, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.f)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.c, !inline_history !50

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27, !inline_history !50
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.ae, %bb.k ], [ %i.ad, %bb.j ], [ %i.ac, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.42)
          to label %bb.e unwind label %bb.j       ; 3 uses

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.m = load i8, ptr %i.l, align 8, !tbaa !47    ; 2 uses
  %i.n = load i8, ptr %3, align 8, !tbaa !47
  store i8 %i.n, ptr %i.l, align 8, !tbaa !47
  store i8 %i.m, ptr %3, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i9 = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36
  store i64 %i.q, ptr %i.o, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i9, ptr %i.p, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i8 noundef zeroext %i.m)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit10 unwind label %bb.f, !inline_history !50

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27, !inline_history !50
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit10: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.43)
          to label %bb.g unwind label %bb.k       ; 3 uses

bb.g:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit10
  %i.v = load i8, ptr %i.u, align 8, !tbaa !47    ; 2 uses
  %i.w = load i8, ptr %4, align 8, !tbaa !47
  store i8 %i.w, ptr %i.u, align 8, !tbaa !47
  store i8 %i.v, ptr %4, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i11 = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36
  store i64 %i.z, ptr %i.x, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i11, ptr %i.y, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i8 noundef zeroext %i.v)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit12 unwind label %bb.h, !inline_history !50

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #27, !inline_history !50
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit12: ; preds = %bb.g
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2INS1_ISt3mapS3_S9_blmdSaSA_SC_vEETnNSt9enable_ifIXaasr6detail13is_basic_jsonIT_EE5valuentsr3std7is_sameISD_SI_EE5valueEiE4typeELi0EEERKSI_:bb.a
bb.o:                                             ; preds = %bb.n
  %i.v = load i64, ptr %i.a, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.w = load i8, ptr %0, align 8, !tbaa !197
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef zeroext %i.w)
          to label %_ZN8nlohmann16json_abi_v3_12_014adl_serializerImvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaS1_S6_IhSaIhEEvEEmEEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #27
  unreachable

_ZN8nlohmann16json_abi_v3_12_014adl_serializerImvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaS1_S6_IhSaIhEEvEEmEEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit: ; preds = %bb.o
  store i8 6, ptr %0, align 8, !tbaa !197
  store i64 %i.v, ptr %i.e, align 8, !tbaa !36
  br label %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERKS7_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSJ_.exit

bb.q:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.a
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRKS9_KSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS9_TnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISI_E4typeEEE5valueEiE4typeELi0EEESI_v.exit unwind label %bb.s

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS9_TnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISI_E4typeEEE5valueEiE4typeELi0EEESI_v.exit: ; preds = %bb.r
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERKS7_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSJ_.exit unwind label %bb.s

bb.s:                                             ; preds = %.noexc14, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS3_ISD_SaISD_EETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISK_E4typeEEE5valueEiE4typeELi0EEESK_v.exit, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS2_IS9_SD_St4lessIS9_ESaISt4pairIKS9_SD_EEETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISP_E4typeEEE5valueEiE4typeELi0EEESP_v.exit, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKNS0_27byte_container_with_subtypeISC_EETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISK_E4typeEEE5valueEiE4typeELi0EEESK_v.exit, %bb.z, %bb.y, %bb.t, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS9_TnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISI_E4typeEEE5valueEiE4typeELi0EEESI_v.exit, %bb.r
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.a
  %i.ac = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRKS2_IS9_SD_St4lessIS9_ESaISt4pairIKS9_SD_EEEKSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS2_IS9_SD_St4lessIS9_ESaISt4pairIKS9_SD_EEETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISP_E4typeEEE5valueEiE4typeELi0EEESP_v.exit unwind label %bb.s ; 2 uses

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS2_IS9_SD_St4lessIS9_ESaISt4pairIKS9_SD_EEETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISP_E4typeEEE5valueEiE4typeELi0EEESP_v.exit: ; preds = %bb.t
  %i.ad = load i8, ptr %0, align 8, !tbaa !197
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef zeroext %i.ad)
          to label %.noexc unwind label %bb.s, !inline_history !586

.noexc:                                           ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS2_IS9_SD_St4lessIS9_ESaISt4pairIKS9_SD_EEETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISP_E4typeEEE5valueEiE4typeELi0EEESP_v.exit
  store i8 1, ptr %0, align 8, !tbaa !197
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !79 ; 3 uses
  %i.ag = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i unwind label %bb.x, !inline_history !587 ; 7 uses

_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i: ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ag, i8 0, i64 24, i1 false)
  %.not4.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not4.i.i, label %.noexc5.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ 0, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i ] ; 2 uses
  %.sroa.02.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.af, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i ]
  %i.ai = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i) #31, !inline_history !588 ; 2 uses
  %i.aj = add nuw nsw i64 %.06.i.i, 1             ; 3 uses
  %.not.i12.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i12.i, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEENSt15iterator_traitsIT_E15difference_typeESL_SL_St18input_iterator_tag.exit.i, label %.lr.ph.i.i, !llvm.loop !589

_ZSt10__distanceISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEENSt15iterator_traitsIT_E15difference_typeESL_SL_St18input_iterator_tag.exit.i: ; preds = %.lr.ph.i.i
  %i.ak = icmp samesign ugt i64 %.06.i.i, 192153584101141161
  br i1 %i.ak, label %bb.u, label %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i

bb.u:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEENSt15iterator_traitsIT_E15difference_typeESL_SL_St18input_iterator_tag.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #29
          to label %.noexc11.i unwind label %bb.v, !inline_history !588

.noexc11.i:                                       ; preds = %bb.u
  unreachable

_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEENSt15iterator_traitsIT_E15difference_typeESL_SL_St18input_iterator_tag.exit.i
  %i.al = mul nuw nsw i64 %i.aj, 48
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30
          to label %.noexc5.i unwind label %bb.v, !inline_history !588

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i
  %.0.lcssa.i1619.i = phi i64 [ %i.aj, %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i ], [ 0, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i ]
  %i.an = phi ptr [ %i.am, %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i ], [ null, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i ] ; 3 uses
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !208
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %.0.lcssa.i1619.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !209
  %i.aq = invoke noundef ptr @_ZSt16__do_uninit_copyISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEPS1_IS8_NSB_INSA_11ordered_mapESD_S7_blmdSaSE_SG_vEEEET0_T_SP_SO_(ptr %i.af, ptr nonnull %i.ah, ptr noundef %i.an)
          to label %_ZN8nlohmann16json_abi_v3_12_014adl_serializerISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10basic_jsonIS2_St6vectorS8_blmdSaS1_SA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SD_EEEvE7to_jsonINS9_INS0_11ordered_mapESA_S8_blmdSaS1_SC_vEERKSK_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSS_.exit unwind label %bb.v, !inline_history !590

bb.v:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i, %bb.u
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JSt23_Rb_tree_const_iteratorISH_ISI_NS9_ISt3mapSA_S8_blmdSaSB_SD_vEEEESR_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit6.i.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #28, !inline_history !588
  br label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JSt23_Rb_tree_const_iteratorISH_ISI_NS9_ISt3mapSA_S8_blmdSaSB_SD_vEEEESR_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit6.i.body

bb.x:                                             ; preds = %.noexc
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JSt23_Rb_tree_const_iteratorISH_ISI_NS9_ISt3mapSA_S8_blmdSaSB_SD_vEEEESR_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit6.i.body: ; preds = %bb.v, %bb.w
  tail call void @_ZdlPv(ptr noundef nonnull %i.ag) #28, !inline_history !587
  br label %.body

_ZN8nlohmann16json_abi_v3_12_014adl_serializerISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10basic_jsonIS2_St6vectorS8_blmdSaS1_SA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SD_EEEvE7to_jsonINS9_INS0_11ordered_mapESA_S8_blmdSaS1_SC_vEERKSK_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSS_.exit: ; preds = %.noexc5.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !210
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !36
  br label %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERKS7_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSJ_.exit

bb.y:                                             ; preds = %bb.a
  %i.av = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRKS3_ISD_SaISD_EEKSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS3_ISD_SaISD_EETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISK_E4typeEEE5valueEiE4typeELi0EEESK_v.exit unwind label %bb.s ; 2 uses

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS3_ISD_SaISD_EETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISK_E4typeEEE5valueEiE4typeELi0EEESK_v.exit: ; preds = %bb.y
  %i.aw = load i8, ptr %0, align 8, !tbaa !197
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef zeroext %i.aw)
          to label %.noexc14 unwind label %bb.s, !inline_history !591

.noexc14:                                         ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS3_ISD_SaISD_EETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISK_E4typeEEE5valueEiE4typeELi0EEESK_v.exit
  store i8 2, ptr %0, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !119
  store ptr %i.ax, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !119
  store ptr %i.az, ptr %3, align 8
  %i.ba = invoke noundef nonnull ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS3_ISD_SaISD_EEJN9__gnu_cxx17__normal_iteratorIPKNS1_ISt3mapS3_S9_blmdSaSA_SC_vEES3_ISK_SaISK_EEEESP_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN8nlohmann16json_abi_v3_12_014adl_serializerISt6vectorINS0_10basic_jsonISt3mapS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaS1_S2_IhSaIhEEvEESaISD_EEvE7to_jsonINS3_INS0_11ordered_mapES2_SA_blmdSaS1_SC_vEERKSF_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSN_.exit unwind label %bb.s, !inline_history !591

_ZN8nlohmann16json_abi_v3_12_014adl_serializerISt6vectorINS0_10basic_jsonISt3mapS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaS1_S2_IhSaIhEEvEESaISD_EEvE7to_jsonINS3_INS0_11ordered_mapES2_SA_blmdSaS1_SC_vEERKSF_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSN_.exit: ; preds = %.noexc14
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERKS7_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSJ_.exit

bb.z:                                             ; preds = %bb.a
  %i.bb = invoke noundef nonnull align 8 dereferenceable(33) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRKNS0_27byte_container_with_subtypeISC_EEKSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKNS0_27byte_container_with_subtypeISC_EETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISK_E4typeEEE5valueEiE4typeELi0EEESK_v.exit unwind label %bb.s

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKNS0_27byte_container_with_subtypeISC_EETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISK_E4typeEEE5valueEiE4typeELi0EEESK_v.exit: ; preds = %bb.z
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE8EE9constructINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8binary_tE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(33) %i.bb)
          to label %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERKS7_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSJ_.exit unwind label %bb.s

bb.aa:                                            ; preds = %bb.a
  store i8 9, ptr %0, align 8, !tbaa !197
  br label %_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERKS7_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSJ_.exit

_ZN8nlohmann16json_abi_v3_12_014adl_serializerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorS7_blmdSaS1_SC_IhSaIhEEvEERKS7_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSJ_.exit: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKNS0_27byte_container_with_subtypeISC_EETnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISK_E4typeEEE5valueEiE4typeELi0EEESK_v.exit, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRKS9_TnNSt9enable_ifIXaasr3std12is_referenceIT_EE5valuesr3std8is_constINSt16remove_referenceISI_E4typeEEE5valueEiE4typeELi0EEESI_v.exit, %_ZN8nlohmann16json_abi_v3_12_014adl_serializerISt6vectorINS0_10basic_jsonISt3mapS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaS1_S2_IhSaIhEEvEESaISD_EEvE7to_jsonINS3_INS0_11ordered_mapES2_SA_blmdSaS1_SC_vEERKSF_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSN_.exit, %_ZN8nlohmann16json_abi_v3_12_014adl_serializerISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10basic_jsonIS2_St6vectorS8_blmdSaS1_SA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SD_EEEvE7to_jsonINS9_INS0_11ordered_mapESA_S8_blmdSaS1_SC_vEERKSK_EEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSS_.exit, %bb.a, %bb.aa, %_ZN8nlohmann16json_abi_v3_12_014adl_serializerImvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaS1_S6_IhSaIhEEvEEmEEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit, %_ZN8nlohmann16json_abi_v3_12_014adl_serializerIlvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaS1_S6_IhSaIhEEvEElEEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit, %_ZN8nlohmann16json_abi_v3_12_014adl_serializerIdvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaS1_S6_IhSaIhEEvEEdEEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit, %_ZN8nlohmann16json_abi_v3_12_014adl_serializerIbvE7to_jsonINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaS1_S6_IhSaIhEEvEEbEEDTcmclL_ZNS0_12_GLOBAL__N_17to_jsonEEfp_clsr3stdE7forwardIT0_Efp0_EEcvv_EERT_OSH_.exit
  ret void

.body:                                            ; preds = %bb.x, %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JSt23_Rb_tree_const_iteratorISH_ISI_NS9_ISt3mapSA_S8_blmdSaSB_SD_vEEEESR_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit6.i.body, %bb.s, %bb.q, %bb.m, %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.p, %bb.i ], [ %i.u, %bb.m ], [ %i.z, %bb.q ], [ %i.ab, %bb.s ], [ %i.ar, %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JSt23_Rb_tree_const_iteratorISH_ISI_NS9_ISt3mapSA_S8_blmdSaSB_SD_vEEEESR_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit6.i.body ], [ %i.at, %bb.x ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.170", align 8   ; 22 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 8 uses
  %i.a = icmp eq i8 %1, 1
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %or.cond31 = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond31, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 2
  %i.e = and i8 %1, -2
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp eq i8 %1, 8
  %i.h = or i1 %i.g, %i.f
  %or.cond69 = select i1 %i.h, i1 %i.c, i1 false
  br i1 %or.cond69, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %1, -1
  %or.cond = icmp ult i8 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.aj

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182  ; 6 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !182  ; 7 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  br i1 %i.d, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ugt i64 %i.o, 9223372036854775792
  br i1 %i.p, label %.invoke, label %bb.f

.invoke:                                          ; preds = %bb.i, %bb.e, %bb.k
  %i.q = phi ptr [ @.str.23, %bb.k ], [ @.str.23, %bb.e ], [ @.str.24, %bb.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.q) #29
          to label %.cont unwind label %.loopexit.split-lp260, !inline_history !592

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not332 = icmp eq ptr %i.k, %i.l
  br i1 %.not332, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i unwind label %.loopexit.split-lp260, !inline_history !592 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.s, ptr %2, align 8, !tbaa !213
  store ptr %i.s, ptr %i.t, align 8, !tbaa !214
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 2 uses
  store ptr %i.u, ptr %i.r, align 8, !tbaa !215
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i, %bb.f
  %i.v = phi ptr [ %i.u, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i ], [ null, %bb.f ]
  %i.w = phi ptr [ %i.s, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i ], [ null, %bb.f ] ; 3 uses
  %.not333 = icmp eq ptr %i.k, %i.l
  br i1 %.not333, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit
  %i.x = lshr exact i64 %i.o, 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i, %.lr.ph.i142
  %i.z = phi ptr [ %i.w, %.lr.ph.i142 ], [ %i.av, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 6 uses
  %i.aa = phi ptr [ %i.v, %.lr.ph.i142 ], [ %i.aw, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 5 uses
  %i.ab = phi ptr [ %i.w, %.lr.ph.i142 ], [ %i.ax, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 3 uses
  %.0.i12.i143 = phi i64 [ %i.x, %.lr.ph.i142 ], [ %i.az, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 2 uses
  %.05.i11.i = phi ptr [ %i.l, %.lr.ph.i142 ], [ %i.ay, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !197
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !214
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775792
  br i1 %i.ah, label %.invoke, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ai = ashr exact i64 %i.ag, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 576460752303423487)
  %i.am = select i1 %i.ak, i64 576460752303423487, i64 %i.al ; 3 uses
  %.not.i.i176 = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i176)
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #30
          to label %.noexc180 unwind label %.loopexit259, !inline_history !593 ; 6 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !197
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !36
  %.not.i1728.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i1728.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i177

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i177: ; preds = %.noexc180, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i177
  %.0.i30.i = phi ptr [ %i.at, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i177 ], [ %i.ao, %.noexc180 ] ; 2 uses
  %.09.i29.i = phi ptr [ %i.as, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i177 ], [ %i.z, %.noexc180 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %.09.i29.i, align 8, !tbaa !197
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i29.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 16 ; 2 uses
  %.not.i17.i = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i17.i, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i177, !llvm.loop !594

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i177, %.noexc180
  %.0.i.lcssa.i = phi ptr [ %i.ao, %.noexc180 ], [ %i.at, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i177 ]
  %.0.i1931.i = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 16 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.z, null
  br i1 %.not.i16.i, label %.noexc144, label %bb.j

bb.j:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #28, !inline_history !593
  br label %.noexc144

.noexc144:                                        ; preds = %bb.j, %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i
  store ptr %i.ao, ptr %2, align 8, !tbaa !213
  store ptr %.0.i1931.i, ptr %i.y, align 8, !tbaa !214
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  store ptr %i.au, ptr %i.r, align 8, !tbaa !215
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i: ; preds = %.noexc144, %bb.h
  %i.av = phi ptr [ %i.ao, %.noexc144 ], [ %i.z, %bb.h ] ; 2 uses
  %i.aw = phi ptr [ %i.au, %.noexc144 ], [ %i.aa, %bb.h ]
  %i.ax = phi ptr [ %.0.i1931.i, %.noexc144 ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  %i.az = add nsw i64 %.0.i12.i143, -1
  %i.ba = icmp sgt i64 %.0.i12.i143, 1
  br i1 %i.ba, label %bb.g, label %.loopexit, !llvm.loop !595

.loopexit259:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit261 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp260:                            ; preds = %.invoke, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i146
  %lpad.loopexit.split-lp262 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.k:                                             ; preds = %bb.d
  %i.bb = sdiv exact i64 %i.o, 48                 ; 3 uses
  %4 = icmp ugt i64 %i.bb, 576460752303423487
  br i1 %4, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not331 = icmp eq ptr %i.k, %i.l
  br i1 %.not331, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit160, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i146

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i146: ; preds = %bb.l
  %i.bd = shl nuw nsw i64 %i.bb, 4
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #30
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i157 unwind label %.loopexit.split-lp260, !inline_history !592 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i157: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i146
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.be, ptr %2, align 8, !tbaa !213
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !214
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bb ; 2 uses
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !215
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit160

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit160: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i157, %bb.l
  %i.bh = phi ptr [ %i.bg, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i157 ], [ null, %bb.l ]
  %i.bi = phi ptr [ %i.be, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i157 ], [ null, %bb.l ] ; 3 uses
  %.not86 = icmp eq ptr %i.l, %i.k
  br i1 %.not86, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit160
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit
  %i.bk = phi ptr [ %i.bi, %.lr.ph ], [ %i.ch, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 6 uses
  %i.bl = phi ptr [ %i.bh, %.lr.ph ], [ %i.ci, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  %i.bm = phi ptr [ %i.bi, %.lr.ph ], [ %i.cj, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 3 uses
  %.sroa.063.087 = phi ptr [ %i.l, %.lr.ph ], [ %i.ck, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.063.087, i64 32 ; 4 uses
  %.not.i = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %i.bn, align 8, !tbaa !197
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.063.087, i64 40
  store ptr null, ptr %i.bo, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !214
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit

bb.o:                                             ; preds = %bb.m
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = ptrtoint ptr %i.bk to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775792
  br i1 %i.bt, label %bb.p, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i181

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
          to label %.noexc202 unwind label %.loopexit.split-lp265, !inline_history !596

.noexc202:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i181: ; preds = %bb.o
  %i.bu = ashr exact i64 %i.bs, 4                 ; 3 uses
  %.sroa.speculated.i.i182 = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i182, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 576460752303423487)
  %i.by = select i1 %i.bw, i64 576460752303423487, i64 %i.bx ; 3 uses
  %.not.i.i183 = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i183)
  %i.bz = shl nuw nsw i64 %i.by, 4
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #30
          to label %.noexc203 unwind label %.loopexit264, !inline_history !596 ; 6 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i181
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %i.bn, align 8, !tbaa !197
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.063.087, i64 40
  store ptr null, ptr %i.cc, align 8, !tbaa !36
  %.not.i1728.i184 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i1728.i184, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i198, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185: ; preds = %.noexc203, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185
  %.0.i30.i186 = phi ptr [ %i.cf, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185 ], [ %i.ca, %.noexc203 ] ; 2 uses
  %.09.i29.i187 = phi ptr [ %i.ce, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185 ], [ %i.bk, %.noexc203 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30.i186, ptr noundef nonnull align 8 dereferenceable(16) %.09.i29.i187, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %.09.i29.i187, align 8, !tbaa !197
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i29.i187, i64 8
  store ptr null, ptr %i.cd, align 8, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %.09.i29.i187, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i30.i186, i64 16 ; 2 uses
  %.not.i17.i188 = icmp eq ptr %i.ce, %i.bl
  br i1 %.not.i17.i188, label %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i198, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185, !llvm.loop !594

_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i198: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185, %.noexc203
  %.0.i.lcssa.i190 = phi ptr [ %i.ca, %.noexc203 ], [ %i.cf, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i185 ]
  %.0.i1931.i191 = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i190, i64 16 ; 2 uses
  %.not.i16.i200 = icmp eq ptr %i.bk, null
  br i1 %.not.i16.i200, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204, label %bb.q

bb.q:                                             ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i198
  tail call void @_ZdlPv(ptr noundef nonnull %i.bk) #28, !inline_history !596
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204: ; preds = %_ZSt14__relocate_a_1IPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit22.i198, %bb.q
  store ptr %i.ca, ptr %2, align 8, !tbaa !213
  store ptr %.0.i1931.i191, ptr %i.bj, align 8, !tbaa !214
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.by ; 2 uses
  store ptr %i.cg, ptr %i.bc, align 8, !tbaa !215
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204, %bb.n
  %i.ch = phi ptr [ %i.ca, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204 ], [ %i.bk, %bb.n ] ; 2 uses
  %i.ci = phi ptr [ %i.cg, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204 ], [ %i.bl, %bb.n ]
  %i.cj = phi ptr [ %.0.i1931.i191, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit204 ], [ %i.bp, %bb.n ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.063.087, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.k
  br i1 %.not, label %.loopexit, label %bb.m

.loopexit264:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i181
  %lpad.loopexit266 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp265:                            ; preds = %bb.p
  %lpad.loopexit.split-lp267 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit:                                        ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i
  %i.cl = phi ptr [ %i.ax, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ], [ %i.cj, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %i.cm = phi ptr [ %i.av, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ], [ %i.ch, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.co = icmp eq ptr %i.cm, %i.cl
  br i1 %i.co, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph98

.lr.ph98:                                         ; preds = %.loopexit
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph98, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit
  %i.cr = phi ptr [ %i.cl, %.lr.ph98 ], [ %i.gi, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %i.cs, align 8, !tbaa !197
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -8
  store ptr null, ptr %i.ct, align 8, !tbaa !36
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !214 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -16 ; 7 uses
  store ptr %i.cv, ptr %i.cn, align 8, !tbaa !214
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.cx = load i8, ptr %i.cv, align 8, !tbaa !194
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i8 noundef zeroext %i.cx)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.s, !inline_history !597

bb.s:                                             ; preds = %bb.r
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #27, !inline_history !597
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.r
  %i.da = load i8, ptr %3, align 8, !tbaa !197
  switch i8 %i.da, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit [
    i8 2, label %bb.t
    i8 1, label %bb.z
  ]

bb.t:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.db = load ptr, ptr %i.cp, align 8, !tbaa !36 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !216 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !216 ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 4                 ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 0
  br i1 %i.dj, label %.lr.ph95, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS3_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit

.lr.ph95:                                         ; preds = %bb.t, %.noexc47
  %i.dk = phi ptr [ %i.eh, %.noexc47 ], [ %i.cv, %bb.t ] ; 5 uses
  %.0.i.i4693 = phi i64 [ %i.ej, %.noexc47 ], [ %i.di, %bb.t ] ; 2 uses
  %.05.i.i92 = phi ptr [ %i.ei, %.noexc47 ], [ %i.dc, %bb.t ] ; 7 uses
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !215
  %.not.i51 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i51, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i92, i64 16, i1 false), !tbaa.struct !48
  store i8 0, ptr %.05.i.i92, align 8, !tbaa !197
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i92, i64 8
  store ptr null, ptr %i.dm, align 8, !tbaa !36
  %i.dn = load ptr, ptr %i.cn, align 8, !tbaa !214
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE17_M_realloc_insertIJRS7_SF_EEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_:bb.a
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !210
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.au, ptr %i.at, align 8, !tbaa !209
  ret void

bb.h:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.av) #26 ; 0 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.r) #26
  br label %bb.k

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESI_SaISH_EET0_T_SL_SK_RT1_.exit, %.noexc.i.i
  %.0.ph = phi ptr [ %i.q, %.noexc.i.i ], [ %i.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESI_SaISH_EET0_T_SL_SK_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %bb.h, %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.q) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.az

bb.m:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #27
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEPSH_ET0_T_SM_SL_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not19 = icmp eq ptr %0, %1
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit
  %.021 = phi ptr [ %i.u, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.01220 = phi ptr [ %i.t, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 4 uses
  store ptr %i.b, ptr %.021, align 8, !tbaa !32
  %i.c = load ptr, ptr %.01220, align 8, !tbaa !44 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01220, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.e, ptr %i.a, align 8, !tbaa !115
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %.021, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e, !inline_history !622 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.021, align 8, !tbaa !44
  %i.h = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.h, ptr %i.b, align 8, !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !36
  store i8 %i.j, ptr %i.i, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.021, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = load ptr, ptr %.021, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.01220, i64 32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit unwind label %bb.d, !inline_history !13

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.021, align 8, !tbaa !44  ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.r) #28, !inline_history !622
  br label %.body

_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01220, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.021, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.t, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !623

bb.e:                                             ; preds = %.noexc.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.q, %bb.d ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_(ptr noundef %2, ptr noundef nonnull %.021)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.c = load i8, ptr %1, align 8, !tbaa !197     ; 2 uses
  store i8 %i.c, ptr %0, align 8, !tbaa !197
  switch i8 %i.c, label %bb.y [
    i8 1, label %bb.b
    i8 2, label %bb.g
    i8 3, label %bb.i
    i8 4, label %bb.n
    i8 5, label %bb.o
    i8 6, label %bb.p
    i8 7, label %bb.q
    i8 8, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i unwind label %bb.f, !inline_history !624 ; 7 uses

_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !210  ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !208  ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %.noexc46, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i
  %2 = sdiv exact i64 %i.l, 48
  %i.m = icmp ugt i64 %2, 192153584101141162
  br i1 %i.m, label %.noexc.i.i44, label %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i.i.i, !prof !112

.noexc.i.i44:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc45 unwind label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i, !inline_history !625

.noexc45:                                         ; preds = %.noexc.i.i44
  unreachable

_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #30
          to label %.noexc46 unwind label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i, !inline_history !625

.noexc46:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i
  %i.o = phi ptr [ null, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i ], [ %i.n, %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.o, ptr %i.f, align 8, !tbaa !208
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !210
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !209
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEEPSJ_ET0_T_SR_SQ_(ptr %i.i, ptr %i.h, ptr noundef %i.o)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_valueC2ERKNS2_IS9_SD_St4lessIS9_ESaISt4pairIKS9_SD_EEEE.exit unwind label %bb.d, !inline_history !626

bb.d:                                             ; preds = %.noexc46
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !208  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #28, !inline_history !625
  br label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i.body

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body18

_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i: ; preds = %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i44
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i.body

_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i.body: ; preds = %bb.d, %bb.e, %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIS8_ESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i ], [ %i.t, %bb.e ], [ %i.t, %bb.d ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #28, !inline_history !624
  br label %.body18

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_valueC2ERKNS2_IS9_SD_St4lessIS9_ESaISt4pairIKS9_SD_EEEE.exit: ; preds = %.noexc46
  store ptr %i.s, ptr %i.p, align 8, !tbaa !210
  %i.x = ptrtoint ptr %i.f to i64
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %_ZNSt15__new_allocatorISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEE8allocateEmPKv.exit.i unwind label %bb.h, !inline_history !627 ; 3 uses

_ZNSt15__new_allocatorISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEE8allocateEmPKv.exit.i: ; preds = %bb.g
  invoke void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_valueC2ERKS3_ISD_SaISD_EE.exit unwind label %_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JRKSG_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit5.i, !inline_history !627

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body18

_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JRKSG_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit5.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEE8allocateEmPKv.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #28, !inline_history !627
  br label %.body18

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_valueC2ERKS3_ISD_SaISD_EE.exit: ; preds = %_ZNSt15__new_allocatorISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEE8allocateEmPKv.exit.i
  %i.ad = ptrtoint ptr %i.aa to i64
  br label %.sink.split

bb.i:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ag = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc unwind label %bb.m     ; 8 uses

.noexc:                                           ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !32
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !115
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRKS5_EEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i.i ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !44
  %i.an = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !36
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %.noexc
  %i.ao = phi ptr [ %i.am, %.noexc.i.i ], [ %i.ah, %.noexc ] ; 2 uses
  switch i64 %i.ak, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !36
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !36
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %bb.l

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRKS5_EEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i.i: ; preds = %.noexc.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #28
  br label %.body18

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !35
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.av = ptrtoint ptr %i.ag to i64
  br label %.sink.split

bb.m:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.n:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !36, !range !66, !noundef !67
  %.sroa.028.0.insert.ext = zext nneg i8 %i.ay to i64
  br label %.sink.split

bb.o:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !36
  br label %.sink.split

bb.p:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !36
  br label %.sink.split

bb.q:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !36
  br label %.sink.split

bb.r:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36 ; 3 uses
  %i.bh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc15 unwind label %bb.x   ; 10 uses

.noexc15:                                         ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !135 ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !122 ; 4 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bh, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.noexc15
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !112

.noexc.i.i.i.i.i:                                 ; preds = %bb.s
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc.i.i14 unwind label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_027byte_container_with_subtypeISt6vectorIhSaIhEEEEZNS1_10basic_jsonINS1_11ordered_mapES3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES5_vE6createIS6_JRKS6_EEEPT_DpOT0_EUlPS6_E_ED2Ev.exit6.i.i

.noexc.i.i14:                                     ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #30
          to label %.noexc4.i.i unwind label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_027byte_container_with_subtypeISt6vectorIhSaIhEEEEZNS1_10basic_jsonINS1_11ordered_mapES3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES5_vE6createIS6_JRKS6_EEEPT_DpOT0_EUlPS6_E_ED2Ev.exit6.i.i ; 5 uses

.noexc4.i.i:                                      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !122
end_hunk_2
begin_hunk_3_@_ZN7doctest6detail19stringifyBinaryExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA24_cEENS_6StringERKT_PKcRKT0_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 23
  %i.h = load i8, ptr %i.g, align 1, !tbaa !36, !noalias !1499
  %.not.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not.i.i.i.i.i.i, i32 23, i32 24
  invoke void @_ZN7doctest6StringC1EPKcj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(24) %3, i32 noundef %i.i)
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %.noexc
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctestlsERSoRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA24_cEENS_6StringERKT_.exit.i unwind label %bb.d, !noalias !1499 ; 0 uses

bb.d:                                             ; preds = %.noexc10
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26, !noalias !1499
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1499
  br label %.body

_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA24_cEENS_6StringERKT_.exit.i: ; preds = %.noexc10
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26, !noalias !1499
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1499
  invoke void @_ZN7doctest6detail7tlssPopEv(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %8)
          to label %_ZN7doctest8toStringIA24_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit unwind label %bb.h

_ZN7doctest8toStringIA24_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit: ; preds = %_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA24_cEENS_6StringERKT_.exit.i
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN7doctest8toStringIA24_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.f:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA24_cEENS_6StringERKT_.exit.i, %.noexc, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN7doctest8toStringIA24_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  br label %.body

.body:                                            ; preds = %bb.h, %bb.d, %bb.i
  %.pn = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.n, %bb.h ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.m, %bb.g ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN7persons36person_without_default_constructor_1EPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.s, %bb.d ], [ %2, %bb.a ]  ; 10 uses
  %.01215 = phi ptr [ %i.r, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !32
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !44 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.e, ptr %i.a, align 8, !tbaa !115
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !44
  %i.h = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.h, ptr %i.b, align 8, !tbaa !36
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !36
  store i8 %i.j, ptr %i.i, align 1, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = load ptr, ptr %.016, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %.016, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.01215, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !258
  store i32 %i.q, ptr %i.o, align 8, !tbaa !258
  %i.r = getelementptr inbounds nuw i8, ptr %.01215, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1500

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #26 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7persons36person_without_default_constructor_1EEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyIN7persons36person_without_default_constructor_1EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7persons36person_without_default_constructor_1EEvPT_.exit.i.i ], [ %2, %bb.e ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i, align 8, !tbaa !44 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN7persons36person_without_default_constructor_1EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZdlPv(ptr noundef %i.w) #28
  br label %_ZSt8_DestroyIN7persons36person_without_default_constructor_1EEvPT_.exit.i.i

_ZSt8_DestroyIN7persons36person_without_default_constructor_1EEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7persons36person_without_default_constructor_1EEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIPN7persons36person_without_default_constructor_1EEvT_S3_.exit: ; preds = %_ZSt8_DestroyIN7persons36person_without_default_constructor_1EEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %bb.d ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7persons36person_without_default_constructor_1EEvT_S3_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.aa

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPN7persons36person_without_default_constructor_1EEvT_S3_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_1ES_ISK_SaISK_EEEEEEvT_SQ_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 40                  ; 4 uses
  %3 = icmp ugt i64 %i.d, 576460752303423487
  br i1 %3, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #29
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !117
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_1ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !117
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_1E(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i unwind label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.014.i.i.i.i) #26
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.c unwind label %bb.d

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_1ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1501

bb.c:                                             ; preds = %.body.i.i.i.i
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %.body.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_1ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.s, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19DOCTEST_ANON_TMP_12ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons36person_without_default_constructor_2EEEvv() #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.doctest::detail::Subcase", align 8 ; 7 uses
  %1 = alloca %"class.doctest::String", align 8   ; 7 uses
  %2 = alloca %"class.persons::person_without_default_constructor_2", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %5 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %6 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 10 uses
  %9 = alloca %"class.std::vector.406", align 8   ; 7 uses
  %10 = alloca [2 x %"class.persons::person_without_default_constructor_2"], align 8 ; 21 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %14 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %15 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.10)
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 661)
          to label %bb.b unwind label %bb.y

bb.b:                                             ; preds = %bb.a
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.a = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.c unwind label %bb.z

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1802072645, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, ptr noundef nonnull align 8 dereferenceable(5) %i.b, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.f, align 8, !tbaa !35
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store i64 0, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.b, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.g, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 10)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_2E(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36person_without_default_constructor_2ESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %.body

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36person_without_default_constructor_2ESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.d
  invoke void @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dumpEicbNS0_6detail15error_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef -1, i8 noundef signext 32, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36person_without_default_constructor_2ESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.i = load i32, ptr %6, align 4, !tbaa !53, !noalias !1506
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !32, !alias.scope !1506
  %i.k = load ptr, ptr %7, align 8, !tbaa !44, !noalias !1506 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35, !noalias !1506 ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.q, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.k, ptr %5, align 8, !tbaa !44, !alias.scope !1506
  %i.r = load i64, ptr %i.l, align 8, !tbaa !36, !noalias !1506
  store i64 %i.r, ptr %i.j, align 8, !tbaa !36, !alias.scope !1506
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !35, !noalias !1506
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.s = phi i64 [ %i.o, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.s, ptr %i.u, align 8, !tbaa !35, !alias.scope !1506
  store ptr %i.l, ptr %7, align 8, !tbaa !44, !noalias !1506
  store i64 0, ptr %i.t, align 8, !tbaa !35, !noalias !1506
  store i8 0, ptr %i.l, align 8, !tbaa !36, !noalias !1506
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.i, ptr %i.v, align 8, !tbaa !55, !alias.scope !1506
  invoke void @_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEeqIRA24_KcEEDTcmcvveqclL_ZNS0_7declvalIS7_EEOT_vEEclsr7doctest6detailE7declvalISE_EEtlNS0_6ResultEEESF_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 1 dereferenceable(24) @.str.142)
          to label %bb.i unwind label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.w = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 667, ptr noundef nonnull @.str.141, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.ad      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_3
begin_hunk_4_@_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_2E:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.u, %bb.h ], [ %i.t, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.42)
          to label %bb.c unwind label %bb.g       ; 3 uses

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47    ; 2 uses
  %i.d = load i8, ptr %2, align 8, !tbaa !47
  store i8 %i.d, ptr %i.b, align 8, !tbaa !47
  store i8 %i.c, ptr %2, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  store i64 %i.g, ptr %i.e, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %i.c)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.d, !inline_history !50

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #27, !inline_history !50
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %3, align 8
  %i.l = load i32, ptr %i.j, align 8, !tbaa !97
  %i.m = sext i32 %i.l to i64
  store i8 5, ptr %3, align 8, !tbaa !40
  store i64 %i.m, ptr %i.k, align 8, !tbaa !36
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.18)
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.o = load i8, ptr %i.n, align 8, !tbaa !47    ; 2 uses
  store i8 5, ptr %i.n, align 8, !tbaa !47
  store i8 %i.o, ptr %3, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i7 = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.q = load i64, ptr %i.k, align 8, !tbaa !36
  store i64 %i.q, ptr %i.p, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i7, ptr %i.k, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef zeroext %i.o)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8 unwind label %bb.f, !inline_history !50

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27, !inline_history !50
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8: ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume

bb.h:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN7persons36person_without_default_constructor_2EPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.s, %bb.d ], [ %2, %bb.a ]  ; 10 uses
  %.01215 = phi ptr [ %i.r, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !32
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !44 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.e, ptr %i.a, align 8, !tbaa !115
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !44
  %i.h = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.h, ptr %i.b, align 8, !tbaa !36
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !36
  store i8 %i.j, ptr %i.i, align 1, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = load ptr, ptr %.016, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %.016, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.01215, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !265
  store i32 %i.q, ptr %i.o, align 8, !tbaa !265
  %i.r = getelementptr inbounds nuw i8, ptr %.01215, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1508

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #26 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7persons36person_without_default_constructor_2EEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyIN7persons36person_without_default_constructor_2EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN7persons36person_without_default_constructor_2EEvPT_.exit.i.i ], [ %2, %bb.e ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i, align 8, !tbaa !44 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN7persons36person_without_default_constructor_2EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZdlPv(ptr noundef %i.w) #28
  br label %_ZSt8_DestroyIN7persons36person_without_default_constructor_2EEvPT_.exit.i.i

_ZSt8_DestroyIN7persons36person_without_default_constructor_2EEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7persons36person_without_default_constructor_2EEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPN7persons36person_without_default_constructor_2EEvT_S3_.exit: ; preds = %_ZSt8_DestroyIN7persons36person_without_default_constructor_2EEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %bb.d ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7persons36person_without_default_constructor_2EEvT_S3_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.aa

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPN7persons36person_without_default_constructor_2EEvT_S3_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_2ES_ISK_SaISK_EEEEEEvT_SQ_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 40                  ; 4 uses
  %3 = icmp ugt i64 %i.d, 576460752303423487
  br i1 %3, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #29
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !117
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_2ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !117
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_2E(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i unwind label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.014.i.i.i.i) #26
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.c unwind label %bb.d

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_2ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1509

bb.c:                                             ; preds = %.body.i.i.i.i
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %.body.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_2ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.s, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19DOCTEST_ANON_TMP_12ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons36person_without_default_constructor_1EEEvv() #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.doctest::detail::Subcase", align 8 ; 7 uses
  %1 = alloca %"class.doctest::String", align 8   ; 7 uses
  %2 = alloca %"class.persons::person_without_default_constructor_1", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %5 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %6 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 10 uses
  %9 = alloca %"class.std::vector.389", align 8   ; 7 uses
  %10 = alloca [2 x %"class.persons::person_without_default_constructor_1"], align 8 ; 21 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %14 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %15 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.10)
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 661)
          to label %bb.b unwind label %bb.y

bb.b:                                             ; preds = %bb.a
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.a = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.c unwind label %bb.z

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1802072645, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, ptr noundef nonnull align 8 dereferenceable(5) %i.b, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.f, align 8, !tbaa !35
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store i64 0, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.b, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.g, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 10)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_1E(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36person_without_default_constructor_1ESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %.body

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36person_without_default_constructor_1ESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.d
  invoke void @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dumpEicbNS0_6detail15error_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef -1, i8 noundef signext 32, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36person_without_default_constructor_1ESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.i = load i32, ptr %6, align 4, !tbaa !53, !noalias !1514
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !32, !alias.scope !1514
  %i.k = load ptr, ptr %7, align 8, !tbaa !44, !noalias !1514 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35, !noalias !1514 ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.q, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.k, ptr %5, align 8, !tbaa !44, !alias.scope !1514
  %i.r = load i64, ptr %i.l, align 8, !tbaa !36, !noalias !1514
  store i64 %i.r, ptr %i.j, align 8, !tbaa !36, !alias.scope !1514
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !35, !noalias !1514
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.s = phi i64 [ %i.o, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.s, ptr %i.u, align 8, !tbaa !35, !alias.scope !1514
  store ptr %i.l, ptr %7, align 8, !tbaa !44, !noalias !1514
  store i64 0, ptr %i.t, align 8, !tbaa !35, !noalias !1514
  store i8 0, ptr %i.l, align 8, !tbaa !36, !noalias !1514
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.i, ptr %i.v, align 8, !tbaa !55, !alias.scope !1514
  invoke void @_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEeqIRA24_KcEEDTcmcvveqclL_ZNS0_7declvalIS7_EEOT_vEEclsr7doctest6detailE7declvalISE_EEtlNS0_6ResultEEESF_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 1 dereferenceable(24) @.str.146)
          to label %bb.i unwind label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.w = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 667, ptr noundef nonnull @.str.141, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.ad      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_4
begin_hunk_5_@_ZL19DOCTEST_ANON_TMP_12ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons36person_without_default_constructor_1EEEvv:bb.a
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  call void @_ZdlPv(ptr noundef %i.dp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.am

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %bb.r
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.ai:                                            ; preds = %bb.u
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.v
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dv) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn33 = phi { ptr, i32 } [ %i.du, %bb.aj ], [ %i.dt, %bb.ai ] ; 2 uses
  %i.dw = load ptr, ptr %14, align 8, !tbaa !44   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bs
  br i1 %i.dx, label %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.dw) #28
  br label %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109

_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
  %i.dy = load ptr, ptr %16, align 8, !tbaa !44   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bu
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109
  call void @_ZdlPv(ptr noundef %i.dy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.ah
  %.pn33.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ah ], [ %.pn33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn33, %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109 ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #26
  br label %.body72

.body72:                                          ; preds = %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.al

bb.al:                                            ; preds = %.body72, %bb.ag
  %.pn33.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn, %.body72 ], [ %i.dr, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZNSt6vectorIN7persons36person_without_default_constructor_1ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %.pn33.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn, %bb.al ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af
  %.pn33.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn, %bb.am ], [ %.pn.pn.pn.pn.pn, %bb.af ]
  %i.ea = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.e
  br i1 %i.eb, label %_ZN7persons36person_without_default_constructor_1D2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.ea) #28
  br label %_ZN7persons36person_without_default_constructor_1D2Ev.exit115

_ZN7persons36person_without_default_constructor_1D2Ev.exit115: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN7persons36person_without_default_constructor_1D2Ev.exit88, %bb.c
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void

bb.ap:                                            ; preds = %_ZN7persons36person_without_default_constructor_1D2Ev.exit115, %bb.z
  %.pn33.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn.pn, %_ZN7persons36person_without_default_constructor_1D2Ev.exit115 ], [ %i.cv, %bb.z ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.y
  %.pn33.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ap ], [ %i.cu, %bb.y ]
  resume { ptr, i32 } %.pn33.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_1E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 7 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.u, %bb.h ], [ %i.t, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.42)
          to label %bb.c unwind label %bb.g       ; 3 uses

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47    ; 2 uses
  %i.d = load i8, ptr %2, align 8, !tbaa !47
  store i8 %i.d, ptr %i.b, align 8, !tbaa !47
  store i8 %i.c, ptr %2, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  store i64 %i.g, ptr %i.e, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %i.c)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.d, !inline_history !195

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #27, !inline_history !195
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %3, align 8
  %i.l = load i32, ptr %i.j, align 8, !tbaa !97
  %i.m = sext i32 %i.l to i64
  store i8 5, ptr %3, align 8, !tbaa !197
  store i64 %i.m, ptr %i.k, align 8, !tbaa !36
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.18)
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.o = load i8, ptr %i.n, align 8, !tbaa !47    ; 2 uses
  store i8 5, ptr %i.n, align 8, !tbaa !47
  store i8 %i.o, ptr %3, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i7 = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.q = load i64, ptr %i.k, align 8, !tbaa !36
  store i64 %i.q, ptr %i.p, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i7, ptr %i.k, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef zeroext %i.o)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8 unwind label %bb.f, !inline_history !195

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27, !inline_history !195
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8: ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume

bb.h:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_1ES_ISK_SaISK_EEEEEEvT_SQ_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 40                  ; 4 uses
  %3 = icmp ugt i64 %i.d, 576460752303423487
  br i1 %3, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #29
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !213
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !215
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_1ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !213
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !215
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_1E(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i unwind label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.014.i.i.i.i) #26
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.c unwind label %bb.d

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_1ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1516

bb.c:                                             ; preds = %.body.i.i.i.i
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %.body.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_1ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_1EEEvPT_DpOT0_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.s, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19DOCTEST_ANON_TMP_12ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons36person_without_default_constructor_2EEEvv() #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.doctest::detail::Subcase", align 8 ; 7 uses
  %1 = alloca %"class.doctest::String", align 8   ; 7 uses
  %2 = alloca %"class.persons::person_without_default_constructor_2", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %5 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %6 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 10 uses
  %9 = alloca %"class.std::vector.406", align 8   ; 7 uses
  %10 = alloca [2 x %"class.persons::person_without_default_constructor_2"], align 8 ; 21 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %14 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %15 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.10)
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 661)
          to label %bb.b unwind label %bb.y

bb.b:                                             ; preds = %bb.a
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.a = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.c unwind label %bb.z

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1802072645, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, ptr noundef nonnull align 8 dereferenceable(5) %i.b, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.f, align 8, !tbaa !35
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store i64 0, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.b, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.g, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 10)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_2E(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36person_without_default_constructor_2ESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %.body

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36person_without_default_constructor_2ESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.d
  invoke void @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dumpEicbNS0_6detail15error_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef -1, i8 noundef signext 32, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36person_without_default_constructor_2ESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.i = load i32, ptr %6, align 4, !tbaa !53, !noalias !1521
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !32, !alias.scope !1521
  %i.k = load ptr, ptr %7, align 8, !tbaa !44, !noalias !1521 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35, !noalias !1521 ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.q, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.k, ptr %5, align 8, !tbaa !44, !alias.scope !1521
  %i.r = load i64, ptr %i.l, align 8, !tbaa !36, !noalias !1521
  store i64 %i.r, ptr %i.j, align 8, !tbaa !36, !alias.scope !1521
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !35, !noalias !1521
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.s = phi i64 [ %i.o, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.s, ptr %i.u, align 8, !tbaa !35, !alias.scope !1521
  store ptr %i.l, ptr %7, align 8, !tbaa !44, !noalias !1521
  store i64 0, ptr %i.t, align 8, !tbaa !35, !noalias !1521
  store i8 0, ptr %i.l, align 8, !tbaa !36, !noalias !1521
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.i, ptr %i.v, align 8, !tbaa !55, !alias.scope !1521
  invoke void @_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEeqIRA24_KcEEDTcmcvveqclL_ZNS0_7declvalIS7_EEOT_vEEclsr7doctest6detailE7declvalISE_EEtlNS0_6ResultEEESF_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 1 dereferenceable(24) @.str.146)
          to label %bb.i unwind label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.w = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 667, ptr noundef nonnull @.str.141, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.ad      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_5
begin_hunk_6_@_ZL19DOCTEST_ANON_TMP_12ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons36person_without_default_constructor_2EEEvv:bb.a
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  call void @_ZdlPv(ptr noundef %i.dp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.am

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %bb.r
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.ai:                                            ; preds = %bb.u
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.v
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dv) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn33 = phi { ptr, i32 } [ %i.du, %bb.aj ], [ %i.dt, %bb.ai ] ; 2 uses
  %i.dw = load ptr, ptr %14, align 8, !tbaa !44   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bs
  br i1 %i.dx, label %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.dw) #28
  br label %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109

_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
  %i.dy = load ptr, ptr %16, align 8, !tbaa !44   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bu
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109
  call void @_ZdlPv(ptr noundef %i.dy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.ah
  %.pn33.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ah ], [ %.pn33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn33, %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit109 ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #26
  br label %.body72

.body72:                                          ; preds = %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.al

bb.al:                                            ; preds = %.body72, %bb.ag
  %.pn33.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn, %.body72 ], [ %i.dr, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZNSt6vectorIN7persons36person_without_default_constructor_2ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %.pn33.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn, %bb.al ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af
  %.pn33.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn, %bb.am ], [ %.pn.pn.pn.pn.pn, %bb.af ]
  %i.ea = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.e
  br i1 %i.eb, label %_ZN7persons36person_without_default_constructor_2D2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.ea) #28
  br label %_ZN7persons36person_without_default_constructor_2D2Ev.exit115

_ZN7persons36person_without_default_constructor_2D2Ev.exit115: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN7persons36person_without_default_constructor_2D2Ev.exit88, %bb.c
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void

bb.ap:                                            ; preds = %_ZN7persons36person_without_default_constructor_2D2Ev.exit115, %bb.z
  %.pn33.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn.pn, %_ZN7persons36person_without_default_constructor_2D2Ev.exit115 ], [ %i.cv, %bb.z ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.y
  %.pn33.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ap ], [ %i.cu, %bb.y ]
  resume { ptr, i32 } %.pn33.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_2E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 7 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.u, %bb.h ], [ %i.t, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.42)
          to label %bb.c unwind label %bb.g       ; 3 uses

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47    ; 2 uses
  %i.d = load i8, ptr %2, align 8, !tbaa !47
  store i8 %i.d, ptr %i.b, align 8, !tbaa !47
  store i8 %i.c, ptr %2, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  store i64 %i.g, ptr %i.e, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %i.c)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.d, !inline_history !195

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #27, !inline_history !195
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %3, align 8
  %i.l = load i32, ptr %i.j, align 8, !tbaa !97
  %i.m = sext i32 %i.l to i64
  store i8 5, ptr %3, align 8, !tbaa !197
  store i64 %i.m, ptr %i.k, align 8, !tbaa !36
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.18)
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.o = load i8, ptr %i.n, align 8, !tbaa !47    ; 2 uses
  store i8 5, ptr %i.n, align 8, !tbaa !47
  store i8 %i.o, ptr %3, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i7 = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.q = load i64, ptr %i.k, align 8, !tbaa !36
  store i64 %i.q, ptr %i.p, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i7, ptr %i.k, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef zeroext %i.o)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8 unwind label %bb.f, !inline_history !195

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27, !inline_history !195
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit8: ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume

bb.h:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_2ES_ISK_SaISK_EEEEEEvT_SQ_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 40                  ; 4 uses
  %3 = icmp ugt i64 %i.d, 576460752303423487
  br i1 %3, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #29
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !213
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !215
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_2ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !213
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !215
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_2E(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i unwind label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.014.i.i.i.i) #26
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.c unwind label %bb.d

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_2ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1523

bb.c:                                             ; preds = %.body.i.i.i.i
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %.body.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36person_without_default_constructor_2ESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36person_without_default_constructor_2EEEvPT_DpOT0_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.s, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19DOCTEST_ANON_TMP_14ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons36derived_person_only_serialize_publicEEEvv() #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.doctest::detail::Subcase", align 8 ; 7 uses
  %1 = alloca %"class.doctest::String", align 8   ; 7 uses
  %2 = alloca %"class.persons::derived_person_only_serialize_public", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %6 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %7 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 10 uses
  %10 = alloca %"class.std::vector.443", align 8  ; 7 uses
  %11 = alloca [2 x %"class.persons::derived_person_only_serialize_public"], align 8 ; 28 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %17 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %18 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.149)
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 691)
          to label %bb.b unwind label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.a = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.c unwind label %bb.ac

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1802072645, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, ptr noundef nonnull align 1 dereferenceable(5) @.str.150, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.g, align 1, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.h, ptr noundef nonnull align 8 dereferenceable(5) %i.b, i64 5, i1 false)
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store i64 0, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.b, align 8, !tbaa !36
  store ptr %i.h, ptr %2, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.j, align 8, !tbaa !258
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.l, ptr noundef nonnull align 8 dereferenceable(6) %i.e, i64 6, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 5, ptr %i.m, align 8, !tbaa !35
  store ptr %i.e, ptr %4, align 8, !tbaa !44
  store i64 0, ptr %i.f, align 8, !tbaa !35
  store i8 0, ptr %i.e, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 10)
          to label %bb.d unwind label %bb.ad

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36derived_person_only_serialize_publicE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36derived_person_only_serialize_publicESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %.body

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36derived_person_only_serialize_publicESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.d
  invoke void @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dumpEicbNS0_6detail15error_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef -1, i8 noundef signext 32, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.f unwind label %bb.ae

bb.f:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36derived_person_only_serialize_publicESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  %i.o = load i32, ptr %7, align 4, !tbaa !53, !noalias !1528
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !32, !alias.scope !1528
  %i.q = load ptr, ptr %8, align 8, !tbaa !44, !noalias !1528 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35, !noalias !1528 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.q, ptr %6, align 8, !tbaa !44, !alias.scope !1528
  %i.x = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !1528
  store i64 %i.x, ptr %i.p, align 8, !tbaa !36, !alias.scope !1528
  %.phi.trans.insert.i63 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i64 = load i64, ptr %.phi.trans.insert.i63, align 8, !tbaa !35, !noalias !1528
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.y = phi i64 [ %i.u, %bb.g ], [ %.pre.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
end_hunk_6
begin_hunk_7_@_ZN7doctest6detail19stringifyBinaryExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA45_cEENS_6StringERKT_PKcRKT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.f:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA45_cEENS_6StringERKT_.exit.i, %.noexc, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN7doctest8toStringIA45_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  br label %.body

.body:                                            ; preds = %bb.h, %bb.d, %bb.i
  %.pn = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.n, %bb.h ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.m, %bb.g ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN7persons36derived_person_only_serialize_publicEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7persons36derived_person_only_serialize_publicEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN7persons36derived_person_only_serialize_publicEEvPT_.exit.i
  %.05.i = phi ptr [ %i.h, %_ZSt8_DestroyIN7persons36derived_person_only_serialize_publicEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 56
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.b) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.e = load ptr, ptr %.05.i, align 8, !tbaa !44 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN7persons36derived_person_only_serialize_publicEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #28
  br label %_ZSt8_DestroyIN7persons36derived_person_only_serialize_publicEEvPT_.exit.i

_ZSt8_DestroyIN7persons36derived_person_only_serialize_publicEEvPT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7persons36derived_person_only_serialize_publicEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !18

_ZNSt12_Destroy_auxILb0EE9__destroyIPN7persons36derived_person_only_serialize_publicEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN7persons36derived_person_only_serialize_publicEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7persons36derived_person_only_serialize_publicC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  %i.d = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.f, ptr %i.b, align 8, !tbaa !115
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  %i.i = load i64, ptr %i.b, align 8, !tbaa !115
  store i64 %i.i, ptr %i.c, align 8, !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !36
  store i8 %i.k, ptr %i.j, align 1, !tbaa !36
  br label %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit

_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !115  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = load ptr, ptr %0, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !258
  store i32 %i.r, ptr %i.p, align 8, !tbaa !258
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !32
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.x, ptr %i.a, align 8, !tbaa !115
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !44
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !36
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !36
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !36
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !35
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZN7persons36person_without_default_constructor_1D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ai) #28
  br label %_ZN7persons36person_without_default_constructor_1D2Ev.exit

_ZN7persons36person_without_default_constructor_1D2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKN7persons36derived_person_only_serialize_publicES_ISK_SaISK_EEEEEEvT_SQ_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 72                  ; 4 uses
  %3 = icmp ugt i64 %i.d, 576460752303423487
  br i1 %3, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #29
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !117
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36derived_person_only_serialize_publicESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !117
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36derived_person_only_serialize_publicE(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i unwind label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.014.i.i.i.i) #26
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.c unwind label %bb.d

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36derived_person_only_serialize_publicESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1544

bb.c:                                             ; preds = %.body.i.i.i.i
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %.body.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36derived_person_only_serialize_publicESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.s, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail19stringifyBinaryExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA92_cEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind noalias writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(92) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %5 = alloca %"class.doctest::String", align 8   ; 7 uses
  %6 = alloca %"class.doctest::String", align 8   ; 7 uses
  %7 = alloca %"class.doctest::String", align 8   ; 7 uses
  %8 = alloca %"class.doctest::String", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.a = tail call noundef ptr @_ZN7doctest6detail8tlssPushEv(), !noalias !1557
  %i.b = load ptr, ptr %1, align 8, !tbaa !44, !noalias !1557
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35, !noalias !1557
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b, i64 noundef %i.d), !noalias !1557 ; 0 uses
  call void @_ZN7doctest6detail7tlssPopEv(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.f = invoke noundef ptr @_ZN7doctest6detail8tlssPushEv()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !1558
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 91
  %i.h = load i8, ptr %i.g, align 1, !tbaa !36, !noalias !1558
  %.not.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not.i.i.i.i.i.i, i32 91, i32 92
  invoke void @_ZN7doctest6StringC1EPKcj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(92) %3, i32 noundef %i.i)
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %.noexc
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctestlsERSoRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA92_cEENS_6StringERKT_.exit.i unwind label %bb.d, !noalias !1558 ; 0 uses

bb.d:                                             ; preds = %.noexc10
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26, !noalias !1558
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1558
  br label %.body

_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA92_cEENS_6StringERKT_.exit.i: ; preds = %.noexc10
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26, !noalias !1558
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1558
  invoke void @_ZN7doctest6detail7tlssPopEv(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %8)
          to label %_ZN7doctest8toStringIA92_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit unwind label %bb.h

_ZN7doctest8toStringIA92_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit: ; preds = %_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA92_cEENS_6StringERKT_.exit.i
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN7doctest8toStringIA92_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.f:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZN7doctest6detail15StringMakerBaseILb1EE7convertIA92_cEENS_6StringERKT_.exit.i, %.noexc, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN7doctest8toStringIA92_cTnNS_6detail5types9enable_ifIXntsr6detail35should_stringify_as_underlying_typeIT_EE5valueEbE4typeELb1EEENS_6StringERKS5_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  br label %.body

.body:                                            ; preds = %bb.h, %bb.d, %bb.i
  %.pn = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.n, %bb.h ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.m, %bb.g ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19DOCTEST_ANON_TMP_14ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons37derived_person_only_serialize_privateEEEvv() #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.doctest::detail::Subcase", align 8 ; 7 uses
  %1 = alloca %"class.doctest::String", align 8   ; 7 uses
  %2 = alloca %"class.persons::derived_person_only_serialize_private", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %6 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %7 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
end_hunk_7
begin_hunk_8_@_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_37derived_person_only_serialize_privateE:bb.a
common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.k, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.87)
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.d = load i8, ptr %i.c, align 8, !tbaa !47    ; 2 uses
  %i.e = load i8, ptr %2, align 8, !tbaa !47
  store i8 %i.e, ptr %i.c, align 8, !tbaa !47
  store i8 %i.d, ptr %2, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36
  store i64 %i.h, ptr %i.f, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.g, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext %i.d)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.d, !inline_history !50

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27, !inline_history !50
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN7persons37derived_person_only_serialize_privateEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7persons37derived_person_only_serialize_privateEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN7persons37derived_person_only_serialize_privateEEvPT_.exit.i
  %.05.i = phi ptr [ %i.h, %_ZSt8_DestroyIN7persons37derived_person_only_serialize_privateEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 56
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.b) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.e = load ptr, ptr %.05.i, align 8, !tbaa !44 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN7persons37derived_person_only_serialize_privateEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #28
  br label %_ZSt8_DestroyIN7persons37derived_person_only_serialize_privateEEvPT_.exit.i

_ZSt8_DestroyIN7persons37derived_person_only_serialize_privateEEvPT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7persons37derived_person_only_serialize_privateEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !19

_ZNSt12_Destroy_auxILb0EE9__destroyIPN7persons37derived_person_only_serialize_privateEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN7persons37derived_person_only_serialize_privateEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7persons37derived_person_only_serialize_privateC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  %i.d = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.f, ptr %i.b, align 8, !tbaa !115
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  %i.i = load i64, ptr %i.b, align 8, !tbaa !115
  store i64 %i.i, ptr %i.c, align 8, !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !36
  store i8 %i.k, ptr %i.j, align 1, !tbaa !36
  br label %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit

_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !115  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = load ptr, ptr %0, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !258
  store i32 %i.r, ptr %i.p, align 8, !tbaa !258
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !32
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.x, ptr %i.a, align 8, !tbaa !115
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !44
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !36
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZN7persons36person_without_default_constructor_1C2ERKS0_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !36
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !36
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !35
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZN7persons36person_without_default_constructor_1D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ai) #28
  br label %_ZN7persons36person_without_default_constructor_1D2Ev.exit

_ZN7persons36person_without_default_constructor_1D2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKN7persons37derived_person_only_serialize_privateES_ISK_SaISK_EEEEEEvT_SQ_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 72                  ; 4 uses
  %3 = icmp ugt i64 %i.d, 576460752303423487
  br i1 %3, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #29
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !117
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons37derived_person_only_serialize_privateESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !117
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_37derived_person_only_serialize_privateE(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i unwind label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.014.i.i.i.i) #26
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.c unwind label %bb.d

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons37derived_person_only_serialize_privateESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1565

bb.c:                                             ; preds = %.body.i.i.i.i
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %.body.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons37derived_person_only_serialize_privateESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.s, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19DOCTEST_ANON_TMP_14ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons36derived_person_only_serialize_publicEEEvv() #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.doctest::detail::Subcase", align 8 ; 7 uses
  %1 = alloca %"class.doctest::String", align 8   ; 7 uses
  %2 = alloca %"class.persons::derived_person_only_serialize_public", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %6 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %7 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 10 uses
  %10 = alloca %"class.std::vector.443", align 8  ; 7 uses
  %11 = alloca [2 x %"class.persons::derived_person_only_serialize_public"], align 8 ; 28 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %17 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %18 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.149)
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 691)
          to label %bb.b unwind label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.a = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.c unwind label %bb.ac

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1802072645, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, ptr noundef nonnull align 1 dereferenceable(5) @.str.150, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.g, align 1, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.h, ptr noundef nonnull align 8 dereferenceable(5) %i.b, i64 5, i1 false)
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store i64 0, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.b, align 8, !tbaa !36
  store ptr %i.h, ptr %2, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.j, align 8, !tbaa !258
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.l, ptr noundef nonnull align 8 dereferenceable(6) %i.e, i64 6, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 5, ptr %i.m, align 8, !tbaa !35
  store ptr %i.e, ptr %4, align 8, !tbaa !44
  store i64 0, ptr %i.f, align 8, !tbaa !35
  store i8 0, ptr %i.e, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 10)
          to label %bb.d unwind label %bb.ad

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36derived_person_only_serialize_publicE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36derived_person_only_serialize_publicESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %.body

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36derived_person_only_serialize_publicESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.d
  invoke void @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dumpEicbNS0_6detail15error_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef -1, i8 noundef signext 32, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.f unwind label %bb.ae

bb.f:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons36derived_person_only_serialize_publicESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %i.o = load i32, ptr %7, align 4, !tbaa !53, !noalias !1570
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !32, !alias.scope !1570
  %i.q = load ptr, ptr %8, align 8, !tbaa !44, !noalias !1570 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35, !noalias !1570 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.q, ptr %6, align 8, !tbaa !44, !alias.scope !1570
  %i.x = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !1570
  store i64 %i.x, ptr %i.p, align 8, !tbaa !36, !alias.scope !1570
  %.phi.trans.insert.i63 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i64 = load i64, ptr %.phi.trans.insert.i63, align 8, !tbaa !35, !noalias !1570
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.y = phi i64 [ %i.u, %bb.g ], [ %.pre.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
end_hunk_8
begin_hunk_9_@_ZL19DOCTEST_ANON_TMP_14ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons36derived_person_only_serialize_publicEEEvv:bb.a
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.ad
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %.body ], [ %i.es, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

.body102:                                         ; preds = %.body172.thread, %.body172
  %eh.lpad-body173229 = phi { ptr, i32 } [ %i.cc, %.body172.thread ], [ %i.bz, %.body172 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZN7persons36derived_person_only_serialize_publicD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.fb) #26
  call void @_ZN7persons36derived_person_only_serialize_publicD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #26
  %i.fc = load ptr, ptr %15, align 8, !tbaa !44   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.bc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %.body102
  call void @_ZdlPv(ptr noundef %i.fc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %.body102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  %i.fe = load ptr, ptr %14, align 8, !tbaa !44   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.az
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  call void @_ZdlPv(ptr noundef %i.fe) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  %i.fg = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ap
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  call void @_ZdlPv(ptr noundef %i.fg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  %i.fi = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.am
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  call void @_ZdlPv(ptr noundef %i.fi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.ap

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ak:                                            ; preds = %bb.u
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

bb.al:                                            ; preds = %bb.x
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.y
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fo) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn45 = phi { ptr, i32 } [ %i.fn, %bb.am ], [ %i.fm, %bb.al ] ; 2 uses
  %i.fp = load ptr, ptr %17, align 8, !tbaa !44   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.db
  br i1 %i.fq, label %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.fp) #28
  br label %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167

_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164
  %i.fr = load ptr, ptr %19, align 8, !tbaa !44   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.dd
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167
  call void @_ZdlPv(ptr noundef %i.fr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %bb.ak
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.fl, %bb.ak ], [ %.pn45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %.pn45, %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167 ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #26
  br label %.body120

.body120:                                         ; preds = %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ao

bb.ao:                                            ; preds = %.body120, %bb.aj
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn, %.body120 ], [ %i.fk, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZNSt6vectorIN7persons36derived_person_only_serialize_publicESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %.pn45.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn, %bb.ao ], [ %eh.lpad-body173229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.ap, %bb.ai
  %.pn45.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn, %bb.ap ], [ %.pn34.pn.pn.pn.pn, %bb.ai ]
  call void @_ZN7persons36derived_person_only_serialize_publicD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN7persons36derived_person_only_serialize_publicD2Ev.exit141, %bb.c
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.ac
  %.pn45.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.er, %bb.ac ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ab
  %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ar ], [ %i.eq, %bb.ab ]
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36derived_person_only_serialize_publicE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 7 uses
  tail call void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_1E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.k, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.87)
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.d = load i8, ptr %i.c, align 8, !tbaa !47    ; 2 uses
  %i.e = load i8, ptr %2, align 8, !tbaa !47
  store i8 %i.e, ptr %i.c, align 8, !tbaa !47
  store i8 %i.d, ptr %2, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36
  store i64 %i.h, ptr %i.f, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.g, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext %i.d)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.d, !inline_history !195

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27, !inline_history !195
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKN7persons36derived_person_only_serialize_publicES_ISK_SaISK_EEEEEEvT_SQ_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 72                  ; 4 uses
  %3 = icmp ugt i64 %i.d, 576460752303423487
  br i1 %3, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #29
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !213
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !215
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36derived_person_only_serialize_publicESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !213
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !215
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36derived_person_only_serialize_publicE(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i unwind label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.014.i.i.i.i) #26
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.c unwind label %bb.d

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36derived_person_only_serialize_publicESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1572

bb.c:                                             ; preds = %.body.i.i.i.i
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %.body.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons36derived_person_only_serialize_publicESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons36derived_person_only_serialize_publicEEEvPT_DpOT0_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.s, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19DOCTEST_ANON_TMP_14ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons37derived_person_only_serialize_privateEEEvv() #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.doctest::detail::Subcase", align 8 ; 7 uses
  %1 = alloca %"class.doctest::String", align 8   ; 7 uses
  %2 = alloca %"class.persons::derived_person_only_serialize_private", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %6 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %7 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 10 uses
  %10 = alloca %"class.std::vector.460", align 8  ; 7 uses
  %11 = alloca [2 x %"class.persons::derived_person_only_serialize_private"], align 8 ; 28 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %17 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 11 uses
  %18 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.149)
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 691)
          to label %bb.b unwind label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.a = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.c unwind label %bb.ac

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1802072645, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, ptr noundef nonnull align 1 dereferenceable(5) @.str.150, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.g, align 1, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.h, ptr noundef nonnull align 8 dereferenceable(5) %i.b, i64 5, i1 false)
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store i64 0, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.b, align 8, !tbaa !36
  store ptr %i.h, ptr %2, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.j, align 8, !tbaa !258
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.l, ptr noundef nonnull align 8 dereferenceable(6) %i.e, i64 6, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 5, ptr %i.m, align 8, !tbaa !35
  store ptr %i.e, ptr %4, align 8, !tbaa !44
  store i64 0, ptr %i.f, align 8, !tbaa !35
  store i8 0, ptr %i.e, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 10)
          to label %bb.d unwind label %bb.ad

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_37derived_person_only_serialize_privateE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons37derived_person_only_serialize_privateESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %.body

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons37derived_person_only_serialize_privateESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.d
  invoke void @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dumpEicbNS0_6detail15error_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef -1, i8 noundef signext 32, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.f unwind label %bb.ae

bb.f:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKN7persons37derived_person_only_serialize_privateESG_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  %i.o = load i32, ptr %7, align 4, !tbaa !53, !noalias !1577
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !32, !alias.scope !1577
  %i.q = load ptr, ptr %8, align 8, !tbaa !44, !noalias !1577 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35, !noalias !1577 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.q, ptr %6, align 8, !tbaa !44, !alias.scope !1577
  %i.x = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !1577
  store i64 %i.x, ptr %i.p, align 8, !tbaa !36, !alias.scope !1577
  %.phi.trans.insert.i63 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i64 = load i64, ptr %.phi.trans.insert.i63, align 8, !tbaa !35, !noalias !1577
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.y = phi i64 [ %i.u, %bb.g ], [ %.pre.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
end_hunk_9
begin_hunk_10_@_ZL19DOCTEST_ANON_TMP_14ISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEEN7persons37derived_person_only_serialize_privateEEEvv:bb.a
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.ad
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %.body ], [ %i.es, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

.body102:                                         ; preds = %.body172.thread, %.body172
  %eh.lpad-body173229 = phi { ptr, i32 } [ %i.cc, %.body172.thread ], [ %i.bz, %.body172 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZN7persons37derived_person_only_serialize_privateD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.fb) #26
  call void @_ZN7persons37derived_person_only_serialize_privateD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #26
  %i.fc = load ptr, ptr %15, align 8, !tbaa !44   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.bc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %.body102
  call void @_ZdlPv(ptr noundef %i.fc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %.body102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  %i.fe = load ptr, ptr %14, align 8, !tbaa !44   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.az
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  call void @_ZdlPv(ptr noundef %i.fe) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  %i.fg = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ap
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  call void @_ZdlPv(ptr noundef %i.fg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  %i.fi = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.am
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  call void @_ZdlPv(ptr noundef %i.fi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.ap

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ak:                                            ; preds = %bb.u
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

bb.al:                                            ; preds = %bb.x
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.y
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fo) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn45 = phi { ptr, i32 } [ %i.fn, %bb.am ], [ %i.fm, %bb.al ] ; 2 uses
  %i.fp = load ptr, ptr %17, align 8, !tbaa !44   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.db
  br i1 %i.fq, label %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.fp) #28
  br label %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167

_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164
  %i.fr = load ptr, ptr %19, align 8, !tbaa !44   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.dd
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167
  call void @_ZdlPv(ptr noundef %i.fr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %bb.ak
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.fl, %bb.ak ], [ %.pn45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %.pn45, %_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167 ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #26
  br label %.body120

.body120:                                         ; preds = %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ao

bb.ao:                                            ; preds = %.body120, %bb.aj
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn, %.body120 ], [ %i.fk, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZNSt6vectorIN7persons37derived_person_only_serialize_privateESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %.pn45.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn, %bb.ao ], [ %eh.lpad-body173229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.ap, %bb.ai
  %.pn45.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn, %bb.ap ], [ %.pn34.pn.pn.pn.pn, %bb.ai ]
  call void @_ZN7persons37derived_person_only_serialize_privateD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN7persons37derived_person_only_serialize_privateD2Ev.exit141, %bb.c
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.ac
  %.pn45.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.er, %bb.ac ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ab
  %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ar ], [ %i.eq, %bb.ab ]
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_37derived_person_only_serialize_privateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.167", align 8 ; 7 uses
  tail call void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_36person_without_default_constructor_1E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.k, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.87)
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.d = load i8, ptr %i.c, align 8, !tbaa !47    ; 2 uses
  %i.e = load i8, ptr %2, align 8, !tbaa !47
  store i8 %i.e, ptr %i.c, align 8, !tbaa !47
  store i8 %i.d, ptr %2, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36
  store i64 %i.h, ptr %i.f, align 8, !tbaa !36
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.g, align 8, !tbaa !36
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext %i.d)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.d, !inline_history !195

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27, !inline_history !195
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKN7persons37derived_person_only_serialize_privateES_ISK_SaISK_EEEEEEvT_SQ_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 72                  ; 4 uses
  %3 = icmp ugt i64 %i.d, 576460752303423487
  br i1 %3, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #29
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !213
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !215
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons37derived_person_only_serialize_privateESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !213
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !215
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, i8 0, i64 16, i1 false)
  invoke void @_ZN7persons7to_jsonIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEvEETnNSt9enable_ifIXsr6detail13is_basic_jsonIT_EE5valueEiE4typeELi0EEEvRSH_RKNS_37derived_person_only_serialize_privateE(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i unwind label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.014.i.i.i.i) #26
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.c unwind label %bb.d

_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons37derived_person_only_serialize_privateESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1579

bb.c:                                             ; preds = %.body.i.i.i.i
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %.body.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7persons37derived_person_only_serialize_privateESt6vectorIS3_SaIS3_EEEEPN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapES6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSB_14adl_serializerES6_IhSaIhEEvEESN_ET0_T_SQ_SP_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.o, %_ZSt10_ConstructIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEJRKN7persons37derived_person_only_serialize_privateEEEvPT_DpOT0_.exit.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.s, align 8, !tbaa !214
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_unit_udt_macro.cpp() #20 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.doctest::String", align 8   ; 9 uses
  %1 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %2 = alloca %"class.doctest::String", align 8   ; 7 uses
  %3 = alloca %"class.doctest::String", align 8   ; 9 uses
  %4 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %5 = alloca %"class.doctest::String", align 8   ; 7 uses
  %6 = alloca %"class.doctest::String", align 8   ; 9 uses
  %7 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %8 = alloca %"class.doctest::String", align 8   ; 7 uses
  %9 = alloca %"class.doctest::String", align 8   ; 9 uses
  %10 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %11 = alloca %"class.doctest::String", align 8  ; 7 uses
  %12 = alloca %"class.doctest::String", align 8  ; 9 uses
  %13 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %14 = alloca %"class.doctest::String", align 8  ; 7 uses
  %15 = alloca %"class.doctest::String", align 8  ; 9 uses
  %16 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %17 = alloca %"class.doctest::String", align 8  ; 7 uses
  %18 = alloca %"class.doctest::String", align 8  ; 9 uses
  %19 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %20 = alloca %"class.doctest::String", align 8  ; 7 uses
  %21 = alloca %"class.doctest::String", align 8  ; 9 uses
  %22 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %23 = alloca %"class.doctest::String", align 8  ; 7 uses
  %24 = alloca %"class.doctest::String", align 8  ; 9 uses
  %25 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %26 = alloca %"class.doctest::String", align 8  ; 7 uses
  %27 = alloca %"class.doctest::String", align 8  ; 9 uses
  %28 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %29 = alloca %"class.doctest::String", align 8  ; 7 uses
  %30 = alloca %"class.doctest::String", align 8  ; 9 uses
  %31 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %32 = alloca %"class.doctest::String", align 8  ; 7 uses
  %33 = alloca %"class.doctest::String", align 8  ; 9 uses
  %34 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %35 = alloca %"class.doctest::String", align 8  ; 7 uses
  %36 = alloca %"class.doctest::String", align 8  ; 9 uses
  %37 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %38 = alloca %"class.doctest::String", align 8  ; 7 uses
  %39 = alloca %"class.doctest::String", align 8  ; 9 uses
  %40 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %41 = alloca %"class.doctest::String", align 8  ; 7 uses
  %42 = alloca %"class.doctest::String", align 8  ; 9 uses
  %43 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %44 = alloca %"class.doctest::String", align 8  ; 7 uses
  %45 = alloca %"class.doctest::String", align 8  ; 9 uses
  %46 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %47 = alloca %"class.doctest::String", align 8  ; 7 uses
  %48 = alloca %"class.doctest::String", align 8  ; 9 uses
  %49 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %50 = alloca %"class.doctest::String", align 8  ; 7 uses
  %51 = alloca %"class.doctest::String", align 8  ; 9 uses
  %52 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %53 = alloca %"class.doctest::String", align 8  ; 7 uses
  %54 = alloca %"class.doctest::String", align 8  ; 9 uses
  %55 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %56 = alloca %"class.doctest::String", align 8  ; 7 uses
  %57 = alloca %"class.doctest::String", align 8  ; 9 uses
  %58 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %59 = alloca %"class.doctest::String", align 8  ; 7 uses
  %60 = alloca %"class.doctest::String", align 8  ; 9 uses
  %61 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %62 = alloca %"class.doctest::String", align 8  ; 7 uses
  %63 = alloca %"class.doctest::String", align 8  ; 9 uses
  %64 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %65 = alloca %"class.doctest::String", align 8  ; 7 uses
  %66 = alloca %"class.doctest::String", align 8  ; 9 uses
  %67 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %68 = alloca %"class.doctest::String", align 8  ; 7 uses
  %69 = alloca %"class.doctest::String", align 8  ; 9 uses
  %70 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %71 = alloca %"class.doctest::String", align 8  ; 7 uses
  %72 = alloca %"class.doctest::String", align 8  ; 9 uses
  %73 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %74 = alloca %"class.doctest::String", align 8  ; 7 uses
  %75 = alloca %"class.doctest::String", align 8  ; 9 uses
  %76 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %77 = alloca %"class.doctest::String", align 8  ; 7 uses
  %78 = alloca %"class.doctest::String", align 8  ; 9 uses
  %79 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %80 = alloca %"class.doctest::String", align 8  ; 7 uses
  %81 = alloca %"class.doctest::String", align 8  ; 9 uses
  %82 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %83 = alloca %"class.doctest::String", align 8  ; 7 uses
  %84 = alloca %"class.doctest::String", align 8  ; 9 uses
  %85 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %86 = alloca %"class.doctest::String", align 8  ; 7 uses
  %87 = alloca %"class.doctest::String", align 8  ; 9 uses
  %88 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %89 = alloca %"class.doctest::String", align 8  ; 7 uses
  %90 = alloca %"class.doctest::String", align 8  ; 9 uses
  %91 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %92 = alloca %"class.doctest::String", align 8  ; 7 uses
  %93 = alloca %"class.doctest::String", align 8  ; 9 uses
  %94 = alloca %"struct.doctest::detail::TestCase", align 8 ; 9 uses
  %95 = alloca %"class.doctest::String", align 8  ; 7 uses
  %96 = alloca %"struct.doctest::detail::TestSuite", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %96, i8 0, i64 40, i1 false)
  %i.a = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN7doctest6detail9TestSuitemlEPKc(ptr noundef nonnull align 8 dereferenceable(40) %96, ptr noundef nonnull @.str)
  %i.b = call noundef i32 @_ZN7doctest6detail12setTestSuiteERKNS0_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(40) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #26
  store i32 0, ptr @_ZL18DOCTEST_ANON_VAR_0, align 4, !tbaa !97
  %i.c = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL18DOCTEST_ANON_VAR_0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #26
  %i.d = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #26, !noalias !1644
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %93, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7doctest8toStringISt4pairIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEN7persons24person_with_private_dataEEEENS_6StringEv), !noalias !1644
  %i.e = invoke noundef i32 @_ZNK7doctest6String4findEcj(ptr noundef nonnull align 8 dereferenceable(24) %93, i8 noundef signext 61, i32 noundef 0)
          to label %bb.b unwind label %bb.d, !noalias !1644 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef i32 @_ZNK7doctest6String4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %93)
          to label %bb.c unwind label %bb.d, !noalias !1644

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.e, 2
  %reass.sub = sub i32 %i.f, %i.e
end_hunk_10
