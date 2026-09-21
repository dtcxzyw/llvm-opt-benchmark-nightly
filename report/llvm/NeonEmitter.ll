Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NeonEmitter?download=true
inline.NumInlined: 5131
inline.NumDeleted: 1927
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_18VariableESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_:bb.a

bb.c:                                             ; preds = %.critedge
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ac, i1 false)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESM_IJEEEEERSG_DpOT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.critedge
  store ptr %i.x, ptr %i.v, align 8, !tbaa !40
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !39
  store i64 %i.ad, ptr %i.w, align 8, !tbaa !39
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !tbaa !38
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESM_IJEEEEERSG_DpOT_.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESM_IJEEEEERSG_DpOT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.ae = phi ptr [ %i.w, %bb.c ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ] ; 4 uses
  %i.af = phi i64 [ %i.aa, %bb.c ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !38
  store ptr %i.y, ptr %1, align 8, !tbaa !40
  store i64 0, ptr %i.a, align 8, !tbaa !38
  store i8 0, ptr %i.y, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !35, !alias.scope !1284
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store i64 0, ptr %i.aj, align 8, !tbaa !38, !alias.scope !1284
  store i8 0, ptr %i.ai, align 8, !tbaa !39, !alias.scope !1284
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  store i32 0, ptr %i.al, align 4, !tbaa !142, !alias.scope !1284
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  store i32 0, ptr %i.am, align 8, !tbaa !140, !alias.scope !1284
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 116
  store i32 0, ptr %i.an, align 4, !tbaa !146, !alias.scope !1284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ak, i8 0, i64 9, i1 false), !alias.scope !1284
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store i64 0, ptr %i.aq, align 8, !tbaa !38
  store i8 0, ptr %i.ap, align 8, !tbaa !39
  %i.ar = tail call fastcc { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i26, ptr %i.ae, i64 %i.af) ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1      ; 5 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_18VariableD2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESM_IJEEEEERSG_DpOT_.exit.i
  %.not.i.i.i10 = icmp ne ptr %i.as, null
  %i.au = icmp eq ptr %i.at, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i10, i1 true, i1 %i.au
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i11 = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.af) ; 2 uses
  %i.ax = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i11, 0
  br i1 %i.ax, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i12

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i12: ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !40
  %i.ba = tail call i32 @memcmp(ptr noundef %i.ae, ptr noundef %i.az, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i11) #27 ; 2 uses
  %.not.i.i.i.i.i.i.i13 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i13, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i16, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i14

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i16: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i12, %bb.e
  %i.bb = sub i64 %i.af, %i.aw
  %spec.select7.i.i.i.i.i.i.i.i17 = tail call i64 @llvm.smax.i64(i64 %i.bb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i18 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i17, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i19 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i18 to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i14

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i14: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i16, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i12
  %.0.i.i.i.i.i.i.i15 = phi i32 [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i12 ], [ %.0.i6.i.i.i.i.i.i.i19, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i16 ]
  %i.bc = icmp slt i32 %.0.i.i.i.i.i.i.i15, 0
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i14, %bb.d
  %i.bd = phi i1 [ %i.bc, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i14 ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bd, ptr noundef nonnull %i.u, ptr noundef nonnull %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #27
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !75
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !75
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_.exit

_ZN12_GLOBAL__N_18VariableD2Ev.exit.i.i.i.i.i:    ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESM_IJEEEEERSG_DpOT_.exit.i
  %i.bh = icmp eq ptr %i.ae, %i.w
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_18VariableD2Ev.exit.i.i.i.i.i
  %i.bi = icmp ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.bi)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i10.i: ; preds = %_ZN12_GLOBAL__N_18VariableD2Ev.exit.i.i.i.i.i
  %i.bj = load i64, ptr %i.w, align 8, !tbaa !39
  %i.bk = add i64 %i.bj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.bk) #28
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 152) #28
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i, %.thread.i, %_ZNKSt4lessIvEclIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSB_OSC_.exit
  %.sroa.024.0 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIvEclIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSB_OSC_.exit ], [ %i.u, %.thread.i ], [ %i.as, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N12_GLOBAL__N_18VariableEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 64
  ret ptr %i.bl
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_19Intrinsic15getInstTypeCodeB5cxx11ENS_4TypeENS_9ClassKindE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1008) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = icmp eq i32 %3, 5                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 4
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = load i32, ptr %i.h, align 1
  %i.j = icmp ne i32 %i.i, 1852794222
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !38
  store i8 0, ptr %i.m, align 8, !tbaa !39
  br label %bb.n

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.p = load i32, ptr %i.o, align 8, !tbaa !124
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %._crit_edge.i.i13, label %bb.b

._crit_edge.i.i13:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !38
  store i8 0, ptr %i.r, align 8, !tbaa !39
  br label %bb.n

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val11 = load i32, ptr %i.t, align 8, !tbaa !141 ; 3 uses
  switch i32 %.val11, label %bb.c [
    i32 5, label %._crit_edge.i.i15
    i32 6, label %._crit_edge.i.i17
    i32 4, label %bb.e
  ]

._crit_edge.i.i15:                                ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !35
  store i32 909207138, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.v, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.w, align 4, !tbaa !39
  br label %bb.n

._crit_edge.i.i17:                                ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.x, ptr noundef nonnull align 1 dereferenceable(3) @.str.125, i64 3, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.y, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.z, align 1, !tbaa !39
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.aa = and i32 %.val11, -2
  %spec.select.i = icmp eq i32 %i.aa, 2
  br i1 %spec.select.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i32 %.val11, 2
  %i.ac = select i1 %i.ab, i8 115, i8 117
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i8 [ 112, %bb.b ], [ %i.ac, %bb.d ], [ 102, %bb.c ] ; 5 uses
  %i.ad = icmp eq i32 %3, 1
  br i1 %i.ad, label %bb.f, label %5

bb.f:                                             ; preds = %bb.e
  switch i8 %.0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit [
    i8 115, label %bb.g
    i8 117, label %bb.g
    i8 112, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

5:                                                ; preds = %bb.e
  br i1 %i.c, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.h:                                             ; preds = %5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.ag = icmp eq i64 %i.af, 4
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = icmp ne i32 %i.aj, 1852794222
  %i.al = zext i1 %i.ak to i32
  %bcmp.i19.fr = freeze i32 %i.al
  %i.am = icmp eq i32 %bcmp.i19.fr, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !38
  store i8 0, ptr %i.an, align 8, !tbaa !39
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %bb.h, %bb.f, %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %5
  %.2.ph = phi i8 [ %.0, %bb.f ], [ %.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %.0, %5 ], [ 105, %bb.g ], [ %.0, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 %.2.ph, ptr %i.ap, align 8, !tbaa !39
  store i64 1, ptr %i.aq, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.ar, align 1, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.as = phi ptr [ %i.ao, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val12 = load i32, ptr %i.at, align 8, !tbaa !140 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !1287
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 21 ; 2 uses
  %i.av = icmp eq i32 %.val12, 0
  br i1 %i.av, label %.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.aw = zext i32 %.val12 to i64
  br label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i8 48, ptr %i.ax, align 4, !tbaa !39, !noalias !1287
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.111.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.au, %.lr.ph.i.preheader ]
  %.0810.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %i.aw, %.lr.ph.i.preheader ] ; 3 uses
  %i.ay = urem i64 %.0810.i, 10
  %i.az = trunc nuw nsw i64 %i.ay to i8
  %i.ba = or disjoint i8 %i.az, 48
  %i.bb = getelementptr inbounds i8, ptr %.111.i, i64 -1 ; 3 uses
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !39, !noalias !1287
  %i.bc = udiv i64 %.0810.i, 10
  %.not.i = icmp samesign ult i64 %.0810.i, 10
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread.i
  %.1.lcssa.i = phi ptr [ %i.ax, %.thread.i ], [ %i.bb, %.lr.ph.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.bd, ptr %4, align 8, !tbaa !35, !alias.scope !1287
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.be, align 8, !tbaa !38, !alias.scope !1287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !1287
  %i.bf = ptrtoint ptr %i.au to i64
  %i.bg = ptrtoint ptr %.1.lcssa.i to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 4 uses
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !68, !noalias !1287
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %bb.j, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #27 ; 2 uses
  store ptr %i.bj, ptr %4, align 8, !tbaa !40, !alias.scope !1287
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !68, !noalias !1287
  store i64 %i.bk, ptr %i.bd, align 8, !tbaa !39, !alias.scope !1287
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.j, %._crit_edge.i
  %i.bl = phi ptr [ %i.bj, %bb.j ], [ %i.bd, %._crit_edge.i ] ; 2 uses
  switch i64 %i.bh, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZN4llvm6utostrB5cxx11Emb.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = load i8, ptr %.1.lcssa.i, align 1, !tbaa !39, !noalias !1287
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !39
  br label %_ZN4llvm6utostrB5cxx11Emb.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr nonnull align 1 %.1.lcssa.i, i64 %i.bh, i1 false)
  br label %_ZN4llvm6utostrB5cxx11Emb.exit

_ZN4llvm6utostrB5cxx11Emb.exit:                   ; preds = %._crit_edge.i.i.i, %bb.k, %bb.l
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !68, !noalias !1287 ; 2 uses
  store i64 %i.bn, ptr %i.be, align 8, !tbaa !38, !alias.scope !1287
  %i.bo = load ptr, ptr %4, align 8, !tbaa !40, !alias.scope !1287
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !1287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !1287
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !38 ; 2 uses
  %i.br = load i64, ptr %i.as, align 8, !tbaa !38
  %i.bs = sub i64 4611686018427387903, %i.br
  %i.bt = icmp ult i64 %i.bs, %i.bq
  br i1 %i.bt, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.m:                                             ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit
  %i.bu = load ptr, ptr %4, align 8, !tbaa !40
  %i.bv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bu, i64 noundef %i.bq) #27 ; 0 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bd
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.by = load i64, ptr %i.bd, align 8, !tbaa !39
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.i.i17, %._crit_edge.i.i15, %._crit_edge.i.i13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !40
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14TypeeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call fastcc void @_ZNK12_GLOBAL__N_14Type3strB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call fastcc void @_ZNK12_GLOBAL__N_14Type3strB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %3, align 8, !tbaa !40
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  %.pre5 = load ptr, ptr %3, align 8, !tbaa !40   ; 3 uses
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !40
  %bcmp.i = call i32 @bcmp(ptr %i.g, ptr %.pre5, i64 %i.b)
  %i.h = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.b, %bb.c
  %i.i = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre5, %bb.c ], [ %.pre5, %bb.b ] ; 2 uses
  %i.j = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.h, %bb.c ], [ true, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.m = icmp ult i64 %i.d, 16
  call void @llvm.assume(i1 %i.m)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.n = load i64, ptr %i.k, align 8, !tbaa !39
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.o) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.p = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
end_hunk_0
