Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86FoldTablesEmitter?download=true
inline.NumInlined: 1524
inline.NumDeleted: 835
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_:bb.a
  %i.bm = icmp ult i8 %i.bl, %i.x                 ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i8, ptr %i.a, align 8, !tbaa !199
  store i8 %i.d, ptr %i.c, align 8, !tbaa !199
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIPKN4llvm18CodeGenInstructionESaIS3_EEC2EmRKS4_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.c, label %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, !prof !290

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #20
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !41 ; 2 uses
  %.pre4.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !41
  %.pre5.i.i.i = ptrtoint ptr %.pre4.i.i.i to i64
  %.pre6.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  br label %_ZNSt12_Vector_baseIPKN4llvm18CodeGenInstructionESaIS3_EEC2EmRKS4_.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIPKN4llvm18CodeGenInstructionESaIS3_EEC2EmRKS4_.exit.i.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, %bb.a
  %.pre-phi7.i.i.i = phi i64 [ %.pre6.i.i.i, %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i ], [ %i.k, %bb.a ]
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i ], [ %i.j, %bb.a ]
  %i.o = phi ptr [ %.pre.i.i.i, %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.p = phi ptr [ %i.n, %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.q, ptr %i.r, align 8, !tbaa !114
  %i.s = sub i64 %.pre-phi.i.i.i, %.pre-phi7.i.i.i ; 4 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.d, label %bb.e, !prof !120

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPKN4llvm18CodeGenInstructionESaIS3_EEC2EmRKS4_.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.p, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPKN4llvm18CodeGenInstructionESaIS3_EEC2EmRKS4_.exit.i.i.i.i.i.i
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.f, label %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !46
  store ptr %i.v, ptr %i.p, align 8, !tbaa !46
  br label %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit

_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  store ptr %i.x, ptr %i.w, align 8, !tbaa !44
  %i.y = load i32, ptr %1, align 8, !tbaa !291
  store i32 %i.y, ptr %i.b, align 8, !tbaa !291
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.aa, align 8, !tbaa !292
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit
  %i.ad = tail call noundef ptr @_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit
  %.0.in40 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.041 = load ptr, ptr %.0.in40, align 8, !tbaa !17 ; 2 uses
  %.not2842 = icmp eq ptr %.041, null
  br i1 %.not2842, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.o
  %.044 = phi ptr [ %.0, %bb.o ], [ %.041, %bb.h ] ; 6 uses
  %.02743 = phi ptr [ %i.ag, %bb.o ], [ %i.b, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.044, i64 32
  %i.ag = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20 ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i8, ptr %i.af, align 8, !tbaa !199
  store i8 %i.ai, ptr %i.ah, align 8, !tbaa !199
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %.044, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.044, i64 48 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i.i30, label %_ZNSt12_Vector_baseIPKN4llvm18CodeGenInstructionESaIS3_EEC2EmRKS4_.exit.i.i.i.i.i.i36, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ar = icmp ugt i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i31, !prof !290

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i31: ; preds = %bb.i
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #20
  %.pre.i.i.i32 = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %.pre4.i.i.i33 = load ptr, ptr %i.al, align 8, !tbaa !41
  %.pre5.i.i.i34 = ptrtoint ptr %.pre4.i.i.i33 to i64
  %.pre6.i.i.i35 = ptrtoint ptr %.pre.i.i.i32 to i64
  br label %_ZNSt12_Vector_baseIPKN4llvm18CodeGenInstructionESaIS3_EEC2EmRKS4_.exit.i.i.i.i.i.i36

_ZNSt12_Vector_baseIPKN4llvm18CodeGenInstructionESaIS3_EEC2EmRKS4_.exit.i.i.i.i.i.i36: ; preds = %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i31, %.lr.ph
  %.pre-phi7.i.i.i37 = phi i64 [ %.pre6.i.i.i35, %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i31 ], [ %i.ap, %.lr.ph ]
  %.pre-phi.i.i.i38 = phi i64 [ %.pre5.i.i.i34, %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i31 ], [ %i.ao, %.lr.ph ]
  %i.at = phi ptr [ %.pre.i.i.i32, %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i31 ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.au = phi ptr [ %i.as, %_ZNSt15__new_allocatorIPKN4llvm18CodeGenInstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i31 ], [ null, %.lr.ph ] ; 5 uses
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !114
  %i.ax = sub i64 %.pre-phi.i.i.i38, %.pre-phi7.i.i.i37 ; 4 uses
  %i.ay = icmp sgt i64 %i.ax, 8
  br i1 %i.ay, label %bb.k, label %bb.l, !prof !120

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIPKN4llvm18CodeGenInstructionESaIS3_EEC2EmRKS4_.exit.i.i.i.i.i.i36
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr align 8 %i.at, i64 %i.ax, i1 false)
  br label %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit39

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIPKN4llvm18CodeGenInstructionESaIS3_EEC2EmRKS4_.exit.i.i.i.i.i.i36
  %i.az = icmp eq i64 %i.ax, 8
  br i1 %i.az, label %bb.m, label %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit39

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !46
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !46
  br label %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit39

_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit39: ; preds = %bb.k, %bb.l, %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.bc = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !44
  %i.bd = load i32, ptr %.044, align 8, !tbaa !291
  store i32 %i.bd, ptr %i.ag, align 8, !tbaa !291
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.02743, i64 16
  store ptr %i.ag, ptr %i.bf, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.02743, ptr %i.bg, align 8, !tbaa !292
  %i.bh = getelementptr inbounds nuw i8, ptr %.044, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !16 ; 2 uses
  %.not29 = icmp eq ptr %i.bi, null
  br i1 %.not29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit39
  %i.bj = tail call noundef ptr @_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt8_Rb_treeIhSt4pairIKhSt6vectorIPKN4llvm18CodeGenInstructionESaIS6_EEESt10_Select1stIS9_ESt4lessIhESaIS9_EE13_M_clone_nodeILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_RT0_.exit39
  %.0.in = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !17  ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !289

._crit_edge:                                      ; preds = %bb.o, %bb.h
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN9__gnu_cxx5__ops10_Iter_predIN12_GLOBAL__N_17IsMatchEEclINS_17__normal_iteratorIPPKN4llvm18CodeGenInstructionESt6vectorISA_SaISA_EEEEEEbT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree readonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %4 = alloca %"struct.llvm::X86Disassembler::RecognizableInstrBase", align 1 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !46     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN4llvm15X86Disassembler21RecognizableInstrBaseC1ERKNS_18CodeGenInstructionE(ptr noundef nonnull align 1 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(220) %i.a) #21
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.f = load i8, ptr %i.e, align 1, !tbaa !118, !range !197, !noundef !174
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !294, !range !197, !noundef !174
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.l = load i8, ptr %i.k, align 1, !tbaa !295, !range !197, !noundef !174
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.thread.i, label %_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.o = load i8, ptr %i.n, align 1, !tbaa !295, !range !197, !noundef !174
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp ne i8 %i.r, 8
  %or.cond.i = select i1 %i.p, i1 %i.s, i1 false
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit, label %.thread.i

bb.f:                                             ; preds = %bb.d
  %.old.i = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.old1.i = load i8, ptr %.old.i, align 1, !tbaa !296
  %.old3.not.i = icmp eq i8 %.old1.i, 8
  br i1 %.old3.not.i, label %.thread.i, label %_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !297
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !298
  %i.y = sext i8 %i.u to i64
  %i.z = getelementptr i8, ptr @switch.table._ZN9__gnu_cxx5__ops10_Iter_predIN12_GLOBAL__N_17IsMatchEEclINS_17__normal_iteratorIPPKN4llvm18CodeGenInstructionESt6vectorISA_SaISA_EEEEEEbT_, i64 %i.y
  %switch.gep = getelementptr i8, ptr %i.z, i64 -40
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.aa = icmp eq i8 %i.x, %switch.load
  br i1 %i.aa, label %bb.g, label %_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit

bb.g:                                             ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !119
  call void @_ZN4llvm15X86Disassembler11getMnemonicB5cxx11EPKNS_18CodeGenInstructionEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull %i.c, i32 noundef %i.ac) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !119
  call void @_ZN4llvm15X86Disassembler11getMnemonicB5cxx11EPKNS_18CodeGenInstructionEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.a, i32 noundef %i.ad) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !28 ; 2 uses
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i

._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i: ; preds = %bb.g
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !176
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %i.af, 0
  %.pre122.i = load ptr, ptr %6, align 8, !tbaa !176 ; 3 uses
  br i1 %i.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %5, align 8, !tbaa !176
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.ak, ptr %.pre122.i, i64 %i.af)
  %i.al = icmp ne i32 %bcmp.i.i.i, 0
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.i, %bb.h, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i
  %i.am = phi ptr [ %.pre.i, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i ], [ %.pre122.i, %bb.i ], [ %.pre122.i, %bb.h ] ; 2 uses
  %i.an = phi i1 [ true, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i ], [ %i.al, %bb.i ], [ false, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.aq = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !29
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.at = load ptr, ptr %5, align 8, !tbaa !176   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !29
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %i.an, label %_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.bd = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr nonnull @.str.339, i64 10) #21
  %i.be = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr nonnull @.str.340, i64 13) #21
  %i.bf = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr nonnull @.str.341, i64 16) #21
  %9 = load i8, ptr %i.bc, align 1, !tbaa !200, !range !197, !noundef !174
  %10 = load i8, ptr %i.ba, align 1, !tbaa !29
  %11 = load i8, ptr %i.az, align 1, !tbaa !29
  %12 = load i8, ptr %i.ay, align 1, !tbaa !29
  %i.bg = load i8, ptr %4, align 1, !tbaa !29
  %i.bh = load i8, ptr %8, align 1, !tbaa !29
  %i.bi = load i8, ptr %7, align 1, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 14
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %15 = load <8 x i8>, ptr %i.bb, align 1, !tbaa !200
  %i.bo = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr nonnull @.str.339, i64 10) #21
  %i.bp = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr nonnull @.str.340, i64 13) #21
  %i.bq = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr nonnull @.str.341, i64 16) #21
  %i.br = load i8, ptr %14, align 1, !tbaa !200, !range !197, !noundef !174
  %i.bs = load <8 x i8>, ptr %13, align 1, !tbaa !200
  %16 = load i8, ptr %i.bn, align 2, !tbaa !29
  %17 = load i8, ptr %i.bm, align 1, !tbaa !29
  %18 = load i8, ptr %i.bl, align 1, !tbaa !29
  %19 = load i8, ptr %i.v, align 8, !tbaa !29
  %i.bt = load i8, ptr %i.bk, align 2, !tbaa !29
  %i.bu = load i8, ptr %i.bj, align 4, !tbaa !29
  %20 = icmp eq i8 %i.bi, %i.bu
  %i.bv = icmp eq i8 %i.bh, %i.bt
  %i.bw = icmp eq i8 %i.bg, %19
  %21 = icmp eq i8 %12, %18
  %22 = icmp eq i8 %11, %17
  %23 = icmp eq i8 %10, %16
  %i.bx = icmp eq <8 x i8> %15, %i.bs
  %i.by = icmp eq i8 %9, %i.br
  %i.bz = xor i1 %i.bd, %i.bo
  %i.ca = xor i1 %i.bz, true
  %i.cb = freeze <8 x i1> %i.bx
  %i.cc = bitcast <8 x i1> %i.cb to i8
  %i.cd = icmp eq i8 %i.cc, -1
  %.fr = freeze i1 %20
  %op.rdx = and i1 %.fr, %i.cd
  %24 = freeze i1 %i.bv
  %25 = freeze i1 %21
  %26 = freeze i1 %23
  %op.rdx41 = and i1 %26, %i.by
  %27 = and i1 %op.rdx, %24
  %.fr46 = freeze i1 %i.bw
  %op.rdx42 = and i1 %27, %.fr46
  %i.ce = and i1 %op.rdx41, %25
  %i.cf = and i1 %op.rdx42, %i.ce
  %op.rdx44 = select i1 %i.cf, i1 %22, i1 false
  %28 = freeze i1 %op.rdx44
  %op.rdx45 = and i1 %28, %i.ca
  br i1 %op.rdx45, label %_ZNSt15__tuple_compareISt5tupleIJhhhhhhbbbbbbbbbbbbEES1_Lm3ELm18EE4__eqERKS1_S4_.exit, label %_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit

_ZNSt15__tuple_compareISt5tupleIJhhhhhhbbbbbbbbbbbbEES1_Lm3ELm18EE4__eqERKS1_S4_.exit: ; preds = %bb.j
  %i.cg = xor i1 %i.be, %i.bp
  %i.ch = xor i1 %i.bf, %i.bq
  %.demorgan = or i1 %i.cg, %i.ch
  br i1 %.demorgan, label %_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__tuple_compareISt5tupleIJhhhhhhbbbbbbbbbbbbEES1_Lm3ELm18EE4__eqERKS1_S4_.exit
  %i.ci = call noundef ptr @_ZNK4llvm6Record13getValueAsDagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr nonnull @.str.342, i64 14) #21
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !192
  %i.cl = call noundef ptr @_ZNK4llvm6Record13getValueAsDagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr nonnull @.str.342, i64 14) #21
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !192
  %i.co = call noundef ptr @_ZNK4llvm6Record13getValueAsDagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr nonnull @.str.343, i64 13) #21
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !192
  %i.cr = call noundef ptr @_ZNK4llvm6Record13getValueAsDagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr nonnull @.str.343, i64 13) #21
  %i.cs = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !193
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !194
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 160
  %i.db = and i64 %i.da, 4294967295               ; 2 uses
  %.not102.i = icmp eq i64 %i.db, 0
  br i1 %.not102.i, label %_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.dc = add i32 %i.ck, 1
  %i.dd = icmp eq i32 %i.dc, %i.cn
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.df = load i32, ptr %i.de, align 8, !tbaa !192
  %i.dg = icmp eq i32 %i.cq, %i.df
  %i.dh = and i1 %i.dd, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = zext i1 %i.dh to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.x, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.x ] ; 3 uses
  %.048103.i = phi i8 [ 0, %.lr.ph.i ], [ %.1.i, %bb.x ] ; 6 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !117
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !194
  %i.dp = getelementptr inbounds nuw [160 x i8], ptr %i.do, i64 %indvars.iv.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !113 ; 8 uses
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !194
  %i.ds = getelementptr inbounds nuw [160 x i8], ptr %i.dr, i64 %indvars.iv.i
  %i.dt = getelementptr inbounds nuw [160 x i8], ptr %i.ds, i64 %i.dl
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !113 ; 8 uses
  %i.dv = icmp eq ptr %i.dq, %i.du
  br i1 %i.dv, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dw = call noundef zeroext i1 @_ZN4llvm15X86Disassembler17isRegisterOperandEPKNS_6RecordE(ptr noundef %i.dq) #21
  br i1 %i.dw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dx = call noundef zeroext i1 @_ZN4llvm15X86Disassembler17isRegisterOperandEPKNS_6RecordE(ptr noundef %i.du) #21
  br i1 %i.dx, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dy = call noundef i32 @_ZN4llvm15X86Disassembler17getRegOperandSizeEPKNS_6RecordE(ptr noundef %i.dq) #21
  %i.dz = call noundef i32 @_ZN4llvm15X86Disassembler17getRegOperandSizeEPKNS_6RecordE(ptr noundef %i.du) #21
  %.not56.i = icmp eq i32 %i.dy, %i.dz
  br i1 %.not56.i, label %bb.p, label %.thread93.loopexit.i

bb.p:                                             ; preds = %bb.o
  %.val60.i = load ptr, ptr %i.dq, align 8, !tbaa !100 ; 2 uses
  %i.ea = getelementptr i8, ptr %.val60.i, i64 24
  %.val60.val.i = load ptr, ptr %i.ea, align 8, !tbaa !21
  %i.eb = getelementptr i8, ptr %.val60.i, i64 32
  %.val60.val61.i = load i64, ptr %i.eb, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %.val60.val.i, ptr %3, align 8
  store i64 %.val60.val61.i, ptr %i.dj, align 8
  %i.ec = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.345, i64 6, i64 noundef 0) #21
  %i.ed = icmp ne i64 %i.ec, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.val.i = load ptr, ptr %i.du, align 8, !tbaa !100 ; 2 uses
  %i.ee = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.ee, align 8, !tbaa !21
  %i.ef = getelementptr i8, ptr %.val.i, i64 32
  %.val.val62.i = load i64, ptr %i.ef, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %.val.val.i, ptr %2, align 8
  store i64 %.val.val62.i, ptr %i.dk, align 8
  %i.eg = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.345, i64 6, i64 noundef 0) #21
  %i.eh = icmp ne i64 %i.eg, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ei = xor i1 %i.ed, %i.eh
  br i1 %i.ei, label %.thread93.loopexit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.m
  %i.ej = call noundef zeroext i1 @_ZN4llvm15X86Disassembler15isMemoryOperandEPKNS_6RecordE(ptr noundef %i.dq) #21
  br i1 %i.ej, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ek = call noundef zeroext i1 @_ZN4llvm15X86Disassembler15isMemoryOperandEPKNS_6RecordE(ptr noundef %i.du) #21
  br i1 %i.ek, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.el = call noundef i32 @_ZN4llvm15X86Disassembler17getMemOperandSizeEPKNS_6RecordE(ptr noundef %i.dq) #21
  %i.em = call noundef i32 @_ZN4llvm15X86Disassembler17getMemOperandSizeEPKNS_6RecordE(ptr noundef %i.du) #21
  %.not58.i = icmp eq i32 %i.el, %i.em
  br i1 %.not58.i, label %bb.t, label %.thread93.loopexit.i

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.en = call noundef zeroext i1 @_ZN4llvm15X86Disassembler18isImmediateOperandEPKNS_6RecordE(ptr noundef %i.dq) #21
  br i1 %i.en, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.eo = call noundef zeroext i1 @_ZN4llvm15X86Disassembler18isImmediateOperandEPKNS_6RecordE(ptr noundef %i.du) #21
  br i1 %i.eo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ep = call noundef ptr @_ZNK4llvm6Record13getValueAsDefENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.dq, ptr nonnull @.str.344, i64 4) #21
  %i.eq = call noundef ptr @_ZNK4llvm6Record13getValueAsDefENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.du, ptr nonnull @.str.344, i64 4) #21
  %.not59.i = icmp eq ptr %i.ep, %i.eq
  br i1 %.not59.i, label %bb.w, label %.thread93.loopexit.i

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.er = trunc nuw i8 %.048103.i to i1
  br i1 %i.er, label %.thread93.loopexit.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.l
  %.1.i = phi i8 [ 1, %bb.w ], [ %.048103.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.db
  br i1 %.not.i, label %.thread93.loopexit.i, label %bb.l, !llvm.loop !293

.thread93.loopexit.i:                             ; preds = %bb.x, %bb.w, %bb.v, %bb.s, %bb.p, %bb.o
  %.not.lcssa.ph.i = phi i1 [ true, %bb.x ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.s ], [ false, %bb.p ], [ false, %bb.w ]
  %.2.ph.i = phi i8 [ %.1.i, %bb.x ], [ %.048103.i, %bb.v ], [ %.048103.i, %bb.o ], [ %.048103.i, %bb.s ], [ %.048103.i, %bb.p ], [ 1, %bb.w ]
  %i.es = trunc nuw i8 %.2.ph.i to i1
  %i.et = select i1 %.not.lcssa.ph.i, i1 %i.es, i1 false
  br label %_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit

_ZN12_GLOBAL__N_17IsMatchclEPKN4llvm18CodeGenInstructionE.exit: ; preds = %bb.j, %bb.b, %bb.c, %bb.e, %bb.f, %.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, %_ZNSt15__tuple_compareISt5tupleIJhhhhhhbbbbbbbbbbbbEES1_Lm3ELm18EE4__eqERKS1_S4_.exit, %bb.k, %.thread93.loopexit.i
  %.4.i = phi i1 [ false, %bb.b ], [ false, %.thread.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %i.et, %.thread93.loopexit.i ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ false, %_ZNSt15__tuple_compareISt5tupleIJhhhhhhbbbbbbbbbbbbEES1_Lm3ELm18EE4__eqERKS1_S4_.exit ], [ false, %bb.k ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.4.i
}

declare void @_ZN4llvm15X86Disassembler21RecognizableInstrBaseC1ERKNS_18CodeGenInstructionE(ptr noundef nonnull align 1 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(220)) unnamed_addr #9

declare void @_ZN4llvm15X86Disassembler11getMnemonicB5cxx11EPKNS_18CodeGenInstructionEj(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNK4llvm6Record13getValueAsDagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN4llvm15X86Disassembler17isRegisterOperandEPKNS_6RecordE(ptr noundef) local_unnamed_addr #9

declare noundef i32 @_ZN4llvm15X86Disassembler17getRegOperandSizeEPKNS_6RecordE(ptr noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN4llvm15X86Disassembler15isMemoryOperandEPKNS_6RecordE(ptr noundef) local_unnamed_addr #9

declare noundef i32 @_ZN4llvm15X86Disassembler17getMemOperandSizeEPKNS_6RecordE(ptr noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN4llvm15X86Disassembler18isImmediateOperandEPKNS_6RecordE(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNK4llvm6Record13getValueAsDefENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120X86FoldTablesEmitter17addEntryWithFlagsERSt3mapIPKN4llvm18CodeGenInstructionENS0_17X86FoldTableEntryENS0_19CompareInstrsByEnumESaISt4pairIKS5_S6_EEES5_S5_tjb(ptr noundef nonnull align 8 dereferenceable(1336) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, i32 noundef range(i32 0, 5) %5, i1 noundef zeroext %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %10 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %11 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %12 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %15 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %16 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %17 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %18 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %19 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %20 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %21 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !46
  %i.b = load ptr, ptr %2, align 8, !tbaa !64     ; 4 uses
  %i.c = trunc i16 %4 to i8                       ; 4 uses
  %i.d = lshr i8 %i.c, 3
  %i.e = and i8 %i.d, 1                           ; 2 uses
  %i.f = lshr i8 %i.c, 6                          ; 2 uses
  %i.g = lshr i16 %4, 7
  %i.h = trunc i16 %i.g to i8
  %i.i = and i8 %i.h, 7                           ; 10 uses
  br i1 %6, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
end_hunk_0
