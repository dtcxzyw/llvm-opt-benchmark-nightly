inline.NumInlined: 11222
inline.NumDeleted: 4344
begin_hunk_0_@_ZN4LIEF11swap_endianINS_5MachO7details18sub_client_commandEEEvPT_
declare void @_ZN4LIEF11swap_endianINS_5MachO7details18sub_client_commandEEEvPT_(ptr noundef) local_unnamed_addr #2

declare void @_ZN4LIEF5MachO9SubClientC1ERKNS0_7details18sub_client_commandE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #2

declare void @_ZN4LIEF5MachO15DyldEnvironmentC1ERKNS0_7details16dylinker_commandE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #2

declare void @_ZN4LIEF11swap_endianINS_5MachO7details23encryption_info_commandEEEvPT_(ptr noundef) local_unnamed_addr #2

declare void @_ZN4LIEF5MachO14EncryptionInfoC1ERKNS0_7details23encryption_info_commandE(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef nonnull align 4 dereferenceable(20)) unnamed_addr #2

declare void @_ZN4LIEF11swap_endianINS_5MachO7details21fileset_entry_commandEEEvPT_(ptr noundef) local_unnamed_addr #2

declare void @_ZN4LIEF5MachO14FilesetCommandC1ERKNS0_7details21fileset_entry_commandE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  store ptr %i.d, ptr %i.a, align 8
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.j, %bb.d ] ; 3 uses
  store ptr %storemerge.i.i.i, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not11.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !640

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not12.i.i.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.n, ptr %i.a, align 8
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

bb.g:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.o, align 8
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

bb.h:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.p = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink.i.i = phi ptr [ %i.p, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ], [ %i.b, %bb.h ] ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 32
  %i.s = load i64, ptr %i.q, align 8
  store i64 %i.s, ptr %i.r, align 8
  %i.t = load i32, ptr %1, align 8
  store i32 %i.t, ptr %.sink.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit
  %i.y = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.x, ptr noundef nonnull %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  store ptr %i.y, ptr %i.z, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit
  %.0.in40 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.041 = load ptr, ptr %.0.in40, align 8         ; 2 uses
  %.not2842 = icmp eq ptr %.041, null
  br i1 %.not2842, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.s
  %.044 = phi ptr [ %.0, %bb.s ], [ %.041, %bb.j ] ; 4 uses
  %.02743 = phi ptr [ %.sink.i.i32, %bb.s ], [ %.sink.i.i, %bb.j ] ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8             ; 8 uses
  %.not.i.i.i30 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i30, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i38, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  store ptr %i.ac, ptr %i.a, align 8
  %.not9.i.i.i31 = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i.i31, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, %i.aa
  br i1 %i.af, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.ad, align 8
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not10.i.i.i33 = icmp eq ptr %i.ai, null
  br i1 %.not10.i.i.i33, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit39, label %.preheader.i.i.i34

.preheader.i.i.i34:                               ; preds = %bb.m, %.preheader.i.i.i34
  %storemerge.i.i.i35 = phi ptr [ %i.ak, %.preheader.i.i.i34 ], [ %i.ai, %bb.m ] ; 3 uses
  store ptr %storemerge.i.i.i35, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not11.i.i.i36 = icmp eq ptr %i.ak, null
  br i1 %.not11.i.i.i36, label %bb.n, label %.preheader.i.i.i34, !llvm.loop !640

bb.n:                                             ; preds = %.preheader.i.i.i34
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 16
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not12.i.i.i37 = icmp eq ptr %i.am, null
  br i1 %.not12.i.i.i37, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit39, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.am, ptr %i.a, align 8
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit39

bb.p:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr null, ptr %i.an, align 8
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit39

bb.q:                                             ; preds = %bb.k
  store ptr null, ptr %3, align 8
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit39

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i38: ; preds = %.lr.ph
  %i.ao = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit39

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit39: ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i38
  %.sink.i.i32 = phi ptr [ %i.ao, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i38 ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ], [ %i.aa, %bb.p ], [ %i.aa, %bb.q ] ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.044, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 32
  %i.ar = load i64, ptr %i.ap, align 8
  store i64 %i.ar, ptr %i.aq, align 8
  %i.as = load i32, ptr %.044, align 8
  store i32 %i.as, ptr %.sink.i.i32, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.02743, i64 16
  store ptr %.sink.i.i32, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 8
  store ptr %.02743, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.044, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not29 = icmp eq ptr %i.ax, null
  br i1 %.not29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit39
  %i.ay = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.ax, ptr noundef nonnull %.sink.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.az = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 24
  store ptr %i.ay, ptr %i.az, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit39
  %.0.in = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !641

._crit_edge:                                      ; preds = %bb.s, %bb.j
  ret ptr %.sink.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #19
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #18 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load i64, ptr %2, align 8
  store i64 %i.s, ptr %i.r, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.a, -8
  %i.t = sub i64 %3, %i.f                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.a, -8
  %i.x = sub i64 %i.w, %i.f
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.z
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.d, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !alias.scope !647, !noalias !642
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !647, !noalias !642
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !650, !noalias !647
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !alias.scope !650, !noalias !647
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !alias.scope !647, !noalias !642
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !alias.scope !647, !noalias !642
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !652

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !645, !noalias !642
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !alias.scope !642, !noalias !645
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !645, !noalias !642
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !653

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %4 = add i64 %i.e, -8
  %i.am = sub i64 %4, %i.a                        ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.am, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ap = add i64 %i.e, -8
  %i.aq = sub i64 %i.ap, %i.a
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %scevgep40 = getelementptr i8, ptr %i.as, i64 16
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep41 = getelementptr i8, ptr %i.at, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec49, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ax = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.ay = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !659, !noalias !654
  %wide.load55 = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !659, !noalias !654
  %i.az = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !alias.scope !662, !noalias !659
  store <2 x i64> %wide.load55, ptr %i.az, align 8, !alias.scope !662, !noalias !659
  %i.ba = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !659, !noalias !654
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !alias.scope !659, !noalias !654
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bb, label %middle.block57, label %vector.body50, !llvm.loop !664

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ao, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.av, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.bc = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !657, !noalias !654
  store i64 %i.bc, ptr %.012.i.i.i18, align 8, !alias.scope !654, !noalias !657
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !657, !noalias !654
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !665

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.av, %middle.block57 ], [ %i.be, %.lr.ph.i.i.i17 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bj, ptr %i.bf, align 8
  ret void
}

declare void @_ZN4LIEF5MachO17DyldChainedFixupsC1ERKNS0_7details21linkedit_data_commandE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN4LIEF5MachO15DyldExportsTrieC1ERKNS0_7details21linkedit_data_commandE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN4LIEF11swap_endianINS_5MachO7details22twolevel_hints_commandEEEvPT_(ptr noundef) local_unnamed_addr #2

declare void @_ZN4LIEF5MachO13TwoLevelHintsC1ERKNS0_7details22twolevel_hints_commandE(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN4LIEF11swap_endianINS_5MachO7details13twolevel_hintEEEvPT_(ptr noundef) local_unnamed_addr #2

declare void @_ZN4LIEF5MachO13LinkerOptHintC1ERKNS0_7details21linkedit_data_commandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN4LIEF5MachO11NoteCommandC1ERKNS0_7details12note_commandE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare void @_ZN4LIEF5MachO16FunctionVariantsC1ERKNS0_7details21linkedit_data_commandE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN4LIEF5MachO21FunctionVariantFixupsC1ERKNS0_7details21linkedit_data_commandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN4LIEF5MachO11LoadCommandC2ERKNS0_7details12load_commandE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4LIEF5MachO11LoadCommand4TYPEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIN4LIEF5MachO11LoadCommand4TYPEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !666

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12parse_symtabINS0_7details7MachO64EEENS_10ok_error_tERNS0_13SymbolCommandERNS_10SpanStreamES9_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.LIEF::MachO::details::nlist_64", align 8 ; 7 uses
  %5 = alloca %"class.LIEF::result.2454", align 8 ; 8 uses
  %6 = alloca %"class.LIEF::result.338", align 8  ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(24) %2) #17, !inline_history !161
  %i.i = icmp ult i64 %i.d, %i.h
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.t = load i64, ptr %i.c, align 8, !noalias !673 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !673
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !noalias !673
  %i.u = load ptr, ptr %2, align 8, !noalias !673
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !noalias !673
  %i.x = call i64 %i.w(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %4, i64 noundef %i.t, i64 noundef 16, i64 noundef 0) #17, !noalias !673, !inline_history !674
  %i.y = and i64 %i.x, 4294967296
  %.not.i.i.not = icmp eq i64 %i.y, 0
  store i64 %i.t, ptr %i.c, align 8, !noalias !673
  br i1 %.not.i.i.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr %i.j, align 8, !range !134, !noalias !673, !noundef !135
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4LIEF11swap_endianINS_5MachO7details8nlist_64EEEvPT_(ptr noundef nonnull %4) #17, !noalias !673
  %.pre.i = load i64, ptr %i.c, align 8, !noalias !667
  br label %bb.e

.thread:                                          ; preds = %bb.b
  store i32 1, ptr %5, align 8, !alias.scope !673
  store i8 0, ptr %i.k, align 8, !alias.scope !673
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !673
  %i.ab = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi i64 [ %i.t, %bb.c ], [ %.pre.i, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store i8 1, ptr %i.k, align 8, !alias.scope !673
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !673
  %i.ad = add i64 %i.ac, 16
  store i64 %i.ad, ptr %i.c, align 8, !noalias !667
  %i.ae = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18, !noalias !675 ; 9 uses
  call void @_ZN4LIEF5MachO6SymbolC1ERKNS0_7details8nlist_64E(ptr noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %5) #17, !noalias !675
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO12BinaryParser18parse_data_in_codeINS0_7details7MachO32EEENS_10ok_error_tERNS0_10DataInCodeERNS_12BinaryStreamE:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = phi i64 [ %i.k, %bb.c ], [ %.pre.i, %bb.d ]
  %i.t = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.fca.0.insert.i6.i = insertvalue { i64, i8 } poison, i64 %i.t, 0
  %.fca.1.insert.i7.i = insertvalue { i64, i8 } %.fca.0.insert.i6.i, i8 1, 1
  %i.u = add i64 %i.s, 8
  store i64 %i.u, ptr %i.e, align 8
  br label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit: ; preds = %_ZNK4LIEF12BinaryStream4peekINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit.i, %bb.e
  %.fca.1.insert.i8.i = phi { i64, i8 } [ { i64 1, i8 0 }, %_ZNK4LIEF12BinaryStream4peekINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit.i ], [ %.fca.1.insert.i7.i, %bb.e ] ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %.fca.1.insert.i8.i, 0
  %.fca.1.extract = extractvalue { i64, i8 } %.fca.1.insert.i8.i, 1 ; 2 uses
  store i64 %.fca.0.extract, ptr %4, align 8
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.v = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.v, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit
  call void @_ZN4LIEF5MachO13DataCodeEntryC1ERKNS0_7details18data_in_code_entryE(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(8) %4) #17
  %i.w = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.x = load ptr, ptr %i.h, align 8
  %.not.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(20) %i.w, ptr noundef nonnull align 8 dereferenceable(20) %5) #17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF5MachO13DataCodeEntryE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.z = load ptr, ptr %i.g, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.aa, ptr %i.g, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(20) %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.ab = add nuw nsw i64 %storemerge11, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.d
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !1395

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit
  %i.ac = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.a, %bb.j
  %.sroa.2.2 = phi i64 [ 1, %bb.j ], [ 4294967297, %bb.a ], [ 4294967297, %bb.i ]
  ret i64 %.sroa.2.2
}

declare void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8     ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !1396

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !1396

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = tail call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911) #17 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = urem i64 %i.t, %i.v                      ; 3 uses
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ab                   ; 3 uses
  %i.ac = icmp eq i64 %.fr22.i.i, 0
  %i.ad = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.d, %bb.f
  %i.ae = phi i64 [ %i.al, %bb.f ], [ %.pre26.i.i, %bb.d ]
  %.0.us.i.i = phi ptr [ %i.aj, %bb.f ], [ %i.aa, %bb.d ] ; 3 uses
  %i.af = icmp eq i64 %i.t, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

bb.e:                                             ; preds = %.split.us.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.e, %.split.us.i.i
  %i.aj = load ptr, ptr %.0.us.i.i, align 8       ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = urem i64 %i.al, %i.v
  %.not19.us.i.i = icmp eq i64 %i.am, %i.w
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !690

.split.i.i:                                       ; preds = %bb.d, %bb.h
  %i.an = phi i64 [ %i.ax, %bb.h ], [ %.pre26.i.i, %bb.d ]
  %.0.i.i = phi ptr [ %i.av, %bb.h ], [ %i.aa, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ap = icmp eq i64 %i.t, %i.an
  br i1 %i.ap, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

bb.g:                                             ; preds = %.split.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %.fr22.i.i, %i.ar
  br i1 %i.as, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.at = load ptr, ptr %i.ao, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ad, ptr %i.at, i64 %.fr22.i.i)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.g, %.split.i.i
  %i.av = load ptr, ptr %.0.i.i, align 8          ; 3 uses
  %.not18.i.i = icmp eq ptr %i.av, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = urem i64 %i.ax, %i.v
  %.not19.i.i = icmp eq i64 %i.ay, %i.w
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !690

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i, %bb.e, %bb.b, %bb.c
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.e ], [ null, %bb.f ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i ], [ null, %bb.h ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #19
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #18 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load i64, ptr %2, align 8
  store i64 %i.s, ptr %i.r, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.a, -8
  %i.t = sub i64 %3, %i.f                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.a, -8
  %i.x = sub i64 %i.w, %i.f
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.z
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.d, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !alias.scope !1402, !noalias !1397
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !1402, !noalias !1397
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1405, !noalias !1402
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !alias.scope !1405, !noalias !1402
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !alias.scope !1402, !noalias !1397
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !alias.scope !1402, !noalias !1397
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !1400, !noalias !1397
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !alias.scope !1397, !noalias !1400
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !1400, !noalias !1397
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !1408

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %4 = add i64 %i.e, -8
  %i.am = sub i64 %4, %i.a                        ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.am, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ap = add i64 %i.e, -8
  %i.aq = sub i64 %i.ap, %i.a
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %scevgep40 = getelementptr i8, ptr %i.as, i64 16
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep41 = getelementptr i8, ptr %i.at, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec49, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ax = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.ay = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !1414, !noalias !1409
  %wide.load55 = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !1414, !noalias !1409
  %i.az = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !alias.scope !1417, !noalias !1414
  store <2 x i64> %wide.load55, ptr %i.az, align 8, !alias.scope !1417, !noalias !1414
  %i.ba = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !1414, !noalias !1409
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !alias.scope !1414, !noalias !1409
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bb, label %middle.block57, label %vector.body50, !llvm.loop !1419

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ao, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.av, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.bc = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !1412, !noalias !1409
  store i64 %i.bc, ptr %.012.i.i.i18, align 8, !alias.scope !1409, !noalias !1412
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !1412, !noalias !1409
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1420

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.av, %middle.block57 ], [ %i.be, %.lr.ph.i.i.i17 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bj, ptr %i.bf, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #19
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #18 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load i64, ptr %2, align 8
  store i64 %i.s, ptr %i.r, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.a, -8
  %i.t = sub i64 %3, %i.f                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.a, -8
  %i.x = sub i64 %i.w, %i.f
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.z
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.d, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !alias.scope !1426, !noalias !1421
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !1426, !noalias !1421
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1429, !noalias !1426
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !alias.scope !1429, !noalias !1426
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !alias.scope !1426, !noalias !1421
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !alias.scope !1426, !noalias !1421
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1431

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !1424, !noalias !1421
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !alias.scope !1421, !noalias !1424
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !1424, !noalias !1421
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !1432

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %4 = add i64 %i.e, -8
  %i.am = sub i64 %4, %i.a                        ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.am, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ap = add i64 %i.e, -8
  %i.aq = sub i64 %i.ap, %i.a
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %scevgep40 = getelementptr i8, ptr %i.as, i64 16
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep41 = getelementptr i8, ptr %i.at, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec49, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ax = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  %i.ay = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !1438, !noalias !1433
  %wide.load55 = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !1438, !noalias !1433
  %i.az = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !alias.scope !1441, !noalias !1438
  store <2 x i64> %wide.load55, ptr %i.az, align 8, !alias.scope !1441, !noalias !1438
  %i.ba = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !1438, !noalias !1433
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !alias.scope !1438, !noalias !1433
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bb, label %middle.block57, label %vector.body50, !llvm.loop !1443

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ao, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.av, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  %i.bc = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !1436, !noalias !1433
  store i64 %i.bc, ptr %.012.i.i.i18, align 8, !alias.scope !1433, !noalias !1436
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !1436, !noalias !1433
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1444

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.av, %middle.block57 ], [ %i.be, %.lr.ph.i.i.i17 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bj, ptr %i.bf, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_ZSt11make_uniqueIN4LIEF5MachO18ChainedBindingInfoEJRNS1_22ChainedBindingInfoListEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!6 = distinct !{!6, !"_ZSt11make_uniqueIN4LIEF5MachO18ChainedBindingInfoEJRNS1_22ChainedBindingInfoListEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!9 = distinct !{!9, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!10 = !{!11}
!11 = distinct !{!11, !9, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!12 = !{!11, !13}
!13 = distinct !{!13, !14}
!14 = distinct !{!14, !"LVerDomain"}
!15 = !{!8, !16}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !18, !19, !20}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !18, !19}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZSt11make_uniqueIN4LIEF5MachO15RelocationFixupEJRKNS1_23DYLD_CHAINED_PTR_FORMATERKmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!24 = distinct !{!24, !"_ZSt11make_uniqueIN4LIEF5MachO15RelocationFixupEJRKNS1_23DYLD_CHAINED_PTR_FORMATERKmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!25 = distinct !{!25, !18}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!28 = distinct !{!28, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!31 = !{!30, !32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!27, !35}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !18, !19, !20}
!37 = distinct !{!37, !18, !19}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZSt11make_uniqueIN4LIEF5MachO18ChainedBindingInfoEJRNS1_22ChainedBindingInfoListEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!40 = distinct !{!40, !"_ZSt11make_uniqueIN4LIEF5MachO18ChainedBindingInfoEJRNS1_22ChainedBindingInfoListEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!43 = distinct !{!43, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!46 = !{!45, !47}
!47 = distinct !{!47, !48}
!48 = distinct !{!48, !"LVerDomain"}
!49 = !{!42, !50}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !18, !19, !20}
!52 = distinct !{!52, !18, !19}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZSt11make_uniqueIN4LIEF5MachO15RelocationFixupEJRKNS1_23DYLD_CHAINED_PTR_FORMATERKmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!55 = distinct !{!55, !"_ZSt11make_uniqueIN4LIEF5MachO15RelocationFixupEJRKNS1_23DYLD_CHAINED_PTR_FORMATERKmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!58 = distinct !{!58, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!59 = !{!60}
!60 = distinct !{!60, !58, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!61 = !{!60, !62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!57, !65}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !18, !19, !20}
!67 = distinct !{!67, !18, !19}
end_hunk_1
