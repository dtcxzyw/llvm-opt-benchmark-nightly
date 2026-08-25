Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testCMExtAlgorithm?download=true
inline.NumInlined: 1469
inline.NumDeleted: 683
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_:bb.a

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !35
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !275

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9transformISt23_Rb_tree_const_iteratorISt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt20back_insert_iteratorISt6vectorIS8_SaIS8_EEEZN2cm6ranges5views6valuesISt3mapIiS8_St4lessIiESaIS9_EETnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISQ_EE5valueEiE4typeELi0EEESC_INSQ_11mapped_typeESaIST_EERKSQ_EUlRKS9_E_ET0_SQ_SQ_S11_T1_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %.not9 = icmp eq ptr %0, %1
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.05.010 = phi ptr [ %0, %.lr.ph ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 40
  store ptr %i.b, ptr %3, align 8, !tbaa !117, !alias.scope !276
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !135, !noalias !276 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !120, !noalias !276 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !276
  store i64 %i.i, ptr %i.a, align 8, !tbaa !235, !noalias !276
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !135, !alias.scope !276
  %i.l = load i64, ptr %i.a, align 8, !tbaa !235, !noalias !276
  store i64 %i.l, ptr %i.b, align 8, !tbaa !35, !alias.scope !276
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZZN2cm6ranges5views6valuesISt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EEETnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISI_EE5valueEiE4typeELi0EEESt6vectorINSI_11mapped_typeESaISM_EERKSI_ENKUlRKSE_E_clB5cxx11ESS_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !35
  store i8 %i.n, ptr %i.m, align 1, !tbaa !35
  br label %_ZZN2cm6ranges5views6valuesISt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EEETnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISI_EE5valueEiE4typeELi0EEESt6vectorINSI_11mapped_typeESaISM_EERKSI_ENKUlRKSE_E_clB5cxx11ESS_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZZN2cm6ranges5views6valuesISt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EEETnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISI_EE5valueEiE4typeELi0EEESt6vectorINSI_11mapped_typeESaISM_EERKSI_ENKUlRKSE_E_clB5cxx11ESS_.exit

_ZZN2cm6ranges5views6valuesISt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EEETnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISI_EE5valueEiE4typeELi0EEESt6vectorINSI_11mapped_typeESaISM_EERKSI_ENKUlRKSE_E_clB5cxx11ESS_.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !235, !noalias !276 ; 2 uses
  store i64 %i.o, ptr %i.c, align 8, !tbaa !120, !alias.scope !276
  %i.p = load ptr, ptr %3, align 8, !tbaa !135, !alias.scope !276
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !276
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !140  ; 6 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !139
  %.not.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZZN2cm6ranges5views6valuesISt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EEETnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISI_EE5valueEiE4typeELi0EEESt6vectorINSI_11mapped_typeESaISM_EERKSI_ENKUlRKSE_E_clB5cxx11ESS_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !117
  %i.u = load ptr, ptr %3, align 8, !tbaa !135    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.c, align 8, !tbaa !120  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.y, i1 false)
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.u, ptr %i.r, align 8, !tbaa !135
  %i.z = load i64, ptr %i.b, align 8, !tbaa !35
  store i64 %i.z, ptr %i.t, align 8, !tbaa !35
  %.pre = load i64, ptr %i.c, align 8, !tbaa !120
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.w, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !120
  store ptr %i.b, ptr %3, align 8, !tbaa !135
  store i64 0, ptr %i.c, align 8, !tbaa !120
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !140
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !140
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %_ZZN2cm6ranges5views6valuesISt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EEETnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISI_EE5valueEiE4typeELi0EEESt6vectorINSI_11mapped_typeESaISM_EERKSI_ENKUlRKSE_E_clB5cxx11ESS_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit unwind label %bb.h

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit: ; preds = %bb.g
  %.pre11 = load ptr, ptr %3, align 8, !tbaa !135 ; 2 uses
  %i.ae = icmp eq ptr %.pre11, %i.b
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit
  %i.af = load i64, ptr %i.b, align 8, !tbaa !35
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre11, i64 noundef %i.ag) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ah = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.010) #23 ; 2 uses
  %.not = icmp eq ptr %i.ah, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !279

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %3, align 8, !tbaa !135   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.h
  %i.al = load i64, ptr %i.b, align 8, !tbaa !35
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.ai

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN2cm6ranges5views6valuesISt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiEESaISB_EETnNSt9enable_ifIXaasr2cm21is_sequence_containerIT_EE5valuesr2cm8is_tupleILi2ENSF_10value_typeEEE5valueEiE4typeELi0EEES3_INSt13tuple_elementILm1ESG_E4typeESaISL_EERKSF_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !180    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40                  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.g, 2
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #20
          to label %.noexc8 unwind label %.loopexit.split-lp ; 4 uses

.noexc8:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !37
  store ptr %i.k, ptr %i.l, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.g ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !39
  %.pre = load ptr, ptr %1, align 8, !tbaa !187
  %.pre32 = load ptr, ptr %i.a, align 8, !tbaa !187
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc8
  %.pre8.i = phi ptr [ null, %bb.c ], [ %i.m, %.noexc8 ]
  %.promoted13 = phi ptr [ null, %bb.c ], [ %i.k, %.noexc8 ] ; 2 uses
  %i.n = phi ptr [ %i.b, %bb.c ], [ %.pre32, %.noexc8 ] ; 2 uses
  %i.o = phi ptr [ %i.c, %bb.c ], [ %.pre, %.noexc8 ] ; 2 uses
  %.not6.i = icmp eq ptr %i.o, %i.n
  br i1 %.not6.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiEESt6vectorIS9_SaIS9_EEEESt20back_insert_iteratorISC_IiSaIiEEEZN2cm6ranges5views6valuesISE_TnNSt9enable_ifIXaasr2cm21is_sequence_containerIT_EE5valuesr2cm8is_tupleILi2ENSP_10value_typeEEE5valueEiE4typeELi0EEESC_INSt13tuple_elementILm1ESQ_E4typeESaISV_EERKSP_EUlRSA_E_ET0_SP_SP_S12_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i, %.lr.ph.i
  %i.q = phi ptr [ %.promoted13, %.lr.ph.i ], [ %i.aj, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 7 uses
  %i.r = phi ptr [ %.pre8.i, %.lr.ph.i ], [ %i.ak, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 5 uses
  %i.s = phi ptr [ %.promoted13, %.lr.ph.i ], [ %.pn, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 3 uses
  %.sroa.03.07.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.al, %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.u, ptr %i.s, align 4, !tbaa !42
  %2 = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %2, ptr %i.p, align 8, !tbaa !40
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w                       ; 6 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775804
  br i1 %i.y, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.g
  %i.z = ashr exact i64 %i.x, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 2305843009213693951)
  %i.ad = select i1 %i.ab, i64 2305843009213693951, i64 %i.ac ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #20
          to label %.noexc10 unwind label %.loopexit ; 5 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store i32 %i.u, ptr %i.ag, align 4, !tbaa !42
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

bb.i:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 4 %i.q, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.i, %.noexc10
  %3 = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.x) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.af, ptr %0, align 8, !tbaa !37
  store ptr %3, ptr %i.p, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ad ; 2 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !39
  br label %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i

_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, %bb.f
  %i.aj = phi ptr [ %i.q, %bb.f ], [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ]
  %i.ak = phi ptr [ %i.r, %bb.f ], [ %i.ai, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ]
  %.pn = phi ptr [ %2, %bb.f ], [ %3, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiEESt6vectorIS9_SaIS9_EEEESt20back_insert_iteratorISC_IiSaIiEEEZN2cm6ranges5views6valuesISE_TnNSt9enable_ifIXaasr2cm21is_sequence_containerIT_EE5valuesr2cm8is_tupleILi2ENSP_10value_typeEEE5valueEiE4typeELi0EEESC_INSt13tuple_elementILm1ESQ_E4typeESaISV_EERKSP_EUlRSA_E_ET0_SP_SP_S12_T1_.exit, label %bb.e, !llvm.loop !280

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.b, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.h
  %i.am = phi ptr [ null, %bb.b ], [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %i.r, %bb.h ]
  %i.an = phi ptr [ null, %bb.b ], [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %i.q, %bb.h ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.ao = phi ptr [ %i.r, %.loopexit ], [ %i.am, %.loopexit.split-lp ]
  %i.ap = phi ptr [ %i.q, %.loopexit ], [ %i.an, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %lpad.phi

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiEESt6vectorIS9_SaIS9_EEEESt20back_insert_iteratorISC_IiSaIiEEEZN2cm6ranges5views6valuesISE_TnNSt9enable_ifIXaasr2cm21is_sequence_containerIT_EE5valuesr2cm8is_tupleILi2ENSP_10value_typeEEE5valueEiE4typeELi0EEESC_INSt13tuple_elementILm1ESQ_E4typeESaISV_EERKSP_EUlRSA_E_ET0_SP_SP_S12_T1_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSEOi.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { noreturn }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !26, i64 240}
!12 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !13, i64 0, !23, i64 216, !7, i64 224, !24, i64 225, !25, i64 232, !26, i64 240, !27, i64 248, !28, i64 256}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !7, i64 64, !6, i64 192, !20, i64 200, !21, i64 208}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = !{!"p1 _ZTSSo", !18, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!26 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!27 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!28 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!29 = !{!30, !7, i64 56}
!30 = !{!"_ZTSSt5ctypeIcE", !31, i64 0, !32, i64 16, !24, i64 24, !33, i64 32, !33, i64 40, !34, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!31 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!32 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!33 = !{!"p1 int", !18, i64 0}
!34 = !{!"p1 short", !18, i64 0}
!35 = !{!7, !7, i64 0}
!36 = distinct !{null, null, null, null, null}
!37 = !{!38, !33, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!39 = !{!38, !33, i64 16}
!40 = !{!38, !33, i64 8}
!41 = !{!33, !33, i64 0}
!42 = !{!6, !6, i64 0}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIiSt14default_deleteIiEESaIS3_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!45 = !{!"p1 _ZTSSt10unique_ptrIiSt14default_deleteIiEE", !18, i64 0}
!46 = !{!44, !45, i64 8}
!47 = !{!44, !45, i64 16}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!50 = distinct !{!50, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!55 = distinct !{!55, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_"}
!56 = !{!57, !58}
!57 = distinct !{!57, !55, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 1:It1"}
!58 = distinct !{!58, !55, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!59 = !{}
!60 = !{!58}
!61 = !{!62, !54}
!62 = distinct !{!62, !55, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 0:It1"}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!67 = distinct !{!67, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!70 = !{!69, !71}
!71 = distinct !{!71, !72}
!72 = distinct !{!72, !"LVerDomain"}
!73 = !{!66, !74}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !64, !76, !77}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = distinct !{!78, !64, !76}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!81 = distinct !{!81, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!84 = !{!83, !85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!80, !88}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !64, !76, !77}
!90 = distinct !{!90, !64, !76}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!93 = distinct !{!93, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!96 = !{!95, !97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!92, !100}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !64, !76, !77}
!102 = distinct !{!102, !64, !76}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!105 = distinct !{!105, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!110 = distinct !{!110, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_"}
!111 = !{!112, !113}
!112 = distinct !{!112, !110, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 1:It1"}
!113 = distinct !{!113, !110, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!114 = !{!113}
!115 = !{!116, !109}
!116 = distinct !{!116, !110, !"_ZSt19__relocate_object_aISt10unique_ptrIiSt14default_deleteIiEES3_SaIS3_EEvPT_PT0_RT1_: argument 0:It1"}
!117 = !{!118, !119, i64 0}
!118 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !119, i64 0}
!119 = !{!"p1 omnipotent char", !18, i64 0}
!120 = !{!121, !14, i64 8}
!121 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !118, i64 0, !14, i64 8, !7, i64 16}
!122 = !{!123, !6, i64 32}
!123 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !121, i64 0, !6, i64 32}
!124 = !{!125, !127, i64 0}
!125 = !{!"_ZTSSt15_Rb_tree_header", !126, i64 0, !14, i64 32}
!126 = !{!"_ZTSSt18_Rb_tree_node_base", !127, i64 0, !128, i64 8, !128, i64 16, !128, i64 24}
!127 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!128 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!129 = !{!125, !128, i64 8}
!130 = !{!125, !128, i64 16}
!131 = !{!125, !128, i64 24}
!132 = !{!125, !14, i64 32}
!133 = !{!134, !134, i64 0}
!134 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !18, i64 0}
!135 = !{!121, !119, i64 0}
!136 = !{!137, !138, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!138 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!139 = !{!137, !138, i64 16}
!140 = !{!137, !138, i64 8}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN2cm4keysISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS7_ESaISt4pairIKS7_iEEETnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISG_EE5valueEiE4typeELi0EEESt6vectorINSG_8key_typeESaISK_EERKSG_: argument 0"}
!143 = distinct !{!143, !"_ZN2cm4keysISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS7_ESaISt4pairIKS7_iEEETnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISG_EE5valueEiE4typeELi0EEESt6vectorINSG_8key_typeESaISK_EERKSG_"}
end_hunk_0
