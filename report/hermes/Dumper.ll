inline.NumInlined: 1690
inline.NumDeleted: 895
begin_hunk_0_@_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEEixERS6_:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !68    ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %bb.a, %.lr.ph.i.i.i.a
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i.a ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i.a ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = icmp ult ptr %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
end_hunk_0
begin_hunk_1_@_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEEixERS6_:bb.a
bb.b:                                             ; preds = %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = icmp ult ptr %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store ptr %.pre, ptr %i.l, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 0, ptr %i.m, align 8, !tbaa !72
  %i.n = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes9IRPrinter13visitFunctionERKNS_8FunctionE:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.049.061, i64 16 ; 5 uses
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !64  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i.thread, label %.lr.ph.i.i.i.i

_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i.thread: ; preds = %.lr.ph
  %3 = load i32, ptr %i.o, align 8, !tbaa !63
  br label %.critedge.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bz, %.lr.ph ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6hermes9IRPrinter13visitFunctionERKNS_8FunctionE:bb.a
  %i.cg = icmp ult ptr %i.by, %i.cf
  br i1 %i.cg, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i.a, label %_ZN6hermes16InstructionNamer9getNumberEPNS_5ValueE.exit

_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i.a: ; preds = %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.i, %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i
  %i.ch = load i32, ptr %i.o, align 8, !tbaa !63  ; 3 uses
  br label %.lr.ph.i.i.i.i37

.lr.ph.i.i.i.i37:                                 ; preds = %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i.a, %.lr.ph.i.i.i.i37
  %.012.i.i.i.i38 = phi ptr [ %.1.i.i.i.i43, %.lr.ph.i.i.i.i37 ], [ %i.bz, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i.a ] ; 3 uses
  %.0811.i.i.i.i39 = phi ptr [ %.19.i.i.i.i40, %.lr.ph.i.i.i.i37 ], [ %i.r, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i.a ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !68
  %i.ck = icmp ult ptr %i.cj, %i.by               ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6hermes9IRPrinter13visitFunctionERKNS_8FunctionE:bb.a
  %i.co = icmp ult ptr %i.by, %i.cn
  br i1 %i.co, label %.critedge.i, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEEixERS6_.exit

.critedge.i:                                      ; preds = %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i.thread, %bb.f, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i
  %i.cp = phi i32 [ %i.ch, %bb.f ], [ %i.ch, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i ], [ %3, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i.thread ] ; 2 uses
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i40, %bb.f ], [ %.19.i.i.i.i40, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit.i ], [ %i.r, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i.thread ]
  %i.cq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 3 uses
  store ptr %i.by, ptr %i.cr, align 8, !tbaa !74
end_hunk_4
