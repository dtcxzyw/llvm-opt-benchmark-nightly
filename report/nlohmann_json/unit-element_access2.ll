Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-element_access2?download=true
inline.NumInlined: 15971
inline.NumDeleted: 2497
loop-unroll.NumCompletelyUnrolled: 700
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 702
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_:bb.a
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !118
  %i.bn = load ptr, ptr %2, align 8, !tbaa !118
  %i.bo = tail call i32 @memcmp(ptr noundef %i.bn, ptr noundef %i.bm, i64 noundef %.sroa.speculated.i.i.i.i37) #27 ; 2 uses
  %.not.i.i.i.i39 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38, %bb.k
  %i.bp = sub i64 %i.v, %i.bj
  %spec.select7.i.i.i.i.i42 = tail call i64 @llvm.smax.i64(i64 %i.bp, i64 -2147483648)
  %.08.i.i.i.i.i43 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i42, i64 2147483647)
  %.0.i6.i.i.i.i44 = trunc nsw i64 %.08.i.i.i.i.i43 to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit45

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit45: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41
  %.0.i.i.i.i40 = phi i32 [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38 ], [ %.0.i6.i.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41 ]
  %i.bq = icmp slt i32 %.0.i.i.i.i40, 0
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit45
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !266
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %spec.select74 = select i1 %i.bt, ptr null, ptr %i.bh
  %spec.select75 = select i1 %i.bt, ptr %1, ptr %i.bh
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit45
  %i.bu = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit36, %bb.m, %bb.j, %bb.i, %bb.f, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %spec.select, %bb.h ], [ null, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit ], [ %spec.select74, %bb.l ], [ %i.az, %bb.i ], [ %i.aj, %bb.f ], [ %1, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit36 ], [ %i.bv, %bb.m ], [ null, %bb.j ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %spec.select73, %bb.h ], [ %i.f, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit ], [ %spec.select75, %bb.l ], [ %i.ba, %bb.i ], [ %i.aj, %bb.f ], [ null, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit36 ], [ %i.bw, %bb.m ], [ %i.bf, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load i8, ptr %i.c, align 8, !tbaa !51
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.e)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i unwind label %bb.c, !inline_history !3

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28, !inline_history !3
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !46
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #30, !inline_history !4
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #30, !inline_history !5
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !185 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !91   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i.i, 0              ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !185 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2603

._crit_edge:                                      ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !91   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !91   ; 2 uses
  %.sroa.speculated.i.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !118
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !118
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i.i5) #27 ; 2 uses
  %.not.i.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i.i12 = trunc nsw i64 %.08.i.i.i.i.i11 to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9
  %.0.i.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6 ], [ %.0.i6.i.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i.i8, 0            ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

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
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 3 uses
  %4 = icmp slt i64 %i.c, 0
  br i1 %4, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.430) #32
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !261
  br label %_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #29 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !171
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !261
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.e
  %.016.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50, !noalias !2607 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.01215.i.i.i.i, i64 16, i1 false), !tbaa.struct !53
  store i8 0, ptr %.01215.i.i.i.i, align 8, !tbaa !45, !noalias !2607
  %i.n = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !46, !noalias !2607
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2606

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #32
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
  call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.p, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.w, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE7_M_copyILb0ENSN_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISH_ESS_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !2612, !nonnull !70, !align !275
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #29 ; 9 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE17_M_construct_nodeIJRKSH_EEEvPSt13_Rb_tree_nodeISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a), !inline_history !2608
  %i.d = load i32, ptr %1, align 8, !tbaa !2613
  store i32 %i.d, ptr %i.c, align 8, !tbaa !2613
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.g, align 8, !tbaa !2614
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !266  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE7_M_copyILb0ENSN_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISH_ESS_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.f, align 8, !tbaa !266
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in37 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03038 = load ptr, ptr %.030.in37, align 8, !tbaa !265 ; 2 uses
  %.not3239 = icmp eq ptr %.03038, null
  br i1 %.not3239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03041 = phi ptr [ %.030, %bb.l ], [ %.03038, %bb.e ] ; 4 uses
  %.03140 = phi ptr [ %i.m, %bb.l ], [ %i.c, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !2612, !nonnull !70, !align !275
  %i.m = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #29
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03041, i64 32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE17_M_construct_nodeIJRKSH_EEEvPSt13_Rb_tree_nodeISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %bb.f unwind label %bb.i, !inline_history !2609

bb.f:                                             ; preds = %.noexc
  %i.o = load i32, ptr %.03041, align 8, !tbaa !2613
  store i32 %i.o, ptr %i.m, align 8, !tbaa !2613
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.03140, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.r, align 8, !tbaa !265
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03140, ptr %i.s, align 8, !tbaa !2614
  %i.t = getelementptr inbounds nuw i8, ptr %.03041, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !266  ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE7_M_copyILb0ENSN_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISH_ESS_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %i.q, align 8, !tbaa !266
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %.noexc, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #27 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #32
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03041, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !265 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !2610

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.c

bb.o:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ESt16initializer_listINS0_6detail8json_refISD_EEEbNSF_7value_tE:bb.a
  %.pn40 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #27
  br label %.body

bb.j:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i8 [ %i.e, %bb.b ], [ %spec.select, %bb.c ]
  %i.r = trunc nuw i8 %.1 to i1
  br i1 %i.r, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %0, align 8, !tbaa !360
  %i.s = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.s, i8 0, i64 24, i1 false)
  %i.t = ptrtoint ptr %i.s to i64
  store i64 %i.t, ptr %i.a, align 8, !tbaa !46
  %.not41 = icmp eq i64 %2, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.01742 = phi ptr [ %1, %.lr.ph ], [ %i.ak, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.w = getelementptr inbounds nuw i8, ptr %.01742, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !363, !noalias !4724 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %.01742, i64 16, i1 false), !tbaa.struct !53
  store i8 0, ptr %.01742, align 8, !tbaa !360, !noalias !4724
  %i.z = getelementptr inbounds nuw i8, ptr %.01742, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !46, !noalias !4724
  br label %_ZNK8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15moved_or_copiedEv.exit

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15moved_or_copiedEv.exit unwind label %bb.s

_ZNK8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15moved_or_copiedEv.exit: ; preds = %bb.o, %bb.p
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !370 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = invoke { ptr, i8 } @_ZN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10basic_jsonIS1_St6vectorS7_blmdSaNS0_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS7_SD_EEE7emplaceERSH_OSD_(ptr noundef nonnull align 8 dereferenceable(25) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %bb.q unwind label %bb.t       ; 0 uses

bb.q:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15moved_or_copiedEv.exit
  %i.ah = load i8, ptr %7, align 8, !tbaa !364
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext %i.ah)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.r, !inline_history !365

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #28, !inline_history !365
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ak = getelementptr inbounds nuw i8, ptr %.01742, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.b
  br i1 %.not, label %.loopexit, label %bb.n

bb.s:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE15moved_or_copiedEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn25 = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.al, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.body

bb.v:                                             ; preds = %bb.j
  store i8 2, ptr %0, align 8, !tbaa !360
  %i.an = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc28 unwind label %bb.y   ; 6 uses

.noexc28:                                         ; preds = %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIPKNS1_6detail8json_refISD_EEEEvT_SM_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef %1, ptr noundef %i.b)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS3_ISD_SaISD_EEJPKNS0_6detail8json_refISD_EESL_EEEPT_DpOT0_.exit unwind label %bb.w

bb.w:                                             ; preds = %.noexc28
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !370 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JPKNS2_6detail8json_refISE_EESM_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit8.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !390
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #30
  br label %_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JPKNS2_6detail8json_refISE_EESM_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit8.i

_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JPKNS2_6detail8json_refISE_EESM_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit8.i: ; preds = %bb.x, %bb.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 24) #30
  br label %.body

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS3_ISD_SaISD_EEJPKNS0_6detail8json_refISD_EESL_EEEPT_DpOT0_.exit: ; preds = %.noexc28
  store ptr %i.an, ptr %i.a, align 8, !tbaa !46
  br label %.loopexit

bb.y:                                             ; preds = %bb.v
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %bb.l, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS3_ISD_SaISD_EEJPKNS0_6detail8json_refISD_EESL_EEEPT_DpOT0_.exit
  ret void

.body:                                            ; preds = %bb.y, %_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JPKNS2_6detail8json_refISE_EESM_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.u, %bb.m, %bb.d
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.u ], [ %i.v, %bb.m ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn40, %bb.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %bb.d ], [ %i.av, %bb.y ], [ %i.ao, %_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JPKNS2_6detail8json_refISE_EESM_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit8.i ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  resume { ptr, i32 } %.pn25.pn

bb.z:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %0, align 8, !tbaa !364
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit unwind label %bb.b, !inline_history !4725

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28, !inline_history !4725
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.c = load i8, ptr %1, align 8, !tbaa !360     ; 2 uses
  store i8 %i.c, ptr %0, align 8, !tbaa !360
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
          to label %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i unwind label %bb.f, !inline_history !4726 ; 7 uses

_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !373  ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !374  ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %.noexc46, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i
  %i.m = icmp ugt i64 %i.l, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i44, label %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i.i.i, !prof !270

.noexc.i.i44:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc45 unwind label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i, !inline_history !4727

.noexc45:                                         ; preds = %.noexc.i.i44
  unreachable

_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #29
          to label %.noexc46 unwind label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i, !inline_history !4727

.noexc46:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i
  %i.o = phi ptr [ null, %_ZNSt15__new_allocatorIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEE8allocateEmPKv.exit.i ], [ %i.n, %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.o, ptr %i.f, align 8, !tbaa !374
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !373
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !391
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEEPSJ_ET0_T_SR_SQ_(ptr %i.i, ptr %i.h, ptr noundef %i.o)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_valueC2ERKNS2_IS9_SD_St4lessIvESaISt4pairIKS9_SD_EEEE.exit unwind label %bb.d, !inline_history !4728

bb.d:                                             ; preds = %.noexc46
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !374  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !391
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #30, !inline_history !4727
  br label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i.body

bb.f:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body18

_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i: ; preds = %_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i44
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i.body

_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i.body: ; preds = %bb.d, %bb.e, %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_10basic_jsonIS2_St6vectorS8_blmdSaNS1_14adl_serializerESA_IhSaIhEEvEESt4lessIvESaISt4pairIKS8_SE_EEEEZNSE_6createISL_JRKSL_EEEPT_DpOT0_EUlPSL_E_ED2Ev.exit5.i ], [ %i.t, %bb.e ], [ %i.t, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #30, !inline_history !4726
  br label %.body18

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_valueC2ERKNS2_IS9_SD_St4lessIvESaISt4pairIKS9_SD_EEEE.exit: ; preds = %.noexc46
  store ptr %i.s, ptr %i.p, align 8, !tbaa !373
  %i.ab = ptrtoint ptr %i.f to i64
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.ae = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %_ZNSt15__new_allocatorISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEE8allocateEmPKv.exit.i unwind label %bb.h, !inline_history !4729 ; 3 uses

_ZNSt15__new_allocatorISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEE8allocateEmPKv.exit.i: ; preds = %bb.g
  invoke void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_valueC2ERKS3_ISD_SaISD_EE.exit unwind label %_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JRKSG_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit5.i, !inline_history !4729

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body18

_ZNSt10unique_ptrISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEZNSE_6createISG_JRKSG_EEEPT_DpOT0_EUlPSG_E_ED2Ev.exit5.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEE8allocateEmPKv.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 24) #30, !inline_history !4729
  br label %.body18

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_valueC2ERKS3_ISD_SaISD_EE.exit: ; preds = %_ZNSt15__new_allocatorISt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS2_11ordered_mapES0_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES0_IhSaIhEEvEESaISE_EEE8allocateEmPKv.exit.i
  %i.ah = ptrtoint ptr %i.ae to i64
  br label %.sink.split

bb.i:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46 ; 2 uses
  %i.ak = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
          to label %.noexc unwind label %bb.m     ; 8 uses

.noexc:                                           ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !89
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !118 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !91 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !233
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRKS5_EEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i.i ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !118
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !233
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %.noexc
  %i.as = phi ptr [ %i.aq, %.noexc.i.i ], [ %i.al, %.noexc ] ; 2 uses
  switch i64 %i.ao, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.at = load i8, ptr %i.am, align 1, !tbaa !46
  store i8 %i.at, ptr %i.as, align 1, !tbaa !46
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %bb.l

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRKS5_EEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i.i: ; preds = %.noexc.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 32) #30
  br label %.body18

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i
  %i.av = load i64, ptr %i.a, align 8, !tbaa !233 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !91
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !118
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.az = ptrtoint ptr %i.ak to i64
  br label %.sink.split

bb.m:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.n:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !46, !range !69, !noundef !70
  %.sroa.028.0.insert.ext = zext nneg i8 %i.bc to i64
  br label %.sink.split

bb.o:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !46
  br label %.sink.split

bb.p:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !46
  br label %.sink.split

bb.q:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !46
  br label %.sink.split

bb.r:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !46 ; 3 uses
  %i.bl = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc15 unwind label %bb.x   ; 10 uses

.noexc15:                                         ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !268 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !269 ; 4 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bl, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.noexc15
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !270

.noexc.i.i.i.i.i:                                 ; preds = %bb.s
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc.i.i14 unwind label %_ZNSt10unique_ptrIN8nlohmann16json_abi_v3_12_027byte_container_with_subtypeISt6vectorIhSaIhEEEEZNS1_10basic_jsonINS1_11ordered_mapES3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES5_vE6createIS6_JRKS6_EEEPT_DpOT0_EUlPS6_E_ED2Ev.exit6.i.i

.noexc.i.i14:                                     ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #29
end_hunk_1
begin_hunk_2_@_ZNK8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE2atIRKSt17basic_string_viewIcS7_ETnNSt9enable_ifIXsr6detail32is_usable_as_basic_json_key_typeISD_T_EE5valueEiE4typeELi0EEERKSD_OSK_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.sink.split69

bb.m:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_011ordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10basic_jsonIS1_St6vectorS7_blmdSaNS0_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS7_SD_EEE4findIRKSt17basic_string_viewIcS5_ETnNSt9enable_ifIXsr6detail21is_usable_as_key_typeISt8equal_toIvES7_T_EE5valueEiE4typeELi0EEEN9__gnu_cxx17__normal_iteratorIPSI_S9_ISI_SJ_EEEOST_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  ret ptr %i.az

.sink.split69:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ad, %.sink.split ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  %.pn17.pn.ph = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.pn.pn35.ph, %.sink.split ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  call void @__cxa_free_exception(ptr %.sink) #27
  br label %bb.n

bb.n:                                             ; preds = %.sink.split69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17.pn = phi { ptr, i32 } [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn17.pn.ph, %.sink.split69 ]
  resume { ptr, i32 } %.pn17.pn

bb.o:                                             ; preds = %bb.k, %bb.d
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS3_10basic_jsonINS3_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES8_IhSaIhEEvEEEEEeqISK_EEDTcmcvveqclL_ZNS0_7declvalISK_EEOT_vEEclsr7doctest6detailE7declvalISO_EEtlNS0_6ResultEEESP_(ptr dead_on_unwind noalias writable sret(%"struct.doctest::detail::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.doctest::String", align 8   ; 7 uses
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !389
  %i.d = and i32 %i.c, 256
  %i.e = icmp ne i32 %i.d, 0
  %spec.select = xor i1 %i.a, %i.e                ; 2 uses
  br i1 %spec.select, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN7doctest17getContextOptionsEv()
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.h = load i8, ptr %i.g, align 4, !tbaa !277, !range !69, !noundef !70
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN7doctest6detail19stringifyBinaryExprIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS3_10basic_jsonINS3_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES8_IhSaIhEEvEEEESK_EENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.435, ptr noundef nonnull align 8 dereferenceable(32) %2)
  invoke void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  invoke void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  ret void

bb.j:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %0, align 8, !tbaa !364
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEA8_cTnNSt9enable_ifIXntsr3std7is_sameIT0_NT_8string_tEEE5valueEiE4typeELi0EEEvRSM_RKSL_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !360
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.c)
  store i8 3, ptr %0, align 8, !tbaa !360
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !89
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(8) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.f, ptr %i.a, align 8, !tbaa !233
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA8_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.d, align 8, !tbaa !118
  %i.i = load i64, ptr %i.a, align 8, !tbaa !233
  store i64 %i.i, ptr %i.e, align 8, !tbaa !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS9_JRA8_KcEEEPT_DpOT0_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !46
  store i8 %i.k, ptr %i.j, align 1, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS9_JRA8_KcEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 dereferenceable(8) %1, i64 %i.f, i1 false)
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS9_JRA8_KcEEEPT_DpOT0_.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonINS7_11ordered_mapESt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA8_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i: ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #30
  resume { ptr, i32 } %i.l

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS9_JRA8_KcEEEPT_DpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !233  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !91
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store ptr %i.d, ptr %i.b, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.274", align 8   ; 23 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.252", align 8 ; 8 uses
  %i.a = icmp eq i8 %1, 1
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %or.cond31 = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond31, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 2
  %i.e = and i8 %1, -2
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp eq i8 %1, 8
  %i.h = or i1 %i.g, %i.f
  %or.cond69 = select i1 %i.h, i1 %i.c, i1 false
  br i1 %or.cond69, label %bb.aw, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %1, -1
  %or.cond = icmp ult i8 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.al

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !335  ; 6 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !335  ; 7 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  br i1 %i.d, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ugt i64 %i.o, 9223372036854775792
  br i1 %i.p, label %.invoke, label %bb.f

.invoke:                                          ; preds = %bb.i, %bb.e, %bb.k
  %i.q = phi ptr [ @.str.417, %bb.k ], [ @.str.417, %bb.e ], [ @.str.418, %bb.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.q) #32
          to label %.cont unwind label %.loopexit.split-lp263, !inline_history !5147

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.not338 = icmp eq ptr %i.k, %i.l
  br i1 %.not338, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i unwind label %.loopexit.split-lp263, !inline_history !5147 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.s, ptr %2, align 8, !tbaa !370
  store ptr %i.s, ptr %i.t, align 8, !tbaa !369
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 2 uses
  store ptr %i.u, ptr %i.r, align 8, !tbaa !390
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i, %bb.f
  %i.v = phi ptr [ %i.u, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i ], [ null, %bb.f ]
  %i.w = phi ptr [ %i.s, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i ], [ null, %bb.f ] ; 3 uses
  %.not339 = icmp eq ptr %i.k, %i.l
  br i1 %.not339, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit
  %i.x = lshr exact i64 %i.o, 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i, %.lr.ph.i145
  %i.z = phi ptr [ %i.w, %.lr.ph.i145 ], [ %i.ay, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 6 uses
  %i.aa = phi ptr [ %i.v, %.lr.ph.i145 ], [ %i.az, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 5 uses
  %i.ab = phi ptr [ %i.w, %.lr.ph.i145 ], [ %i.ba, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 3 uses
  %.0.i12.i = phi i64 [ %i.x, %.lr.ph.i145 ], [ %i.bc, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 2 uses
  %.05.i11.i = phi ptr [ %i.l, %.lr.ph.i145 ], [ %i.bb, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ] ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !53
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !360
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !369
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.z to i64                ; 2 uses
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
  %.not.i.i178 = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i178)
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #29
          to label %.noexc183 unwind label %.loopexit262, !inline_history !5148 ; 6 uses

.noexc183:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %.05.i11.i, i64 16, i1 false), !tbaa.struct !53
  store i8 0, ptr %.05.i11.i, align 8, !tbaa !360
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !46
  %.not.i.i27.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i27.i, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i179

_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i179: ; preds = %.noexc183, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i179
  %.0.i.i29.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i179 ], [ %i.ao, %.noexc183 ] ; 2 uses
  %.09.i.i28.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i179 ], [ %i.z, %.noexc183 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5174)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i29.i, ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i28.i, i64 16, i1 false), !tbaa.struct !53, !alias.scope !5175
  store i8 0, ptr %.09.i.i28.i, align 8, !tbaa !360, !alias.scope !5176, !noalias !5174
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i28.i, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !46, !alias.scope !5176, !noalias !5174
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i28.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i29.i, i64 16 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i180, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i179, !llvm.loop !5152

_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i: ; preds = %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i179, %.noexc183
  %.0.i.i.lcssa.i = phi ptr [ %i.ao, %.noexc183 ], [ %i.at, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i179 ]
  %.0.i.i1830.i = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa.i, i64 16 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.z, null
  br i1 %.not.i16.i, label %.noexc146, label %bb.j

bb.j:                                             ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !390
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.aw) #30, !inline_history !5148
  br label %.noexc146

.noexc146:                                        ; preds = %bb.j, %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i
  store ptr %i.ao, ptr %2, align 8, !tbaa !370
  store ptr %.0.i.i1830.i, ptr %i.y, align 8, !tbaa !369
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  store ptr %i.ax, ptr %i.r, align 8, !tbaa !390
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i: ; preds = %.noexc146, %bb.h
  %i.ay = phi ptr [ %i.ao, %.noexc146 ], [ %i.z, %bb.h ] ; 2 uses
  %i.az = phi ptr [ %i.ax, %.noexc146 ], [ %i.aa, %bb.h ]
  %i.ba = phi ptr [ %.0.i.i1830.i, %.noexc146 ], [ %i.ad, %bb.h ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i11.i, i64 16
  %i.bc = add nsw i64 %.0.i12.i, -1
  %i.bd = icmp sgt i64 %.0.i12.i, 1
  br i1 %i.bd, label %bb.g, label %.loopexit, !llvm.loop !5153

.loopexit262:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp263:                            ; preds = %.invoke, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i148
  %lpad.loopexit.split-lp265 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.be = sdiv exact i64 %i.o, 48                 ; 2 uses
  %4 = icmp slt i64 %i.o, 0
  br i1 %4, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.not337 = icmp eq ptr %i.k, %i.l
  br i1 %.not337, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit162, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i148

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i148: ; preds = %bb.l
  %i.bg = shl nuw nsw i64 %i.be, 4
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #29
          to label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i159 unwind label %.loopexit.split-lp263, !inline_history !5147 ; 4 uses

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i159: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.i148
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bh, ptr %2, align 8, !tbaa !370
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !369
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.be ; 2 uses
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !390
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit162

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit162: ; preds = %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i159, %bb.l
  %i.bk = phi ptr [ %i.bj, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i159 ], [ null, %bb.l ]
  %i.bl = phi ptr [ %i.bh, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE13_M_deallocateEPSE_m.exit.i159 ], [ null, %bb.l ] ; 3 uses
  %.not86 = icmp eq ptr %i.l, %i.k
  br i1 %.not86, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE7reserveEm.exit162
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.r
  %i.bn = phi ptr [ %i.bl, %.lr.ph ], [ %i.cn, %bb.r ] ; 6 uses
  %i.bo = phi ptr [ %i.bk, %.lr.ph ], [ %i.co, %bb.r ] ; 5 uses
  %i.bp = phi ptr [ %i.bl, %.lr.ph ], [ %i.cp, %bb.r ] ; 3 uses
  %.sroa.063.087 = phi ptr [ %i.l, %.lr.ph ], [ %i.cq, %bb.r ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.063.087, i64 32 ; 4 uses
  %.not.i = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !53
  store i8 0, ptr %i.bq, align 8, !tbaa !360
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.063.087, i64 40
  store ptr null, ptr %i.br, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !369
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775792
  br i1 %i.bw, label %bb.p, label %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i184

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.418) #32
          to label %.noexc205 unwind label %.loopexit.split-lp268, !inline_history !5154

.noexc205:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i184: ; preds = %bb.o
  %i.bx = ashr exact i64 %i.bv, 4                 ; 3 uses
  %.sroa.speculated.i.i185 = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i185, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 576460752303423487)
  %i.cb = select i1 %i.bz, i64 576460752303423487, i64 %i.ca ; 3 uses
  %.not.i.i186 = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i186)
  %i.cc = shl nuw nsw i64 %i.cb, 4
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #29
          to label %.noexc206 unwind label %.loopexit267, !inline_history !5154 ; 6 uses

.noexc206:                                        ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i184
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !53
  store i8 0, ptr %i.bq, align 8, !tbaa !360
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.063.087, i64 40
  store ptr null, ptr %i.cf, align 8, !tbaa !46
  %.not.i.i27.i187 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i27.i187, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i201, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i188

_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i188: ; preds = %.noexc206, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i188
  %.0.i.i29.i189 = phi ptr [ %i.ci, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i188 ], [ %i.cd, %.noexc206 ] ; 2 uses
  %.09.i.i28.i190 = phi ptr [ %i.ch, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i188 ], [ %i.bn, %.noexc206 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5177)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i29.i189, ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i28.i190, i64 16, i1 false), !tbaa.struct !53, !alias.scope !5178
  store i8 0, ptr %.09.i.i28.i190, align 8, !tbaa !360, !alias.scope !5179, !noalias !5177
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i.i28.i190, i64 8
  store ptr null, ptr %i.cg, align 8, !tbaa !46, !alias.scope !5179, !noalias !5177
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i.i28.i190, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i29.i189, i64 16 ; 2 uses
  %.not.i.i.i191 = icmp eq ptr %i.ch, %i.bo
  br i1 %.not.i.i.i191, label %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i201, label %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i188, !llvm.loop !5152

_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i201: ; preds = %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i188, %.noexc206
  %.0.i.i.lcssa.i193 = phi ptr [ %i.cd, %.noexc206 ], [ %i.ci, %_ZSt19__relocate_object_aIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_EEvPT_PT0_RT1_.exit.i188 ]
  %.0.i.i1830.i194 = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa.i193, i64 16 ; 2 uses
  %.not.i16.i203 = icmp eq ptr %i.bn, null
  br i1 %.not.i16.i203, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit207, label %bb.q

bb.q:                                             ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i201
  %i.cj = load ptr, ptr %i.bf, align 8, !tbaa !390
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.cl) #30, !inline_history !5154
  br label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit207

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit207: ; preds = %_ZSt12__relocate_aIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESF_SaISE_EET0_T_SI_SH_RT1_.exit20.i201, %bb.q
  store ptr %i.cd, ptr %2, align 8, !tbaa !370
  store ptr %.0.i.i1830.i194, ptr %i.bm, align 8, !tbaa !369
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cb ; 2 uses
  store ptr %i.cm, ptr %i.bf, align 8, !tbaa !390
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit207, %bb.n
  %i.cn = phi ptr [ %i.cd, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit207 ], [ %i.bn, %bb.n ] ; 2 uses
  %i.co = phi ptr [ %i.cm, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit207 ], [ %i.bo, %bb.n ]
  %i.cp = phi ptr [ %.0.i.i1830.i194, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit207 ], [ %i.bs, %bb.n ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.063.087, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.k
  br i1 %.not, label %.loopexit, label %bb.m

.loopexit267:                                     ; preds = %_ZNKSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE12_M_check_lenEmPKc.exit.i184
  %lpad.loopexit269 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp268:                            ; preds = %bb.p
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit:                                        ; preds = %bb.r, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i
  %i.cr = phi ptr [ %i.ba, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ], [ %i.cp, %bb.r ] ; 2 uses
  %i.cs = phi ptr [ %i.ay, %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE9push_backEOSD_.exit.i.i ], [ %i.cn, %bb.r ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.cu = icmp eq ptr %i.cs, %i.cr
  br i1 %i.cu, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EED2Ev.exit, label %.lr.ph98

.lr.ph98:                                         ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph98, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit
  %i.cx = phi ptr [ %i.cr, %.lr.ph98 ], [ %i.gq, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !53
  store i8 0, ptr %i.cy, align 8, !tbaa !360
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -8
  store ptr null, ptr %i.cz, align 8, !tbaa !46
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !369 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -16 ; 7 uses
  store ptr %i.db, ptr %i.ct, align 8, !tbaa !369
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -8
  %i.dd = load i8, ptr %i.db, align 8, !tbaa !364
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i8 noundef zeroext %i.dd)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.t, !inline_history !5158

bb.t:                                             ; preds = %bb.s
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #28, !inline_history !5158
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.s
  %i.dg = load i8, ptr %3, align 8, !tbaa !360
  switch i8 %i.dg, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE15_M_erase_at_endEPSD_.exit [
    i8 2, label %bb.u
    i8 1, label %bb.aa
  ]

bb.u:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.dh = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !381 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !381 ; 2 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 4                 ; 2 uses
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph95, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN8nlohmann16json_abi_v3_12_010basic_jsonINS3_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEESt20back_insert_iteratorISJ_EET0_T_SO_SN_.exit

.lr.ph95:                                         ; preds = %bb.u, %.noexc47
  %i.dq = phi ptr [ %i.en, %.noexc47 ], [ %i.db, %bb.u ] ; 5 uses
  %.0.i.i4693 = phi i64 [ %i.ep, %.noexc47 ], [ %i.do, %bb.u ] ; 2 uses
  %.05.i.i92 = phi ptr [ %i.eo, %.noexc47 ], [ %i.di, %bb.u ] ; 7 uses
  %i.dr = load ptr, ptr %i.cw, align 8, !tbaa !390
  %.not.i51 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i51, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i92, i64 16, i1 false), !tbaa.struct !53
  store i8 0, ptr %.05.i.i92, align 8, !tbaa !360
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapES_S6_blmdSaNS9_14adl_serializerES_IhSaIhEEvEEESaISG_EE17_M_realloc_insertIJRS7_SF_EEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit.i.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !46
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #30, !inline_history !30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev.exit.i.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev.exit.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_.exit, label %.lr.ph.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESI_SaISH_EET0_T_SL_SK_RT1_.exit31
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.d, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_EE13_M_deallocateEPSH_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_.exit
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !391
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.ay) #30
  br label %_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_EE13_M_deallocateEPSH_m.exit

_ZNSt12_Vector_baseISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_EE13_M_deallocateEPSH_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_.exit, %bb.g
  store ptr %i.q, ptr %0, align 8, !tbaa !374
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !373
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.az, ptr %i.av, align 8, !tbaa !391
  ret void

bb.h:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.bb = call ptr @__cxa_begin_catch(ptr %i.ba) #27 ; 0 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS8_11ordered_mapESt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.r) #27
  br label %bb.k

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESI_SaISH_EET0_T_SL_SK_RT1_.exit, %.noexc.i.i
  %.0.ph = phi ptr [ %i.q, %.noexc.i.i ], [ %i.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESI_SaISH_EET0_T_SL_SK_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bd = call ptr @__cxa_begin_catch(ptr %i.bc) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %bb.h, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #30
  invoke void @__cxa_rethrow() #32
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.be

bb.m:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #28
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
  %.021 = phi ptr [ %i.w, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.01220 = phi ptr [ %i.v, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 5 uses
  store ptr %i.b, ptr %.021, align 8, !tbaa !89
  %i.c = load ptr, ptr %.01220, align 8, !tbaa !118 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01220, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.e, ptr %i.a, align 8, !tbaa !233
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %.021, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e, !inline_history !5199 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.021, align 8, !tbaa !118
  %i.h = load i64, ptr %i.a, align 8, !tbaa !233
  store i64 %i.h, ptr %i.b, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !46
  store i8 %i.j, ptr %i.i, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !233  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.021, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !91
  %i.m = load ptr, ptr %.021, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.01220, i64 32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit unwind label %bb.d, !inline_history !5200

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.021, align 8, !tbaa !118 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !46
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30, !inline_history !5200
  br label %.body

_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.01220, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.021, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5201

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.d ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_(ptr noundef %2, ptr noundef nonnull %.021)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #32
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aa

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE19_M_range_initializeIPKNS1_6detail8json_refISD_EEEEvT_SM_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json.252", align 8 ; 5 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 3 uses
  %4 = icmp slt i64 %i.c, 0
  br i1 %4, label %bb.b, label %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.430) #32
  unreachable

_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  store ptr null, ptr %0, align 8, !tbaa !370
  %i.e = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !390
  br label %_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES_IhSaIhEEvEESaISD_EE17_S_check_init_lenEmRKSE_.exit
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #29 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !370
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !390
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.e
  %.016.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !363, !noalias !5205 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.01215.i.i.i.i, i64 16, i1 false), !tbaa.struct !53
  store i8 0, ptr %.01215.i.i.i.i, align 8, !tbaa !360, !noalias !5205
  %i.n = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !46, !noalias !5205
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5204

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEEEvT_SG_(ptr noundef nonnull %i.h, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #32
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
  call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEPSG_SG_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonINS1_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE11_M_allocateEm.exit.thread ], [ %i.p, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.w, align 8, !tbaa !369
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINSB_11ordered_mapESt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEESE_ISJ_SaISJ_EEEEPSJ_ET0_T_SR_SQ_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit
  %.019 = phi ptr [ %i.w, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.sroa.08.018 = phi ptr [ %i.v, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 5 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !89
  %i.c = load ptr, ptr %.sroa.08.018, align 8, !tbaa !118 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.e, ptr %i.a, align 8, !tbaa !233
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %.019, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e, !inline_history !5206 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.019, align 8, !tbaa !118
  %i.h = load i64, ptr %i.a, align 8, !tbaa !233
  store i64 %i.h, ptr %i.b, align 8, !tbaa !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !46
  store i8 %i.j, ptr %i.i, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !233  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !91
  %i.m = load ptr, ptr %.019, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit unwind label %bb.d, !inline_history !5206

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.019, align 8, !tbaa !118 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !46
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30, !inline_history !5206
  br label %.body

_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.019, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5207

bb.e:                                             ; preds = %.noexc.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.q, %bb.d ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEEvT_SJ_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #32
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %_ZSt10_ConstructISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonINS9_11ordered_mapESt6vectorS6_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEEJRKSH_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aa

bb.i:                                             ; preds = %bb.g
end_hunk_3
