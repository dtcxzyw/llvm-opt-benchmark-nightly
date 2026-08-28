Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/GCBase?download=true
inline.NumInlined: 1712
inline.NumDeleted: 796
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_:bb.a
  %.not.i.i.i11 = icmp ne ptr %.sroa.021.2.i7.i, null
  %i.dg = icmp eq ptr %.sroa.12.2.i8.i, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i11, i1 true, i1 %i.dg
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !90 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %i.di, i64 %i.ag) ; 2 uses
  %i.dj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i12, 0
  br i1 %i.dj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i17, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i13: ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !89
  %i.dm = tail call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.dl, i64 noundef %.sroa.speculated.i.i.i.i.i.i12) #31 ; 2 uses
  %.not.i.i.i.i.i.i14 = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i17, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i15

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i17: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i13, %bb.o
  %i.dn = sub i64 %i.ag, %i.di
  %spec.select7.i.i.i.i.i.i.i18 = tail call i64 @llvm.smax.i64(i64 %i.dn, i64 -2147483648)
  %.08.i.i.i.i.i.i.i19 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i18, i64 2147483647)
  %.0.i6.i.i.i.i.i.i20 = trunc nsw i64 %.08.i.i.i.i.i.i.i19 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i15

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i15: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i17, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i13
  %.0.i.i.i.i.i.i16 = phi i32 [ %i.dm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i13 ], [ %.0.i6.i.i.i.i.i.i20, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i17 ]
  %i.do = icmp slt i32 %.0.i.i.i.i.i.i16, 0
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i15, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i
  %i.dp = phi i1 [ %i.do, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i15 ], [ true, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dp, ptr noundef nonnull %i.v, ptr noundef nonnull %.sroa.12.2.i8.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #31
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !285
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !285
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread9.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45.i.i
  %.sroa.01.0.ph.i = phi ptr [ %.sroa.021.2.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.i ], [ %.08.lcssa.i.i.i29, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45.i.i ], [ %.sroa.01.0.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i ]
  %i.dt = icmp eq ptr %i.af, %i.x
  br i1 %i.dt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread9.i
  %i.du = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.du)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread9.i
  %i.dv = load i64, ptr %i.x, align 8, !tbaa !64
  %i.dw = add i64 %i.dv, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.dw) #32, !inline_history !326
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 128) #32, !inline_history !327
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i, %bb.p, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.027.0 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %i.v, %bb.p ], [ %.sroa.01.0.ph.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 64
  ret ptr %i.dx
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef %0) unnamed_addr #1 align 2 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit
  %.02 = phi ptr [ %.0.val, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit ], [ %0, %bb.a ] ; 6 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val6 = load ptr, ptr %i.a, align 8, !tbaa !324
  tail call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef %.0.val6)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val = load ptr, ptr %i.b, align 8, !tbaa !328 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02, i64 32
  %i.d = getelementptr i8, ptr %.02, i64 96
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !282
  tail call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef %.val.i.i.i)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph
  %i.h = load i64, ptr %i.f, align 8, !tbaa !64
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32, !inline_history !329
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 128) #32, !inline_history !330
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !331

._crit_edge:                                      ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor8acceptHVERKNS0_11HermesValueERZNS1_20sizeDiagnosticCensusEmE14DiagnosticStatm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef range(i64 4, 9) %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load <2 x i64>, ptr %2, align 8, !tbaa !91
  %i.b = insertelement <2 x i64> <i64 1, i64 poison>, i64 %3, i64 1
  %i.c = add <2 x i64> %i.a, %i.b
  store <2 x i64> %i.c, ptr %2, align 8, !tbaa !91
  %i.d = load i64, ptr %1, align 8                ; 5 uses
  %.mask.i = and i64 %i.d, -140737488355328       ; 3 uses
  %i.e = icmp eq i64 %.mask.i, -1407374883553280
  %i.f = bitcast i64 %i.d to double               ; 9 uses
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %i.d, -1970324836974592
  br i1 %i.g, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = tail call { double, double } @llvm.modf.f64(double %i.f)
  %i.i = extractvalue { double, double } %i.h, 0
  %i.j = fcmp oeq double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !257
  %i.m = sitofp i64 %i.l to double
  %i.n = fcmp ult double %i.f, %i.m
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !274
  %i.q = sitofp i64 %i.p to double
  %i.r = fcmp ugt double %i.f, %i.q
  br i1 %i.r, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !275
  %i.u = sitofp i64 %i.t to double
  %i.v = fcmp ult double %i.f, %i.u
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !276
  %i.y = sitofp i64 %i.x to double
  %i.z = fcmp ugt double %i.f, %i.y
  br i1 %i.z, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !277
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = fcmp ult double %i.f, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !278
  %i.ag = sitofp i64 %i.af to double
  %i.ah = fcmp ugt double %i.f, %i.ag
  br i1 %i.ah, label %bb.j, label %._crit_edge.i.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !279
  %i.ak = sitofp i64 %i.aj to double
  %i.al = fcmp ult double %i.f, %i.ak
  br i1 %i.al, label %._crit_edge.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load i64, ptr %i.am, align 8, !tbaa !280
  %i.ao = sitofp i64 %i.an to double
  %i.ap = fcmp ugt double %i.f, %i.ao             ; 2 uses
  %spec.select = select i1 %i.ap, ptr @.str.67, ptr @.str.71
  %spec.select104 = select i1 %i.ap, i64 7, i64 5
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %bb.i, %bb.g, %bb.e, %bb.j, %bb.c
  %.sroa.085.0 = phi ptr [ @.str.67, %bb.j ], [ %spec.select, %bb.k ], [ @.str.70, %bb.i ], [ @.str.69, %bb.g ], [ @.str.68, %bb.e ], [ @.str.67, %bb.c ] ; 2 uses
  %.sroa.9.0 = phi i64 [ 7, %bb.j ], [ %spec.select104, %bb.k ], [ 5, %bb.i ], [ 5, %bb.g ], [ 4, %bb.e ], [ 7, %bb.c ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ar, ptr noundef nonnull align 1 dereferenceable(6) @.str.66, i64 6, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.as, align 8, !tbaa !90
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.at, align 2, !tbaa !64
  %i.au = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !88, !alias.scope !332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.085.0, i64 %.sroa.9.0, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.9.0, ptr %i.ax, align 8, !tbaa !90, !alias.scope !332
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.9.0
  store i8 0, ptr %i.ay, align 1, !tbaa !64
  %i.az = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !314
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !314
  %i.bc = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.aw
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !64
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.bg = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ar
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.ar, align 8, !tbaa !64
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bk, ptr %6, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bk, ptr noundef nonnull align 1 dereferenceable(6) @.str.66, i64 6, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.bl, align 8, !tbaa !90
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.bm, align 2, !tbaa !64
  %i.bn = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bp, ptr %7, align 8, !tbaa !88, !alias.scope !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.085.0, i64 %.sroa.9.0, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.9.0, ptr %i.bq, align 8, !tbaa !90, !alias.scope !337
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.9.0
  store i8 0, ptr %i.br, align 1, !tbaa !64
  %i.bs = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !315
  %i.bv = add i64 %i.bu, %3
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !315
  %i.bw = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bp
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !64
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ca = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bk
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.cc = load i64, ptr %i.bk, align 8, !tbaa !64
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51

bb.l:                                             ; preds = %bb.b
  %.mask.i43 = and i64 %i.d, -281474976710656     ; 2 uses
  %i.ce = icmp eq i64 %.mask.i43, -844424930131968
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = icmp eq i64 %.mask.i, -1266637395197952
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = icmp samesign ugt i64 %i.d, -281474976710657
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i64 %.mask.i, label %bb.r [
    i64 -1548112371908608, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51
    i64 -1688849860263936, label %bb.p
    i64 -1970324836974592, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51

bb.q:                                             ; preds = %bb.o
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51

bb.r:                                             ; preds = %bb.o
  %i.ch = icmp eq i64 %.mask.i43, -1125899906842624
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ci, ptr %8, align 8, !tbaa !88, !alias.scope !342
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !90, !alias.scope !342
  store i8 0, ptr %i.ci, align 8, !tbaa !64, !alias.scope !342
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51: ; preds = %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.p, %bb.q
  %.sroa.14.0.ph = phi i64 [ 4, %bb.o ], [ 5, %bb.q ], [ 9, %bb.p ], [ 13, %bb.n ], [ 6, %bb.m ], [ 13, %bb.l ], [ 4, %bb.a ], [ 6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ 11, %bb.r ] ; 4 uses
  %.sroa.092.0.ph = phi ptr [ @.str.75, %bb.o ], [ @.str.77, %bb.q ], [ @.str.76, %bb.p ], [ @.str.74, %bb.n ], [ @.str.73, %bb.m ], [ @.str.72, %bb.l ], [ @.str.65, %bb.a ], [ @.str.66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ @.str.78, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ck, ptr %8, align 8, !tbaa !88, !alias.scope !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ck, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.092.0.ph, i64 %.sroa.14.0.ph, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.14.0.ph, ptr %i.cl, align 8, !tbaa !90, !alias.scope !342
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.14.0.ph
  store i8 0, ptr %i.cm, align 1, !tbaa !64
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit52

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit52: ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51
  %.not.i.i49102 = phi i1 [ true, %bb.s ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51 ]
  %.sroa.092.0101 = phi ptr [ null, %bb.s ], [ %.sroa.092.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51 ] ; 2 uses
  %.sroa.14.098 = phi i64 [ 0, %bb.s ], [ %.sroa.14.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51 ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.co = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %8) ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !314
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !314
  %i.cr = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit52
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !64
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.cw, ptr %9, align 8, !tbaa !88, !alias.scope !347
  br i1 %.not.i.i49102, label %bb.t, label %._crit_edge.i.i.i.i57

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !90, !alias.scope !347
  store i8 0, ptr %i.cw, align 8, !tbaa !64, !alias.scope !347
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit59

._crit_edge.i.i.i.i57:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  switch i64 %.sroa.14.098, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i58
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i57
  %i.cy = load i8, ptr %.sroa.092.0101, align 1, !tbaa !64
  store i8 %i.cy, ptr %i.cw, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i58

bb.v:                                             ; preds = %._crit_edge.i.i.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr nonnull align 1 %.sroa.092.0101, i64 %.sroa.14.098, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i58: ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i57
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.14.098, ptr %i.cz, align 8, !tbaa !90, !alias.scope !347
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.14.098
end_hunk_0
