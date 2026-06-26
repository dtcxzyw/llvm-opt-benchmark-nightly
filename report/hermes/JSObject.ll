inline.NumInlined: 2965
inline.NumDeleted: 1136
begin_hunk_0_@_ZN4llvh8SmallSetIjLj16ESt4lessIjEE6insertERKj:bb.a
  %i.by = icmp eq ptr %.019.lcssa29.i.i.i62, %i.bx
  br i1 %i.by, label %select.unfold.i.i58, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i.i61
  %i.bz = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i62) #19
  %.phi.trans.insert.i.i63 = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %.pre.i.i64 = load i32, ptr %.phi.trans.insert.i.i63, align 4, !tbaa !3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i51
  %i.ca = phi i32 [ %.pre.i.i64, %bb.o ], [ %i.bu, %._crit_edge.i.i.i51 ]
  %.019.lcssa28.i.i.i52 = phi ptr [ %.019.lcssa29.i.i.i62, %bb.o ], [ %.02024.i.i.i46, %._crit_edge.i.i.i51 ]
  %i.cb = icmp ult i32 %i.ca, %.pre.i.pre.pre.i.i44.pre
  br i1 %i.cb, label %select.unfold.i.i58, label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

select.unfold.i.i58:                              ; preds = %bb.p, %._crit_edge.thread.i.i.i61
  %.sroa.4.0.i.ph.i.i59 = phi ptr [ %.019.lcssa29.i.i.i62, %._crit_edge.thread.i.i.i61 ], [ %.019.lcssa28.i.i.i52, %bb.p ] ; 3 uses
  %i.cc = icmp eq ptr %.sroa.4.0.i.ph.i.i59, %i.bs
  br i1 %i.cc, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i60, label %bb.q

bb.q:                                             ; preds = %select.unfold.i.i58
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i59, i64 32
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = icmp ult i32 %.pre.i.pre.pre.i.i44.pre, %i.ce
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i60

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i60: ; preds = %bb.q, %select.unfold.i.i58
  %i.cg = phi i1 [ %i.cf, %bb.q ], [ true, %select.unfold.i.i58 ]
  %i.ch = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i32 %.pre.i.pre.pre.i.i44.pre, ptr %i.ci, align 4, !tbaa !3
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cg, ptr noundef nonnull %i.ch, ptr noundef nonnull %.sroa.4.0.i.ph.i.i59, ptr noundef nonnull align 8 dereferenceable(32) %i.bs) #17
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !336
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !336
  br label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit:      ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i60, %bb.p, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.d, %_ZNK4llvh8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit, %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE9push_backERKj.exit
  %.sroa.09.1.in = phi i64 [ 1, %_ZNK4llvh8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit ], [ 1, %bb.d ], [ 4294967297, %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE9push_backERKj.exit ], [ 4294967297, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i ], [ 4294967297, %bb.p ], [ 4294967297, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i60 ]
  ret i64 %.sroa.09.1.in
}

declare i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr, i64) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseIjLb1EE9push_backERKj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !330  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !331
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 4) #17
  %.pre = load i32, ptr %i.a, align 8, !tbaa !330
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !329
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %1, align 4
  store i32 %i.j, ptr %i.i, align 1
  %i.k = load i32, ptr %i.a, align 8, !tbaa !330
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !330
  ret void
}

declare i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4sortIPjEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZSt6__sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %i.g)
  tail call void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1)
  br label %_ZSt6__sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit

_ZSt6__sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !313    ; 9 uses
  %i.b = trunc i32 %i.a to i8
  %i.c = and i8 %i.b, 15
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.b
    i8 8, label %bb.b
    i8 1, label %bb.c
    i8 9, label %bb.c
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 3, label %bb.e
    i8 11, label %bb.e
    i8 4, label %bb.f
    i8 12, label %bb.f
    i8 5, label %bb.g
    i8 13, label %bb.g
    i8 6, label %bb.h
    i8 14, label %bb.k
    i8 7, label %bb.i
    i8 15, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  %i.d = ptrtoint ptr %1 to i64
  %i.e = zext i32 %i.a to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = or i64 %i.f, -281474976710656
  %i.h = select i1 %.not.i.i.i.i, i64 -281474976710656, i64 %i.g
  br label %bb.k

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.i = and i32 %i.a, -8
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %i.i to i64
  %i.l = add i64 %i.k, %i.j
  %i.m = or i64 %i.l, -562949953421312
  br label %bb.k

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.n = and i32 %i.a, -8
  %i.o = ptrtoint ptr %1 to i64
  %i.p = zext i32 %i.n to i64
  %i.q = add i64 %i.p, %i.o
  %i.r = or i64 %i.q, -844424930131968
  br label %bb.k

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.s = and i32 %i.a, -8
  %i.t = ptrtoint ptr %1 to i64
  %i.u = zext i32 %i.s to i64
  %i.v = add i64 %i.u, %i.t
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !311 ; 2 uses
  %i.z = fcmp uno double %i.y, 0.000000e+00
  %i.aa = bitcast double %i.y to i64
  %.sroa.0.0.i = select i1 %i.z, i64 9221120237041090560, i64 %i.aa, !prof !39
  br label %bb.k

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.ab = ashr i32 %i.a, 3
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  br label %bb.k

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.ae = lshr i32 %i.a, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = or disjoint i64 %i.af, -1266637395197952
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ah = icmp ugt i32 %i.a, 15
  %i.ai = zext i1 %i.ah to i64
  %i.aj = or disjoint i64 %i.ai, -1407374883553280
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  br label %bb.k

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.05.0 = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ], [ %i.r, %bb.d ], [ %.sroa.0.0.i, %bb.e ], [ %i.ad, %bb.f ], [ %i.ag, %bb.g ], [ %i.aj, %bb.h ], [ -1548112371908608, %bb.j ], [ -1970324836974592, %bb.i ], [ -1688849860263936, %bb.a ]
  ret i64 %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i32 noundef %3, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !40 ; 2 uses
  %i.a = icmp ult i64 %.sroa.0.0.copyload.i.i.i, -1970324836974592
  br i1 %i.a, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit: ; preds = %bb.a
  %i.b = bitcast i64 %.sroa.0.0.copyload.i.i.i to double ; 2 uses
  %i.c = fptoui double %i.b to i32                ; 3 uses
  %i.d = uitofp i32 %i.c to double
  %i.e = fcmp oeq double %i.b, %i.d
  %i.f = icmp ne i32 %i.c, -1
  %or.cond.i.i = and i1 %i.f, %i.e
  %i.g = zext i32 %i.c to i64
  %i.h = or disjoint i64 %i.g, 4294967296
  %i.i = trunc nuw nsw i64 %i.h to i40
  %i.j = select i1 %or.cond.i.i, i40 %i.i, i40 0  ; 2 uses
  %.not = icmp samesign ult i40 %i.j, 4294967296
  br i1 %.not, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %.sroa.0.0.copyload.i.i.i8 = load i64, ptr %0, align 8, !tbaa !40
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i8, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = and i32 %i.n, 16
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.045.0.extract.trunc = trunc i40 %i.j to i32 ; 2 uses
  %i.p = load i32, ptr %i.l, align 4
  %i.q = lshr i32 %i.p, 24
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !319
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !353
  %i.w = tail call i32 %i.v(ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.045.0.extract.trunc) #17, !inline_history !354 ; 3 uses
  %i.x = and i32 %i.w, 65536
  %.not96 = icmp eq i32 %i.x, 0
  br i1 %.not96, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.042.0.insert.ext = and i32 %i.w, 65535
  store i32 %.sroa.042.0.insert.ext, ptr %5, align 4
  %i.y = trunc i32 %i.w to i16
  %i.z = or i16 %i.y, 32
  store i16 %i.z, ptr %5, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.045.0.extract.trunc, ptr %i.aa, align 4, !tbaa !367
  br label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.0.0.copyload.i.i.i11 = load i32, ptr %i.ab, align 4, !tbaa !3
  %6 = ptrtoint ptr %1 to i64
  %i.ac = zext i32 %.sroa.0.0.copyload.i.i.i11 to i64
  %i.ad = add i64 %i.ac, %6
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %i.ag = load i8, ptr %i.af, align 2
  %i.ah = and i8 %i.ag, 4
  %i.ai = icmp ne i8 %i.ah, 0
  %i.aj = and i32 %i.n, 224
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond92 = or i1 %i.ak, %i.ai
  br i1 %or.cond92, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, %bb.e
  %i.al = tail call ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #17 ; 2 uses
  %.not97 = icmp eq ptr %i.al, inttoptr (i64 -1 to ptr)
  br i1 %.not97, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit, label %bb.f, !prof !39

bb.f:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread
  %.sroa.0.0.copyload.i.i.i15 = load i64, ptr %i.al, align 8, !tbaa !40
  %i.am = trunc i64 %.sroa.0.0.copyload.i.i.i15 to i32
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.sroa.0.0.copyload.i.i8.i.i.i = load i32, ptr %i.ap, align 4, !tbaa !3
  %7 = ptrtoint ptr %1 to i64
  %i.aq = zext i32 %.sroa.0.0.copyload.i.i8.i.i.i to i64
  %i.ar = add i64 %i.aq, %7
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = tail call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.as, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.am, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %5) #17
  %i.au = and i64 %i.at, 4294967296
  %.not98 = icmp eq i64 %i.au, 0
  br i1 %.not98, label %bb.g, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i16 = load i64, ptr %0, align 8, !tbaa !40
  %i.av = and i64 %.sroa.0.0.copyload.i.i.i16, 281474976710655
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 200
  %or.cond = icmp eq i32 %i.az, 0
  br i1 %or.cond, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit, label %.critedge.i, !prof !369

.critedge.i:                                      ; preds = %bb.g
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %8, align 8, !tbaa !43    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 192 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 200
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bf = icmp ult ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.h, label %bb.i, !prof !42

bb.h:                                             ; preds = %.critedge.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !46
  store i64 -844424930131968, ptr %i.bc, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.i:                                             ; preds = %.critedge.i
  %i.bh = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ba, i64 -844424930131968) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.h ], [ %i.bh, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i19 = load i64, ptr %0, align 8, !tbaa !40
  %i.bi = and i64 %.sroa.0.0.copyload.i.i.i19, 281474976710655
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4            ; 3 uses
  %i.bm = and i32 %i.bl, 8
  %.not46.i = icmp eq i32 %i.bm, 0
  br i1 %.not46.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.sroa.0.0.copyload.i.i.i20 = load i64, ptr %2, align 8, !tbaa !40 ; 3 uses
  %i.bn = icmp ult i64 %.sroa.0.0.copyload.i.i.i20, -1970324836974592
  br i1 %i.bn, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23: ; preds = %bb.j
  %i.bo = bitcast i64 %.sroa.0.0.copyload.i.i.i20 to double ; 2 uses
  %i.bp = fptoui double %i.bo to i32              ; 3 uses
  %i.bq = uitofp i32 %i.bp to double
  %i.br = fcmp oeq double %i.bo, %i.bq
  %i.bs = icmp ne i32 %i.bp, -1
  %or.cond.i.i22 = and i1 %i.bs, %i.br
  %i.bt = zext i32 %i.bp to i64
  %i.bu = or disjoint i64 %i.bt, 4294967296
  %i.bv = trunc nuw nsw i64 %i.bu to i40
  %i.bw = select i1 %or.cond.i.i22, i40 %i.bv, i40 0 ; 3 uses
  %.not100 = icmp samesign ult i40 %i.bw, 4294967296
  %extract.t = trunc i40 %i.bw to i32             ; 2 uses
  %extract.t103 = icmp samesign ugt i40 %i.bw, 4294967295 ; 2 uses
  br i1 %.not100, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23.thread, label %bb.n

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23.thread: ; preds = %bb.j, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23
  %.off0 = phi i32 [ %extract.t, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23 ], [ 0, %bb.j ]
  %.off32 = phi i1 [ %extract.t103, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23 ], [ false, %bb.j ]
  %.mask.i = and i64 %.sroa.0.0.copyload.i.i.i20, -140737488355328
  %i.bx = icmp eq i64 %.mask.i, -1266637395197952
  br i1 %i.bx, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23.thread
  %i.by = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326 ; 2 uses
  %i.bz = icmp ugt i64 %i.by, -844424930131969
  %i.ca = and i64 %i.by, 281474976710655
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = and i1 %i.bz, %i.cb
  br i1 %i.cc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #17
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = or i64 %i.ce, -844424930131968
  store i64 %i.cf, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cg = tail call i64 @_ZN6hermes2vm12toArrayIndexERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i) #17 ; 2 uses
  %extract.t102 = trunc i64 %i.cg to i32
  %i.ch = and i64 %i.cg, 4294967296
  %extract.t107.not = icmp eq i64 %i.ch, 0
  br i1 %extract.t107.not, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit, label %bb.o

bb.n:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23.thread, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23
  %.sroa.032.0.off0 = phi i32 [ %extract.t, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23 ], [ %.off0, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23.thread ]
  %.sroa.032.0.off32 = phi i1 [ %extract.t103, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23 ], [ %.off32, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit23.thread ]
  br i1 %.sroa.032.0.off32, label %bb.o, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.032.0.off0117 = phi i32 [ %extract.t102, %bb.m ], [ %.sroa.032.0.off0, %bb.n ] ; 2 uses
  %.sroa.0.0.copyload.i.i24 = load i64, ptr %0, align 8, !tbaa !40
  %i.ci = and i64 %.sroa.0.0.copyload.i.i24, 281474976710655
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = lshr i32 %i.ck, 24
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !319
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !353
  %i.cr = tail call i32 %i.cq(ptr noundef nonnull %i.cj, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.032.0.off0117) #17, !inline_history !354 ; 3 uses
  %i.cs = and i32 %i.cr, 65536
  %.not113 = icmp eq i32 %i.cs, 0
  br i1 %.not113, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.029.0.insert.ext = and i32 %i.cr, 65535
  store i32 %.sroa.029.0.insert.ext, ptr %5, align 4
  %i.ct = trunc i32 %i.cr to i16
  %i.cu = or i16 %i.ct, 32
  store i16 %i.cu, ptr %5, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.032.0.off0117, ptr %i.cv, align 4, !tbaa !367
  br label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

bb.q:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.cw = and i32 %i.bl, 64
  %.not114 = icmp eq i32 %i.cw, 0
  br i1 %.not114, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = and i32 %i.bl, -73
  store i32 %i.cx, ptr %i.bk, align 4
  tail call void @_ZN6hermes2vm8Callable20defineLazyPropertiesENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  %9 = tail call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
  br label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

bb.s:                                             ; preds = %bb.q
  %i.cy = icmp eq i32 %3, 1
  br i1 %i.cy, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = tail call i32 @_ZN6hermes2vm7JSProxy14getOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_26ComputedPropertyDescriptorEPNS0_13MutableHandleIS7_EE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef null) #17
  br label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit: ; preds = %bb.m, %bb.s, %bb.n, %bb.o, %bb.g, %bb.f, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, %bb.e, %bb.r, %bb.t, %bb.p, %bb.c, %bb.d
  %.sroa.064.6 = phi i32 [ 0, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread ], [ 257, %bb.d ], [ 257, %bb.f ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.g ], [ %9, %bb.r ], [ 1, %bb.n ], [ %i.cz, %bb.t ], [ 257, %bb.p ], [ 1, %bb.o ], [ 1, %bb.s ], [ 1, %bb.m ]
  %.sroa.064.0.insert.ext = and i32 %.sroa.064.6, 65535
  ret i32 %.sroa.064.0.insert.ext
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !326
  %i.b = icmp ugt i64 %i.a, -281474976710657
  br i1 %i.b, label %bb.b, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2)
  br label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.sroa.02.0.i, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.d, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.d = tail call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %bb.c
  %.sroa.08.0 = phi i32 [ %i.d, %bb.c ], [ 0, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ]
  ret i32 %.sroa.08.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.hermes::vm::HermesValue32", align 4 ; 4 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !326
  %i.b = icmp ugt i64 %i.a, -281474976710657
  br i1 %i.b, label %bb.b, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2)
  br label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.sroa.02.0.i, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.l, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.d = tail call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4) ; 2 uses
  %.mask = and i32 %i.d, 255
  %i.e = icmp eq i32 %.mask, 0
  br i1 %i.e, label %bb.l, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.d, 256
  %.not28 = icmp eq i32 %i.f, 0
  %.sroa.0.0.copyload.i.i18 = load i64, ptr %0, align 8, !tbaa !40
  %i.g = and i64 %.sroa.0.0.copyload.i.i18, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr                 ; 5 uses
  br i1 %.not28, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.02.0.copyload = load i64, ptr %4, align 4 ; 4 uses
  %i.i = and i64 %.sroa.02.0.copyload, 32
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !39

bb.f:                                             ; preds = %bb.e
  %.sroa.35.0.extract.shift.i = lshr i64 %.sroa.02.0.copyload, 32
  %.sroa.35.0.extract.trunc.i = trunc nuw i64 %.sroa.35.0.extract.shift.i to i32
  %i.j = load i32, ptr %i.h, align 4
  %i.k = lshr i32 %i.j, 24
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !319
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !320
  %i.q = tail call i64 %i.p(ptr nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.35.0.extract.trunc.i) #17, !inline_history !324
  br label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.sroa.1.0.extract.shift.i.i = lshr i64 %.sroa.02.0.copyload, 32 ; 2 uses
  %i.r = icmp ult i64 %.sroa.02.0.copyload, 21474836480
  br i1 %i.r, label %bb.h, label %bb.i, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.t, align 4, !tbaa !3
  %i.u = ptrtoint ptr %1 to i64
  %i.v = zext i32 %.sroa.0.0.copyload.i.i.i.i.i to i64
  %i.w = add i64 %i.v, %i.u
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add nuw nsw i64 %.sroa.1.0.extract.shift.i.i, 4294967291
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = and i64 %i.y, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i: ; preds = %bb.i, %bb.h
  %.sink6.i.i.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.1.0.extract.shift.i.i, %bb.h ]
  %.sink.i.i.i = phi ptr [ %i.z, %bb.i ], [ %i.s, %bb.h ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i, i64 %.sink6.i.i.i
  %.sroa.0.0.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !3
  store i32 %.sroa.0.0.i.i.i, ptr %6, align 4
  %i.ac = call i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(9816) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit

_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit: ; preds = %bb.f, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i
  %.sroa.04.0.i = phi i64 [ %i.q, %bb.f ], [ %i.ac, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i ]
  %i.ad = load ptr, ptr %5, align 8, !tbaa !351
  store i64 %.sroa.04.0.i, ptr %i.ad, align 8, !tbaa !326
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 128
  %.not29 = icmp eq i32 %i.ag, 0
  br i1 %.not29, label %bb.l, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i32 @_ZN6hermes2vm7JSProxy14getOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_26ComputedPropertyDescriptorEPNS0_13MutableHandleIS7_EE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull %5) #17
  %i.ai = and i32 %i.ah, 65535
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit, %bb.k, %bb.c, %bb.j, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.023.1 = phi i32 [ 0, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 0, %bb.c ], [ 257, %_ZN6hermes2vm8JSObject26getComputedSlotValueUnsafeENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorE.exit ], [ %i.ai, %bb.k ], [ 1, %bb.j ]
  ret i32 %.sroa.023.1
}

declare i32 @_ZN6hermes2vm7JSProxy14getOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_26ComputedPropertyDescriptorEPNS0_13MutableHandleIS7_EE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.0.0.copyload.i.i8.i = load i32, ptr %i.c, align 4, !tbaa !3
  %i.d = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.e = zext i32 %.sroa.0.0.copyload.i.i8.i to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.g, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 %3, ptr noundef nonnull align 4 dereferenceable(8) %4) #17
  %i.i = and i64 %i.h, 4294967296
  %.not102 = icmp eq i64 %i.i, 0
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.j = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  br i1 %.not102, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = and i32 %i.m, 32
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.o = load i16, ptr %4, align 4
  %i.p = or i16 %i.o, 260
  store i16 %i.p, ptr %4, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %2, ptr %i.q, align 4, !tbaa !367
  br label %.thread.sink.split

bb.d:                                             ; preds = %bb.b
  %i.r = and i32 %i.m, 64
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %._crit_edge, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.s = and i32 %i.m, -97
  store i32 %i.s, ptr %i.l, align 4
  tail call void @_ZN6hermes2vm8Callable20defineLazyPropertiesENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  %.sroa.0.0.copyload.i.i.i46 = load i64, ptr %0, align 8, !tbaa !40
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i46, 281474976710655
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.sroa.0.0.copyload.i.i8.i47 = load i32, ptr %i.v, align 4, !tbaa !3
  %i.w = zext i32 %.sroa.0.0.copyload.i.i8.i47 to i64
  %i.x = add i64 %i.w, %i.d
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.y, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 %3, ptr noundef nonnull align 4 dereferenceable(8) %4) #17
  %i.aa = and i64 %i.z, 4294967296
  %.not104 = icmp eq i64 %i.aa, 0
  %.sroa.0.0.copyload.i.i50.pre = load i64, ptr %0, align 8, !tbaa !40
  %.pre119 = and i64 %.sroa.0.0.copyload.i.i50.pre, 281474976710655
  %.pre121 = inttoptr i64 %.pre119 to ptr         ; 2 uses
  br i1 %.not104, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.pre-phi122 = phi ptr [ %i.k, %bb.d ], [ %.pre121, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre-phi122, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 128
  %.not36 = icmp eq i32 %i.ad, 0
  br i1 %.not36, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %._crit_edge
  %i.ae = load i16, ptr %4, align 4
  %i.af = or i16 %i.ae, 1024
  store i16 %i.af, ptr %4, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %2, ptr %i.ag, align 4, !tbaa !367
  br label %.thread.sink.split

bb.g:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre-phi122, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !315 ; 2 uses
  %.not105 = icmp eq i32 %i.ai, 0
  br i1 %.not105, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add i64 %i.aj, %i.d
  %i.al = or i64 %i.ak, -281474976710656          ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = icmp ult ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !46
  store i64 %i.al, ptr %i.ap, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.au = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.an, i64 %i.al) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i55.pre.pre = load i64, ptr %i.au, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.copyload.i.i55.pre = phi i64 [ %i.al, %bb.i ], [ %.sroa.0.0.copyload.i.i55.pre.pre, %bb.j ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.i ], [ %i.au, %bb.j ] ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE:bb.a
  %.sroa.084.0.extract.trunc = trunc i40 %i.w to i32 ; 2 uses
  %i.ac = load i32, ptr %i.y, align 4
  %i.ad = lshr i32 %i.ac, 24
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !319
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !353
  %i.aj = tail call i32 %i.ai(ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.084.0.extract.trunc) #17, !inline_history !354 ; 3 uses
  %i.ak = and i32 %i.aj, 65536
  %.not138 = icmp eq i32 %i.ak, 0
  br i1 %.not138, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.080.0.insert.ext = and i32 %i.aj, 65535
  store i32 %.sroa.080.0.insert.ext, ptr %5, align 4
  %i.al = trunc i32 %i.aj to i16
  %i.am = or i16 %i.al, 32
  store i16 %i.am, ptr %5, align 4
  store i32 %.sroa.084.0.extract.trunc, ptr %i.i, align 4, !tbaa !367
  br label %.thread126

bb.f:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.0.0.copyload.i.i.i32 = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ao = zext i32 %.sroa.0.0.copyload.i.i.i32 to i64
  %i.ap = add i64 %i.ao, %i.j
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.as = load i8, ptr %i.ar, align 2
  %i.at = and i8 %i.as, 4
  %i.au = icmp ne i8 %i.at, 0
  %i.av = and i32 %i.aa, 224
  %i.aw = icmp ne i32 %i.av, 0
  %or.cond133 = or i1 %i.aw, %i.au
  br i1 %or.cond133, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread: ; preds = %bb.b, %bb.f, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %i.ax = icmp ugt i32 %.sroa.060.0, 536870909
  br i1 %i.ax, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread
  %i.ay = tail call ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #17 ; 2 uses
  %.not139 = icmp eq ptr %i.ay, inttoptr (i64 -1 to ptr)
  br i1 %.not139, label %bb.h, label %.thread119, !prof !39

.thread119:                                       ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i36 = load i64, ptr %i.ay, align 8, !tbaa !40
  %i.az = trunc i64 %.sroa.0.0.copyload.i.i.i36 to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = and i16 %.sroa.0103.0, -256
  br label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

bb.i:                                             ; preds = %.thread119, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread
  %.sroa.060.1 = phi i32 [ %i.az, %.thread119 ], [ %.sroa.060.0, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread ] ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.04.0.copyload, align 8, !tbaa !40
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %.sroa.0.0.copyload.i.i8.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.be = zext i32 %.sroa.0.0.copyload.i.i8.i.i.i to i64
  %i.bf = add i64 %i.be, %i.j
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = tail call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.bg, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %.sroa.060.1, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %5) #17
  %i.bi = and i64 %i.bh, 4294967296
  %.not140 = icmp eq i64 %i.bi, 0
  br i1 %.not140, label %bb.j, label %.thread126

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i37 = load i64, ptr %.sroa.04.0.copyload, align 8, !tbaa !40
  %i.bj = and i64 %.sroa.0.0.copyload.i.i.i37, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %i.bm, 200
  %or.cond = icmp eq i32 %i.bn, 0
  br i1 %or.cond, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %.critedge.i, !prof !369

.critedge.i:                                      ; preds = %bb.j
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !43  ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 192 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !46 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 200
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !56
  %i.bt = icmp ult ptr %i.bq, %i.bs
  br i1 %i.bt, label %bb.k, label %bb.l, !prof !42

bb.k:                                             ; preds = %.critedge.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !46
  store i64 -844424930131968, ptr %i.bq, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.l:                                             ; preds = %.critedge.i
  %i.bv = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bo, i64 -844424930131968) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.bq, %bb.k ], [ %i.bv, %bb.l ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i40 = load i64, ptr %.sroa.04.0.copyload, align 8, !tbaa !40
  %i.bw = and i64 %.sroa.0.0.copyload.i.i.i40, 281474976710655
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4            ; 3 uses
  %i.ca = and i32 %i.bz, 8
  %.not46.i = icmp eq i32 %i.ca, 0
  br i1 %.not46.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.sroa.0.0.copyload.i.i.i41 = load i64, ptr %2, align 8, !tbaa !40 ; 3 uses
  %i.cb = icmp ult i64 %.sroa.0.0.copyload.i.i.i41, -1970324836974592
  br i1 %i.cb, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44: ; preds = %bb.m
  %i.cc = bitcast i64 %.sroa.0.0.copyload.i.i.i41 to double ; 2 uses
  %i.cd = fptoui double %i.cc to i32              ; 3 uses
  %i.ce = uitofp i32 %i.cd to double
  %i.cf = fcmp oeq double %i.cc, %i.ce
  %i.cg = icmp ne i32 %i.cd, -1
  %or.cond.i.i43 = and i1 %i.cg, %i.cf
  %i.ch = zext i32 %i.cd to i64
  %i.ci = or disjoint i64 %i.ch, 4294967296
  %i.cj = trunc nuw nsw i64 %i.ci to i40
  %i.ck = select i1 %or.cond.i.i43, i40 %i.cj, i40 0 ; 3 uses
  %.not142 = icmp samesign ult i40 %i.ck, 4294967296
  %extract.t = trunc i40 %i.ck to i32             ; 2 uses
  %extract.t145 = icmp samesign ugt i40 %i.ck, 4294967295 ; 2 uses
  br i1 %.not142, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread, label %bb.q

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread: ; preds = %bb.m, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44
  %.off0 = phi i32 [ %extract.t, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44 ], [ 0, %bb.m ]
  %.off32 = phi i1 [ %extract.t145, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44 ], [ false, %bb.m ]
  %.mask.i = and i64 %.sroa.0.0.copyload.i.i.i41, -140737488355328
  %i.cl = icmp eq i64 %.mask.i, -1266637395197952
  br i1 %i.cl, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread
  %i.cm = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326 ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, -844424930131969
  %i.co = and i64 %i.cm, 281474976710655
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = and i1 %i.cn, %i.cp
  br i1 %i.cq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #17
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = or i64 %i.cs, -844424930131968
  store i64 %i.ct, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cu = tail call i64 @_ZN6hermes2vm12toArrayIndexERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i) #17 ; 2 uses
  %extract.t144 = trunc i64 %i.cu to i32
  %i.cv = and i64 %i.cu, 4294967296
  %extract.t149.not = icmp eq i64 %i.cv, 0
  br i1 %extract.t149.not, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %bb.r

bb.q:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44
  %.sroa.070.1.off0 = phi i32 [ %extract.t, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44 ], [ %.off0, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread ]
  %.sroa.070.1.off32 = phi i1 [ %extract.t145, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44 ], [ %.off32, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread ]
  br i1 %.sroa.070.1.off32, label %bb.r, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.070.1.off0166 = phi i32 [ %extract.t144, %bb.p ], [ %.sroa.070.1.off0, %bb.q ] ; 2 uses
  %.sroa.0.0.copyload.i.i45 = load i64, ptr %.sroa.04.0.copyload, align 8, !tbaa !40
  %i.cw = and i64 %.sroa.0.0.copyload.i.i45, 281474976710655
  %i.cx = inttoptr i64 %i.cw to ptr               ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = lshr i32 %i.cy, 24
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !319
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !353
  %i.df = tail call i32 %i.de(ptr noundef nonnull %i.cx, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.070.1.off0166) #17, !inline_history !354 ; 3 uses
  %i.dg = and i32 %i.df, 65536
  %.not155 = icmp eq i32 %i.dg, 0
  br i1 %.not155, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.067.0.insert.ext = and i32 %i.df, 65535
  store i32 %.sroa.067.0.insert.ext, ptr %5, align 4
  %i.dh = trunc i32 %i.df to i16
  %i.di = or i16 %i.dh, 32
  store i16 %i.di, ptr %5, align 4
  store i32 %.sroa.070.1.off0166, ptr %i.i, align 4, !tbaa !367
  br label %.thread126

bb.t:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.dj = and i32 %i.bz, 64
  %.not156 = icmp eq i32 %i.dj, 0
  br i1 %.not156, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = and i32 %i.bz, -73
  store i32 %i.dk, ptr %i.by, align 4
  tail call void @_ZN6hermes2vm8Callable20defineLazyPropertiesENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  %i.dl = tail call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.dm = trunc nuw i32 %i.dl to i16
  br label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit: ; preds = %bb.u, %bb.h
  %.sroa.060.3 = phi i32 [ %.sroa.060.1, %bb.u ], [ %.sroa.060.0, %bb.h ]
  %.sroa.0103.7 = phi i16 [ %i.dm, %bb.u ], [ %i.ba, %bb.h ] ; 3 uses
  %.mask = and i16 %.sroa.0103.7, 255
  %i.dn = icmp eq i16 %.mask, 0
  br i1 %i.dn, label %.thread126, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread, !prof !360

_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread: ; preds = %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit
  %i.do = and i16 %.sroa.0103.7, 256
  %.not157 = icmp eq i16 %i.do, 0
  br i1 %.not157, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %.thread126

_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread: ; preds = %bb.f, %bb.d, %bb.j, %bb.q, %bb.p, %bb.r, %bb.t, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread
  %.sroa.060.3170176 = phi i32 [ %.sroa.060.3, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread ], [ %.sroa.060.0, %bb.f ], [ %.sroa.060.0, %bb.d ], [ %.sroa.060.1, %bb.j ], [ %.sroa.060.1, %bb.q ], [ %.sroa.060.1, %bb.p ], [ %.sroa.060.1, %bb.r ], [ %.sroa.060.1, %bb.t ] ; 5 uses
  %.sroa.0103.7171175 = phi i16 [ %.sroa.0103.7, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.j ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.r ], [ 1, %bb.t ]
  %i.dp = load ptr, ptr %3, align 8, !tbaa !316   ; 3 uses
  %.sroa.0.0.copyload.i.i49 = load i64, ptr %i.dp, align 8, !tbaa !40
  %i.dq = and i64 %.sroa.0.0.copyload.i.i49, 281474976710655
  %i.dr = inttoptr i64 %i.dq to ptr               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4            ; 2 uses
  %i.du = and i32 %i.dt, 32
  %.not = icmp eq i32 %i.du, 0
  br i1 %.not, label %bb.w, label %bb.v, !prof !42

bb.v:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread
  %i.dv = load i16, ptr %5, align 4
  %i.dw = or i16 %i.dv, 260
  store i16 %i.dw, ptr %5, align 4
  store i32 %.sroa.060.3170176, ptr %i.i, align 4, !tbaa !367
  %i.dx = zext i32 %.sroa.060.3170176 to i64
  %i.dy = or disjoint i64 %i.dx, -1266637395197952
  %i.dz = load ptr, ptr %4, align 8, !tbaa !351
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !326
  br label %.thread126

bb.w:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread
  %i.ea = and i32 %i.dt, 128
  %.not26 = icmp eq i32 %i.ea, 0
  br i1 %.not26, label %bb.y, label %bb.x, !prof !42

bb.x:                                             ; preds = %bb.w
  %i.eb = load i16, ptr %5, align 4
  %i.ec = or i16 %i.eb, 1024
  store i16 %i.ec, ptr %5, align 4
  store i32 %.sroa.060.3170176, ptr %i.i, align 4, !tbaa !367
  %i.ed = zext i32 %.sroa.060.3170176 to i64
  %i.ee = or disjoint i64 %i.ed, -1266637395197952
  %i.ef = load ptr, ptr %4, align 8, !tbaa !351
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !326
  br label %.thread126

bb.y:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0.0.copyload.i.i.i52 = load i32, ptr %i.eg, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i52, 0
  %i.eh = zext i32 %.sroa.0.0.copyload.i.i.i52 to i64
  %i.ei = add i64 %i.eh, %i.j
  %i.ej = or i64 %i.ei, -281474976710656
  %i.ek = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.ej ; 2 uses
  store i64 %i.ek, ptr %i.dp, align 8, !tbaa !326
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !329
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.l
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !351
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 128
  store i32 %i.h, ptr %i.g, align 8, !tbaa !349
  store ptr %i.eo, ptr %i.m, align 8, !tbaa !56
  store ptr %i.f, ptr %i.e, align 8, !tbaa !46
  %i.ep = and i64 %i.ek, 281474976710655
  %.not165 = icmp eq i64 %i.ep, 0
  br i1 %.not165, label %.thread126, label %bb.b, !llvm.loop !371

.thread126:                                       ; preds = %bb.i, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit, %bb.y, %bb.s, %bb.e, %bb.x, %bb.v
  %.2 = phi i32 [ 1, %bb.x ], [ 1, %bb.v ], [ 1, %bb.s ], [ 1, %bb.e ], [ 1, %bb.i ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit ], [ 1, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread ], [ 1, %bb.y ]
  %i.eq = load ptr, ptr %i.k, align 8, !tbaa !329
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.l
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !351
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 128
  store i32 %i.h, ptr %i.g, align 8, !tbaa !349
  store ptr %i.et, ptr %i.m, align 8, !tbaa !56
  store ptr %i.f, ptr %i.e, align 8, !tbaa !46
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm8JSObject21getComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !326
  %i.b = icmp ugt i64 %i.a, -281474976710657
  br i1 %i.b, label %bb.b, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2)
  br label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.sroa.02.0.i, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.d, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.d = tail call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 0, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, i32 %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %11 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 0, ptr %6, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !367
  %i.b = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %4, 2
  %.not76 = icmp eq i32 %i.c, 0
  br i1 %.not76, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !42

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !305
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 10, ptr %i.e, align 8, !tbaa !308
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !309
  store ptr @.str.11, ptr %9, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.i = call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  store ptr %i.j, ptr %11, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.l = extractvalue { ptr, i64 } %i.i, 1
  store i64 %i.l, ptr %i.k, align 8
  call void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !305
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 15, ptr %i.n, align 8, !tbaa !308
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !309
  store ptr @.str.12, ptr %12, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.p, align 8, !tbaa !310
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %12)
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime19raiseReferenceErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.c:                                             ; preds = %bb.a
  %i.r = load i16, ptr %6, align 8                ; 3 uses
  %i.s = and i16 %i.r, 256
  %.not48 = icmp eq i16 %i.s, 0
  %i.t = and i16 %i.r, 1296
  %or.cond53 = icmp eq i16 %i.t, 0
  br i1 %or.cond53, label %bb.d, label %.critedge, !prof !369

bb.d:                                             ; preds = %bb.c
  %.not52 = icmp eq ptr %5, null
  br i1 %.not52, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.u, align 4, !tbaa !3 ; 2 uses
  %i.v = ptrtoint ptr %1 to i64
  %i.w = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.x = add i64 %i.w, %i.v
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.aa = load i8, ptr %i.z, align 2
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm8JSObject17hasNamedOrIndexedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE:bb.a
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ap = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ai, i64 %i.ag) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = call i32 @_ZN6hermes2vm7JSProxy8hasNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDE(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17
  %i.ar = and i32 %i.aq, 65535
  br label %_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE.exit

_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE.exit: ; preds = %.thread, %bb.e, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit.i
  %.sroa.0.0.i = phi i32 [ %i.ar, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit.i ], [ 1, %.thread ], [ 257, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE.exit
  %.sroa.017.1 = phi i32 [ %.sroa.0.0.i, %_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE.exit ], [ 257, %bb.c ], [ 1, %bb.d ]
  ret i32 %.sroa.017.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject11hasComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 6 uses
  %4 = alloca %"class.hermes::vm::MutableHandle.209", align 8 ; 4 uses
  %5 = alloca %"class.hermes::vm::MutableHandle.214", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16
  %.not = icmp ne i32 %i.e, 0
  %.pr.pre37 = load i64, ptr %2, align 8, !tbaa !40 ; 3 uses
  %i.f = icmp ult i64 %.pr.pre37, -1970324836974592
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit: ; preds = %bb.a
  %i.g = bitcast i64 %.pr.pre37 to double         ; 2 uses
  %i.h = fptoui double %i.g to i32                ; 3 uses
  %i.i = uitofp i32 %i.h to double
  %i.j = fcmp oeq double %i.g, %i.i
  %i.k = icmp ne i32 %i.h, -1
  %or.cond.i.i = and i1 %i.k, %i.j
  %i.l = zext i32 %i.h to i64
  %i.m = or disjoint i64 %i.l, 4294967296
  %i.n = trunc nuw nsw i64 %i.m to i40
  %i.o = select i1 %or.cond.i.i, i40 %i.n, i40 0  ; 2 uses
  %.not34 = icmp samesign ult i40 %i.o, 4294967296
  br i1 %.not34, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %.sroa.019.0.extract.trunc = trunc i40 %i.o to i32
  %i.p = load i32, ptr %i.b, align 4
  %i.q = lshr i32 %i.p, 24
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !319
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !396
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.019.0.extract.trunc) #17, !inline_history !397
  br i1 %i.w, label %bb.n, label %..threadthread-pre-split_crit_edge

..threadthread-pre-split_crit_edge:               ; preds = %bb.b
  %.pr.pre = load i64, ptr %2, align 8, !tbaa !326
  br label %.thread

.thread:                                          ; preds = %bb.a, %..threadthread-pre-split_crit_edge
  %i.x = phi i64 [ %.pr.pre37, %bb.a ], [ %.pr.pre, %..threadthread-pre-split_crit_edge ]
  %i.y = icmp ugt i64 %i.x, -281474976710657
  br i1 %i.y, label %bb.c, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !398

bb.c:                                             ; preds = %.thread
  %i.z = tail call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2)
  br label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, %.thread, %bb.c
  %.sroa.02.0.i = phi ptr [ %i.z, %bb.c ], [ %2, %.thread ], [ %2, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit ] ; 3 uses
  %.not35 = icmp eq ptr %.sroa.02.0.i, inttoptr (i64 -1 to ptr)
  br i1 %.not35, label %bb.n, label %bb.d, !prof !39

bb.d:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.aa, align 4, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 192 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !46
  store i64 -1266636858327041, ptr %i.ae, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ac, i64 -1266636858327041) #17
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre39 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre41 = load ptr, ptr %.phi.trans.insert40, align 8, !tbaa !56
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.e, %bb.f
  %i.ak = phi ptr [ %i.ag, %bb.e ], [ %.pre41, %bb.f ]
  %i.al = phi ptr [ %i.ai, %bb.e ], [ %.pre39, %bb.f ] ; 4 uses
  %i.am = phi ptr [ %i.ac, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.aj, %bb.f ]
  store ptr %.0.i.i.i.i.i.i, ptr %4, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.an = icmp ult ptr %i.al, %i.ak
  br i1 %i.an, label %bb.g, label %bb.h, !prof !42

bb.g:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !46
  store i64 -281474976710656, ptr %i.al, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.h:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.aq = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.am, i64 -281474976710656) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i17 = phi ptr [ %i.al, %bb.g ], [ %i.aq, %bb.h ] ; 3 uses
  store ptr %.0.i.i.i.i.i.i17, ptr %5, align 8, !tbaa !316
  %i.ar = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.at = load i64, ptr %.0.i.i.i.i.i.i17, align 8, !tbaa !326 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ay = load i16, ptr %3, align 4
  %i.az = and i16 %i.ay, 1024
  %.not15 = icmp eq i16 %i.az, 0
  br i1 %.not15, label %bb.m, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.ba = call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i) ; 2 uses
  %.not36 = icmp eq ptr %i.ba, inttoptr (i64 -1 to ptr)
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = call i32 @_ZN6hermes2vm7JSProxy11hasComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr nonnull %.0.i.i.i.i.i.i17, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.ba) #17
  %i.bc = and i32 %i.bb, 65535
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit, %bb.l
  %.sroa.023.3 = phi i32 [ %i.bc, %bb.l ], [ 256, %bb.k ], [ 256, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit ], [ 1, %bb.i ], [ 257, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %bb.m, %bb.b
  %.sroa.023.5 = phi i32 [ 257, %bb.b ], [ %.sroa.023.3, %bb.m ], [ 256, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ]
  ret i32 %.sroa.023.5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, ptr %4, i32 %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 12 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %11 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %15 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %16 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %17 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %18 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %19 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %20 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %21 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %22 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %23 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %24 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %25 = alloca %"class.hermes::vm::MutableHandle.209", align 8 ; 3 uses
  %26 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 5 uses
  %27 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %28 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %29 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %30 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %31 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %32 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 0, ptr %6, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 -1, ptr %i.a, align 4, !tbaa !367
  %i.b = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 14, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 5 uses
  %.not = icmp eq ptr %i.b, null
  %.sroa.0.0.copyload.i.i.i134.pre = load i64, ptr %0, align 8, !tbaa !40 ; 3 uses
  br i1 %.not, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i134.pre, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 10 uses
  %i.e = icmp ne ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %..critedge112_crit_edge, label %bb.c, !prof !39

..critedge112_crit_edge:                          ; preds = %bb.b
  %.pre = load i16, ptr %6, align 8
  br label %.critedge112

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %4, align 8, !tbaa !326
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i.i134.pre, %i.f
  %.pre269 = load i16, ptr %6, align 8            ; 2 uses
  %i.h = and i16 %.pre269, 1364
  %or.cond253 = icmp eq i16 %i.h, 4
  %or.cond = select i1 %i.g, i1 %or.cond253, i1 false, !prof !399
  br i1 %or.cond, label %bb.d, label %.critedge112, !prof !399

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i115 = load i64, ptr %3, align 8, !tbaa !40 ; 9 uses
  %i.i = ashr i64 %.sroa.0.0.copyload.i.i.i115, 47
  switch i64 %i.i, label %bb.l [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.e
    i64 -11, label %bb.f
    i64 -10, label %bb.g
    i64 -9, label %bb.h
    i64 -6, label %bb.i
    i64 -5, label %bb.i
    i64 -4, label %bb.j
    i64 -3, label %bb.j
    i64 -2, label %bb.k
    i64 -1, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.f:                                             ; preds = %bb.d
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.g:                                             ; preds = %bb.d
  %i.j = trunc i64 %.sroa.0.0.copyload.i.i.i115 to i1
  %i.k = select i1 %i.j, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.h:                                             ; preds = %bb.d
  %i.l = trunc i64 %.sroa.0.0.copyload.i.i.i115 to i32
  %i.m = shl i32 %i.l, 3
  %i.n = or disjoint i32 %i.m, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %.sroa.0.0.copyload.i.i.i115, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = or i32 %i.q, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.j:                                             ; preds = %bb.d, %bb.d
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %.sroa.0.0.copyload.i.i.i115, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = or i32 %i.u, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.k:                                             ; preds = %bb.d, %bb.d
  %i.w = ptrtoint ptr %1 to i64
  %i.x = sub i64 %.sroa.0.0.copyload.i.i.i115, %i.w
  %i.y = trunc i64 %i.x to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.l:                                             ; preds = %bb.d
  %i.z = bitcast i64 %.sroa.0.0.copyload.i.i.i115 to double
  %i.aa = fptosi double %i.z to i32
  %i.ab = shl i32 %i.aa, 3                        ; 2 uses
  %i.ac = ashr exact i32 %i.ab, 3
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = bitcast double %i.ad to i64
  %i.af = icmp eq i64 %.sroa.0.0.copyload.i.i.i115, %i.ae
  br i1 %i.af, label %bb.m, label %bb.n, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.ag = or disjoint i32 %i.ab, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.aj, %i.al
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.o, label %bb.p, !prof !39

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.an = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.am, i32 noundef 16) #17
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.p:                                             ; preds = %bb.n
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !34
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.p, %bb.o
  %i.ao = phi ptr [ %i.an, %bb.o ], [ %i.ai, %bb.p ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i115, ptr %i.ap, align 8, !tbaa !311
  store i32 402653200, ptr %i.ao, align 8, !tbaa !41
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %1 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = or i32 %i.at, 3
  %.sroa.0.0.copyload.i.i.i116.pre = load i64, ptr %0, align 8, !tbaa !40
  %.pre277 = and i64 %.sroa.0.0.copyload.i.i.i116.pre, 281474976710655
  %.pre279 = inttoptr i64 %.pre277 to ptr
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.m, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.pre-phi280 = phi ptr [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %bb.g ], [ %i.d, %bb.h ], [ %i.d, %bb.i ], [ %i.d, %bb.j ], [ %i.d, %bb.k ], [ %i.d, %bb.m ], [ %.pre279, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %.sroa.04.0.i = phi i32 [ 7, %bb.d ], [ 14, %bb.e ], [ 15, %bb.f ], [ %i.k, %bb.g ], [ %i.n, %bb.h ], [ %i.r, %bb.i ], [ %i.v, %bb.j ], [ %i.y, %bb.k ], [ %i.ag, %bb.m ], [ %i.au, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 4 uses
  %.sroa.049.0.copyload = load i64, ptr %6, align 8 ; 2 uses
  %.sroa.1.0.extract.shift.i = lshr i64 %.sroa.049.0.copyload, 32 ; 2 uses
  %i.av = icmp ult i64 %.sroa.049.0.copyload, 21474836480
  br i1 %i.av, label %bb.q, label %bb.s, !prof !42

bb.q:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre-phi280, i64 20
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.1.0.extract.shift.i ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !73
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = and i64 %i.ba, 1125899902648320
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = icmp eq ptr %i.az, %i.bc
  br i1 %i.bd, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i, label %bb.r, !prof !42

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, i32 %.sroa.04.0.i) #17
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i: ; preds = %bb.r, %bb.q
  store i32 %.sroa.04.0.i, ptr %i.ax, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.s:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre-phi280, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bg = ptrtoint ptr %1 to i64
  %i.bh = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = add nuw nsw i64 %.sroa.1.0.extract.shift.i, 4294967291
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = and i64 %i.bk, 4294967295
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !73
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = and i64 %i.bq, -4194304
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = icmp eq ptr %i.bp, %i.bs
  br i1 %i.bt, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i, label %bb.t, !prof !42

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, i32 %.sroa.04.0.i) #17
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i: ; preds = %bb.t, %bb.s
  store i32 %.sroa.04.0.i, ptr %i.bn, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

.critedge112:                                     ; preds = %..critedge112_crit_edge, %bb.c
  %i.bv = phi i16 [ %.pre, %..critedge112_crit_edge ], [ %.pre269, %bb.c ] ; 5 uses
  %i.bw = and i16 %i.bv, 16
  %.not100 = icmp eq i16 %i.bw, 0
  br i1 %.not100, label %bb.z, label %bb.u, !prof !42

bb.u:                                             ; preds = %.critedge112
  %.sroa.045.0.copyload = load i64, ptr %6, align 8 ; 2 uses
  %.sroa.1.0.extract.shift.i117 = lshr i64 %.sroa.045.0.copyload, 32 ; 2 uses
  %i.bx = icmp ult i64 %.sroa.045.0.copyload, 21474836480
  br i1 %i.bx, label %bb.v, label %bb.w, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.pre275 = ptrtoint ptr %1 to i64
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !46
  store i64 %i.dk, ptr %i.do, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dt = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dm, i64 %i.dk) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.ab, %bb.ac
  %.0.i.i.i.i.i.i = phi ptr [ %i.do, %bb.ab ], [ %i.dt, %bb.ac ]
  %i.du = call i32 @_ZN6hermes2vm7JSProxy8setNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES9_(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, ptr %4) #17 ; 3 uses
  %.mask = and i32 %i.du, 255
  %i.dv = icmp eq i32 %.mask, 0
  br i1 %i.dv, label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit, label %bb.ad, !prof !39

bb.ad:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.dw = and i32 %i.du, 256
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = trunc i32 %5 to i1
  %or.cond254 = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond254, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit124, label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit124:         ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 1, ptr %i.dz, align 8, !tbaa !305
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 39, ptr %i.ea, align 8, !tbaa !308
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.eb, align 8, !tbaa !309
  store ptr @.str.15, ptr %15, align 8, !tbaa !41
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 3, ptr %i.ec, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ee = call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ed, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0
  store ptr %i.ef, ptr %17, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eh = extractvalue { ptr, i64 } %i.ee, 1
  store i64 %i.eh, ptr %i.eg, align 8
  call void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(48) %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 1, ptr %i.ei, align 8, !tbaa !305
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 1, ptr %i.ej, align 8, !tbaa !308
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 0, ptr %i.ek, align 8, !tbaa !309
  store ptr @.str.16, ptr %18, align 8, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 3, ptr %i.el, align 8, !tbaa !310
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(48) %18)
  %i.em = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %13) #17
  %i.en = and i32 %i.em, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.ae:                                            ; preds = %bb.z
  %i.eo = and i16 %i.bv, 4
  %.not102 = icmp eq i16 %i.eo, 0
  br i1 %.not102, label %bb.af, label %bb.ak, !prof !39

bb.af:                                            ; preds = %bb.ae
  %i.ep = and i16 %i.bv, 512
  %.not108 = icmp eq i16 %i.ep, 0
  br i1 %.not108, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = zext i32 %2 to i64
  %i.er = or disjoint i64 %i.eq, -1266637395197952 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !43 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 192 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !46 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 200
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !56
  %i.ey = icmp ult ptr %i.ev, %i.ex
  br i1 %i.ey, label %bb.ah, label %bb.ai, !prof !42

bb.ah:                                            ; preds = %bb.ag
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %i.ez, ptr %i.eu, align 8, !tbaa !46
  store i64 %i.er, ptr %i.ev, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fa = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.et, i64 %i.er) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit: ; preds = %bb.ah, %bb.ai
  %.0.i.i.i.i.i.i127 = phi ptr [ %i.ev, %bb.ah ], [ %i.fa, %bb.ai ]
  %i.fb = call fastcc noundef i32 @_ZN6hermes2vmL36raiseErrorForOverridingStaticBuiltinENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS1_INS0_8SymbolIDEEE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i127)
  %i.fc = and i32 %i.fb, 255
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.aj:                                            ; preds = %bb.af
  %i.fd = trunc i32 %5 to i1
  br i1 %i.fd, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit129, label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit129:         ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.fe = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i32 1, ptr %i.fe, align 8, !tbaa !305
  %i.ff = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i64 37, ptr %i.ff, align 8, !tbaa !308
  %i.fg = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i64 0, ptr %i.fg, align 8, !tbaa !309
  store ptr @.str.17, ptr %21, align 8, !tbaa !41
  %i.fh = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 3, ptr %i.fh, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.fj = call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.fi, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.fk = extractvalue { ptr, i64 } %i.fj, 0
  store ptr %i.fk, ptr %23, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.fm = extractvalue { ptr, i64 } %i.fj, 1
  store i64 %i.fm, ptr %i.fl, align 8
  call void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %23)
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %20, ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(48) %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.fn = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 1, ptr %i.fn, align 8, !tbaa !305
  %i.fo = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i64 1, ptr %i.fo, align 8, !tbaa !308
  %i.fp = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 0, ptr %i.fp, align 8, !tbaa !309
  store ptr @.str.16, ptr %24, align 8, !tbaa !41
  %i.fq = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 3, ptr %i.fq, align 8, !tbaa !310
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %19, ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(48) %24)
  %i.fr = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %19) #17
  %i.fs = and i32 %i.fr, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.ak:                                            ; preds = %bb.ae
  %i.ft = and i16 %i.bv, 64
  %.not103 = icmp eq i16 %i.ft, 0
  %or.cond256 = or i1 %i.e, %.not103
  br i1 %or.cond256, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fu = icmp eq i32 %2, 85
  call void @llvm.assume(i1 %i.fu)
  %i.fv = call i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %3, i32 %5) #17
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.am:                                            ; preds = %bb.ak, %bb.a
  %i.fw = or i64 %.sroa.0.0.copyload.i.i.i134.pre, -281474976710656 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !43 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 192 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !46 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 200
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !56 ; 2 uses
  %i.gd = icmp ult ptr %i.ga, %i.gc
  br i1 %i.gd, label %bb.an, label %bb.ao, !prof !42

bb.an:                                            ; preds = %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  store ptr %i.ge, ptr %i.fz, align 8, !tbaa !46
  store i64 %i.fw, ptr %i.ga, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.ao:                                            ; preds = %bb.am
  %i.gf = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fy, i64 %i.fw) #17
  %.pre270 = load ptr, ptr %i.fx, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre270, i64 192
  %.pre271 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.phi.trans.insert272 = getelementptr inbounds nuw i8, ptr %.pre270, i64 200
  %.pre273 = load ptr, ptr %.phi.trans.insert272, align 8, !tbaa !56
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.an, %bb.ao
  %i.gg = phi ptr [ %i.gc, %bb.an ], [ %.pre273, %bb.ao ]
  %i.gh = phi ptr [ %i.ge, %bb.an ], [ %.pre271, %bb.ao ] ; 3 uses
  %i.gi = phi ptr [ %i.fy, %bb.an ], [ %.pre270, %bb.ao ] ; 2 uses
  %.0.i.i.i.i.i.i135 = phi ptr [ %i.ga, %bb.an ], [ %i.gf, %bb.ao ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  %i.gj = icmp ult ptr %i.gh, %i.gg
  br i1 %i.gj, label %bb.ap, label %bb.aq, !prof !42

bb.ap:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 192
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %i.gl, ptr %i.gk, align 8, !tbaa !46
  store i64 -1266636858327041, ptr %i.gh, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.aq:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.gm = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gi, i64 -1266636858327041) #17 ; 0 uses
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.ap, %bb.aq
  %.sroa.0.0.copyload.i137 = load i64, ptr %0, align 8, !tbaa !40
  %i.gn = load i64, ptr %4, align 8, !tbaa !326   ; 4 uses
  %.not104 = icmp eq i64 %.sroa.0.0.copyload.i137, %i.gn
  br i1 %.not104, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.0.0.copyload.i.i138 = load i64, ptr %.0.i.i.i.i.i.i135, align 8, !tbaa !40 ; 2 uses
  %i.go = and i64 %.sroa.0.0.copyload.i.i138, 281474976710655 ; 2 uses
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = and i32 %i.gr, 160
  %or.cond258.not = icmp eq i32 %i.gs, 0
  br i1 %or.cond258.not, label %bb.bx, label %.critedge.thread

.critedge:                                        ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.gt = icmp ugt i64 %i.gn, -844424930131969
  br i1 %i.gt, label %bb.as, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

bb.as:                                            ; preds = %.critedge
  %i.gu = and i64 %i.gn, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = add i32 %i.gw, -436207616
  %i.gy = icmp ult i32 %i.gx, 855638016
  %i.gz = or i64 %i.gn, -281474976710656
  %i.ha = select i1 %i.gy, i64 %i.gz, i64 -281474976710656
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit: ; preds = %.critedge, %bb.as
  %i.hb = phi i64 [ %i.ha, %bb.as ], [ -281474976710656, %.critedge ] ; 3 uses
  store i64 %i.hb, ptr %.0.i.i.i.i.i.i135, align 8, !tbaa !326
  %.pre274 = and i64 %i.hb, 281474976710655
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ar, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit
  %.pre-phi = phi i64 [ %i.go, %bb.ar ], [ %.pre274, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ] ; 2 uses
  %i.hc = phi i64 [ %.sroa.0.0.copyload.i.i138, %bb.ar ], [ %i.hb, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ]
  %i.hd = icmp ugt i64 %i.hc, -844424930131969
  %i.he = icmp ne i64 %.pre-phi, 0
  %i.hf = and i1 %i.hd, %i.he
  br i1 %i.hf, label %bb.at, label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152

bb.at:                                            ; preds = %.critedge.thread
  %i.hg = inttoptr i64 %.pre-phi to ptr
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %.sroa.0.0.copyload.i.i8.i.i.i = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hi = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.hj = zext i32 %.sroa.0.0.copyload.i.i8.i.i.i to i64
  %i.hk = add i64 %i.hj, %i.hi
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.hl, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %6) #17
  %i.hn = and i64 %i.hm, 4294967296
  %.not261 = icmp eq i64 %i.hn, 0
  br i1 %.not261, label %bb.bm, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ho = load i16, ptr %6, align 8
  %i.hp = and i16 %i.ho, 20
  %.not267 = icmp eq i16 %i.hp, 4
  br i1 %.not267, label %bb.av, label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152, !prof !42

bb.av:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i.i.i142 = load i64, ptr %3, align 8, !tbaa !40 ; 9 uses
  %i.hq = ashr i64 %.sroa.0.0.copyload.i.i.i142, 47
  switch i64 %i.hq, label %bb.bd [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146
    i64 -12, label %bb.aw
    i64 -11, label %bb.ax
    i64 -10, label %bb.ay
    i64 -9, label %bb.az
    i64 -6, label %bb.ba
    i64 -5, label %bb.ba
    i64 -4, label %bb.bb
    i64 -3, label %bb.bb
    i64 -2, label %bb.bc
    i64 -1, label %bb.bc
  ]

bb.aw:                                            ; preds = %bb.av
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146

bb.ax:                                            ; preds = %bb.av
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146

bb.ay:                                            ; preds = %bb.av
  %i.hr = trunc i64 %.sroa.0.0.copyload.i.i.i142 to i1
  %i.hs = select i1 %i.hr, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146

bb.az:                                            ; preds = %bb.av
  %i.ht = trunc i64 %.sroa.0.0.copyload.i.i.i142 to i32
  %i.hu = shl i32 %i.ht, 3
  %i.hv = or disjoint i32 %i.hu, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146

bb.ba:                                            ; preds = %bb.av, %bb.av
  %i.hw = sub i64 %.sroa.0.0.copyload.i.i.i142, %i.hi
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = or i32 %i.hx, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146

bb.bb:                                            ; preds = %bb.av, %bb.av
  %i.hz = sub i64 %.sroa.0.0.copyload.i.i.i142, %i.hi
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = or i32 %i.ia, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146

bb.bc:                                            ; preds = %bb.av, %bb.av
  %i.ic = sub i64 %.sroa.0.0.copyload.i.i.i142, %i.hi
  %i.id = trunc i64 %i.ic to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146

bb.bd:                                            ; preds = %bb.av
  %i.ie = bitcast i64 %.sroa.0.0.copyload.i.i.i142 to double
  %i.if = fptosi double %i.ie to i32
  %i.ig = shl i32 %i.if, 3                        ; 2 uses
  %i.ih = ashr exact i32 %i.ig, 3
  %i.ii = sitofp i32 %i.ih to double
  %i.ij = bitcast double %i.ii to i64
  %i.ik = icmp eq i64 %.sroa.0.0.copyload.i.i.i142, %i.ij
  br i1 %i.ik, label %bb.be, label %bb.bf, !prof !42

bb.be:                                            ; preds = %bb.bd
  %i.il = or disjoint i32 %i.ig, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146

bb.bf:                                            ; preds = %bb.bd
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !34 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !38
  %.not.i.not.i.i.i.i.i.i.i.i144 = icmp ugt ptr %i.io, %i.iq
  br i1 %.not.i.not.i.i.i.i.i.i.i.i144, label %bb.bg, label %bb.bh, !prof !39

bb.bg:                                            ; preds = %bb.bf
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.is = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ir, i32 noundef 16) #17
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i145

bb.bh:                                            ; preds = %bb.bf
  store ptr %i.io, ptr %i.im, align 8, !tbaa !34
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i145

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i145: ; preds = %bb.bh, %bb.bg
  %i.it = phi ptr [ %i.is, %bb.bg ], [ %i.in, %bb.bh ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i142, ptr %i.iu, align 8, !tbaa !311
  store i32 402653200, ptr %i.it, align 8, !tbaa !41
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iv, %i.hi
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = or i32 %i.ix, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146: ; preds = %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.be, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i145
  %.sroa.04.0.i143 = phi i32 [ 7, %bb.av ], [ %i.id, %bb.bc ], [ 14, %bb.aw ], [ 15, %bb.ax ], [ %i.hs, %bb.ay ], [ %i.hv, %bb.az ], [ %i.hy, %bb.ba ], [ %i.ib, %bb.bb ], [ %i.il, %bb.be ], [ %i.iy, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i145 ] ; 4 uses
  %.sroa.0.0.copyload.i.i.i147 = load i64, ptr %.0.i.i.i.i.i.i135, align 8, !tbaa !40
  %i.iz = and i64 %.sroa.0.0.copyload.i.i.i147, 281474976710655
  %i.ja = inttoptr i64 %i.iz to ptr               ; 2 uses
  %.sroa.020.0.copyload = load i64, ptr %6, align 8 ; 2 uses
  %.sroa.1.0.extract.shift.i148 = lshr i64 %.sroa.020.0.copyload, 32 ; 2 uses
  %i.jb = icmp ult i64 %.sroa.020.0.copyload, 21474836480
  br i1 %i.jb, label %bb.bi, label %bb.bk, !prof !42

bb.bi:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %.sroa.1.0.extract.shift.i148 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !73
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = and i64 %i.jg, 1125899902648320
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = icmp eq ptr %i.jf, %i.ji
  br i1 %i.jj, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i151, label %bb.bj, !prof !42

bb.bj:                                            ; preds = %bb.bi
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.jk, ptr noundef nonnull align 4 dereferenceable(4) %i.jd, i32 %.sroa.04.0.i143) #17
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i151

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i151: ; preds = %bb.bj, %bb.bi
  store i32 %.sroa.04.0.i143, ptr %i.jd, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152

bb.bk:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit146
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %.sroa.0.0.copyload.i.i.i.i149 = load i32, ptr %i.jl, align 4, !tbaa !3
  %i.jm = zext i32 %.sroa.0.0.copyload.i.i.i.i149 to i64
  %i.jn = add i64 %i.jm, %i.hi
  %i.jo = inttoptr i64 %i.jn to ptr
  %i.jp = add nuw nsw i64 %.sroa.1.0.extract.shift.i148, 4294967291
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jr = and i64 %i.jp, 4294967295
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jr ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !73
  %i.jv = ptrtoint ptr %i.js to i64
  %i.jw = and i64 %i.jv, -4194304
  %i.jx = inttoptr i64 %i.jw to ptr
  %i.jy = icmp eq ptr %i.ju, %i.jx
  br i1 %i.jy, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i150, label %bb.bl, !prof !42

bb.bl:                                            ; preds = %bb.bk
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.jz, ptr noundef nonnull align 4 dereferenceable(4) %i.js, i32 %.sroa.04.0.i143) #17
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i150

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i150: ; preds = %bb.bl, %bb.bk
  store i32 %.sroa.04.0.i143, ptr %i.js, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152

bb.bm:                                            ; preds = %bb.at
  %.sroa.0.0.copyload.i.i153 = load i64, ptr %.0.i.i.i.i.i.i135, align 8, !tbaa !40
  %i.ka = and i64 %.sroa.0.0.copyload.i.i153, 281474976710655
  %i.kb = inttoptr i64 %i.ka to ptr               ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kd = load i32, ptr %i.kc, align 4            ; 2 uses
  %i.ke = and i32 %i.kd, 32
  %.not262 = icmp eq i32 %i.ke, 0
  br i1 %.not262, label %bb.bn, label %bb.bo, !prof !42

bb.bn:                                            ; preds = %bb.bm
  %i.kf = and i32 %i.kd, 128
  %.not263 = icmp eq i32 %i.kf, 0
  br i1 %.not263, label %bb.bx, label %.critedge114, !prof !42

bb.bo:                                            ; preds = %bb.bm
  %.sroa.0.0.copyload.i.i.i157 = load i64, ptr %3, align 8, !tbaa !40
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !337 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !339
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = call i32 %i.kk(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, i32 %2, i64 %.sroa.0.0.copyload.i.i.i157) #17, !inline_history !400
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152

.critedge114:                                     ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  store i32 0, ptr %26, align 4, !tbaa !41
  %i.km = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 -1, ptr %i.km, align 4, !tbaa !367
  %i.kn = and i32 %2, 268435456
  %.not.i = icmp eq i32 %i.kn, 0
  br i1 %.not.i, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.critedge114
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.kp = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ko, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = or i64 %i.kq, -844424930131968          ; 2 uses
  %i.ks = load ptr, ptr %i.fx, align 8, !tbaa !43 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 192 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !46 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 200
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !56
  %i.kx = icmp ult ptr %i.ku, %i.kw
  br i1 %i.kx, label %bb.bq, label %bb.br, !prof !42

bb.bq:                                            ; preds = %bb.bp
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store ptr %i.ky, ptr %i.kt, align 8, !tbaa !46
  store i64 %i.kr, ptr %i.ku, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.br:                                            ; preds = %bb.bp
  %i.kz = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ks, i64 %i.kr) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.bs:                                            ; preds = %.critedge114
  %i.la = zext i32 %2 to i64
  %i.lb = or disjoint i64 %i.la, -1266637395197952 ; 2 uses
  %i.lc = load ptr, ptr %i.fx, align 8, !tbaa !43 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 192 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !46 ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 200
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !56
  %i.lh = icmp ult ptr %i.le, %i.lg
  br i1 %i.lh, label %bb.bt, label %bb.bu, !prof !42

bb.bt:                                            ; preds = %bb.bs
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %i.li, ptr %i.ld, align 8, !tbaa !46
  store i64 %i.lb, ptr %i.le, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.bu:                                            ; preds = %bb.bs
  %i.lj = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.lc, i64 %i.lb) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bq
  %.sroa.0168.0 = phi ptr [ %i.kz, %bb.br ], [ %i.ku, %bb.bq ], [ %i.le, %bb.bt ], [ %i.lj, %bb.bu ] ; 2 uses
  %i.lk = call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %.0.i.i.i.i.i.i135, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.0168.0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 4 dereferenceable(8) %26) ; 2 uses
  %.mask265 = and i32 %i.lk, 255
  %i.ll = icmp eq i32 %.mask265, 0
  br i1 %i.ll, label %bb.bw, label %bb.bv, !prof !39

bb.bv:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.lm = and i32 %i.lk, 256
  %.not266 = icmp eq i32 %i.lm, 0
  %.sroa.0.0.insert.ext = select i1 %.not266, i32 319, i32 256
  %i.ln = call i32 @_ZN6hermes2vm7JSProxy17defineOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES8_NS0_11PropOpFlagsE(ptr nonnull %.0.i.i.i.i.i.i135, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.0168.0, i32 %.sroa.0.0.insert.ext, ptr %3, i32 %5) #17
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.bv
  %.sroa.0236.1 = phi i32 [ %i.ln, %bb.bv ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152

bb.bx:                                            ; preds = %bb.ar, %bb.bn
  %i.lo = and i32 %5, 2
  %.not264 = icmp eq i32 %i.lo, 0
  br i1 %.not264, label %bb.by, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit162, !prof !42

_ZN6hermes2vm11TwineChar16C2EPKc.exit162:         ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  %i.lp = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i32 1, ptr %i.lp, align 8, !tbaa !305
  %i.lq = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i64 10, ptr %i.lq, align 8, !tbaa !308
  %i.lr = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 0, ptr %i.lr, align 8, !tbaa !309
  store ptr @.str.11, ptr %29, align 8, !tbaa !41
  %i.ls = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 3, ptr %i.ls, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.lu = call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.lt, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.lv = extractvalue { ptr, i64 } %i.lu, 0
  store ptr %i.lv, ptr %31, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.lx = extractvalue { ptr, i64 } %i.lu, 1
  store i64 %i.lx, ptr %i.lw, align 8
  call void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %30, ptr noundef nonnull align 8 dereferenceable(16) %31)
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %28, ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull align 8 dereferenceable(48) %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17
  %i.ly = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i32 1, ptr %i.ly, align 8, !tbaa !305
  %i.lz = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i64 15, ptr %i.lz, align 8, !tbaa !308
  %i.ma = getelementptr inbounds nuw i8, ptr %32, i64 40
  store i64 0, ptr %i.ma, align 8, !tbaa !309
  store ptr @.str.12, ptr %32, align 8, !tbaa !41
  %i.mb = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 3, ptr %i.mb, align 8, !tbaa !310
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %27, ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull align 8 dereferenceable(48) %32)
  %i.mc = call noundef i32 @_ZN6hermes2vm7Runtime19raiseReferenceErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %27) #17
  %i.md = and i32 %i.mc, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152

bb.by:                                            ; preds = %bb.bx
  %i.me = call i32 @_ZN6hermes2vm8JSObject14addOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %.0.i.i.i.i.i.i135, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 319, ptr %3, i32 %5)
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152

_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152: ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i150, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i151, %bb.au, %.critedge.thread, %bb.by, %_ZN6hermes2vm11TwineChar16C2EPKc.exit162, %bb.bw, %bb.bo
  %.sroa.0236.2 = phi i32 [ 1, %.critedge.thread ], [ 1, %bb.au ], [ %i.kl, %bb.bo ], [ %.sroa.0236.1, %bb.bw ], [ %i.md, %_ZN6hermes2vm11TwineChar16C2EPKc.exit162 ], [ %i.me, %bb.by ], [ 257, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i151 ], [ 257, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit: ; preds = %bb.ad, %bb.y, %bb.aj, %_ZN6hermes2vm11TwineChar16C2EPKc.exit124, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, %bb.x, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152, %bb.al, %_ZN6hermes2vm11TwineChar16C2EPKc.exit129, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit
  %.sroa.0236.3 = phi i32 [ %.sroa.0236.2, %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit152 ], [ 257, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i ], [ %i.fs, %_ZN6hermes2vm11TwineChar16C2EPKc.exit129 ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit ], [ %i.fc, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit ], [ %i.fv, %bb.al ], [ %spec.select, %bb.y ], [ 1, %bb.x ], [ 1, %bb.aj ], [ %i.dd, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 257, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i ], [ %i.en, %_ZN6hermes2vm11TwineChar16C2EPKc.exit124 ], [ %i.du, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.sroa.0236.0.insert.ext = and i32 %.sroa.0236.3, 65535
  ret i32 %.sroa.0236.0.insert.ext
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %2, i32 %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %i.a = icmp ult i64 %2, 21474836480
  br i1 %i.a, label %bb.b, label %bb.d, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.1.0.extract.shift ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = and i64 %i.f, -4194304
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = icmp eq ptr %i.e, %i.h
  br i1 %i.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 %3) #17
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.c, %bb.b
  store i32 %3, ptr %i.c, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEEvPS1_RNS0_7RuntimeEjS4_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.k, align 4, !tbaa !3
  %i.l = ptrtoint ptr %1 to i64
  %i.m = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = add nuw nsw i64 %.sroa.1.0.extract.shift, 4294967291
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = and i64 %i.p, 4294967295
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = and i64 %i.v, -4194304
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = icmp eq ptr %i.u, %i.x
  br i1 %i.y, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.s, i32 %3) #17
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.e, %bb.d
  store i32 %3, ptr %i.s, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEEvPS1_RNS0_7RuntimeEjS4_.exit

_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEEvPS1_RNS0_7RuntimeEjS4_.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i
  ret void
}

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @_ZN6hermes2vm7JSProxy8setNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES9_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6hermes2vmL36raiseErrorForOverridingStaticBuiltinENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS1_INS0_8SymbolIDEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 7 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 17 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 22 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 17 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 22 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 17 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 19 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 18 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 22 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %15 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 10 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !40
  %i.a = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.c = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.a) #17
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or i64 %i.d, -844424930131968            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !46
  store i64 %i.e, ptr %i.i, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.o, align 4, !tbaa !367
  %i.p = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 139, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  %i.q = load i16, ptr %3, align 8
  %i.r = and i16 %i.q, 16
  %.not14 = icmp eq i16 %i.r, 0
  br i1 %.not14, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %i.s = and i64 %.sroa.0.0.copyload.i.i15, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.t) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !310, !noalias !407 ; 2 uses
  switch i32 %i.v, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread [
    i32 0, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread123
    i32 1, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  ]

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread123: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !310, !alias.scope !408
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.x, align 8, !tbaa !305, !alias.scope !408
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !408
  br label %bb.f

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !308, !noalias !407
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !309, !noalias !407
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !noalias !407
  %i.ag = icmp eq i32 %i.af, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %6, align 8, !noalias !407
  %.015.i.i = select i1 %i.ag, i32 %i.v, i32 2
  %.sroa.03.0.i.i = select i1 %i.ag, ptr %.sroa.03.0.copyload.i.i, ptr %6
  store ptr @.str.35, ptr %5, align 8, !tbaa !41, !alias.scope !407
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ah, align 8, !tbaa !310, !alias.scope !407
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.i.i, ptr %i.ai, align 8, !tbaa !41, !alias.scope !407
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.015.i.i, ptr %i.aj, align 8, !tbaa !305, !alias.scope !407
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 49, ptr %i.ak, align 8, !tbaa !308, !alias.scope !407
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.ad, ptr %i.al, align 8, !tbaa !309, !alias.scope !407
  br label %bb.h

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit:     ; preds = %bb.e
  store ptr @.str.35, ptr %5, align 8, !tbaa !41
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !384
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %.sroa.5140.0..sroa_idx, align 8, !tbaa !384
  %.sroa.6142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 49, ptr %.sroa.6142.0..sroa_idx, align 8, !tbaa !40
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %.sroa.7143.0..sroa_idx, align 8, !tbaa !40
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre115 = load i32, ptr %.phi.trans.insert114, align 8, !tbaa !310, !noalias !411 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  switch i32 %.pre115, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread123, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !310, !alias.scope !418
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.an, align 8, !tbaa !305, !alias.scope !418
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm8JSObject14addOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE:bb.a
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.k
  %.0.i.sink.i4.i.i = phi ptr [ %i.k, %bb.k ], [ %i.aj, %bb.m ], [ %i.ak, %bb.o ], [ %i.al, %bb.p ], [ %i.aq, %bb.q ]
  %i.ar = and i64 %i.l, 1073741823
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.i, i64 %i.ar
  %.sroa.5.12.extract.shift = lshr i64 %i.l, 32
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread: ; preds = %bb.j, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i
  %.sroa.03.0.copyload.i.i.ph = phi ptr [ %i.ad, %bb.j ], [ %i.as, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i ]
  %.ph = phi i64 [ %.sroa.5.12.extract.shift29, %bb.j ], [ %.sroa.5.12.extract.shift, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i ]
  %.ph55 = phi i32 [ 3, %bb.j ], [ 4, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i ]
  store ptr @.str.32, ptr %7, align 8, !tbaa !41, !alias.scope !486
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.at, align 8, !tbaa !310, !alias.scope !486
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.03.0.copyload.i.i.ph, ptr %i.au, align 8, !tbaa !41, !alias.scope !486
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.ph55, ptr %i.av, align 8, !tbaa !305, !alias.scope !486
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 25, ptr %i.aw, align 8, !tbaa !308, !alias.scope !486
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.ph, ptr %i.ax, align 8, !tbaa !309, !alias.scope !486
  br label %bb.t

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit:     ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i
  store ptr @.str.32, ptr %7, align 8, !tbaa !41
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !384
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %.sroa.559.0..sroa_idx, align 8, !tbaa !384
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 25, ptr %.sroa.660.0..sroa_idx, align 8, !tbaa !40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !310, !noalias !491 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  switch i32 %.pre, label %bb.t [
    i32 0, label %bb.r
    i32 1, label %bb.s
  ]

bb.r:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ay, align 8, !tbaa !310, !alias.scope !498
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.az, align 8, !tbaa !305, !alias.scope !498
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !498
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21

bb.s:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  store ptr @.str.16, ptr %6, align 8, !tbaa !41
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !384
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %.sroa.649.0..sroa_idx, align 8, !tbaa !384
  %.sroa.750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 1, ptr %.sroa.750.0..sroa_idx, align 8, !tbaa !40
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !40
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21

bb.t:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %i.bb = phi i32 [ 3, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread ], [ %.pre, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !308, !noalias !491
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !309, !noalias !491
  %i.bg = add i64 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !noalias !491
  %i.bj = icmp eq i32 %i.bi, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i15 = load ptr, ptr %7, align 8, !noalias !491
  %.0.i.i16 = select i1 %i.bj, i32 %i.bb, i32 2
  %.sroa.06.0.i.i17 = select i1 %i.bj, ptr %.sroa.06.0.copyload.i.i15, ptr %7
  store ptr %.sroa.06.0.i.i17, ptr %6, align 8, !tbaa !41, !alias.scope !491
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0.i.i16, ptr %i.bk, align 8, !tbaa !310, !alias.scope !491
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.16, ptr %i.bl, align 8, !tbaa !41, !alias.scope !491
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %i.bm, align 8, !tbaa !305, !alias.scope !491
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.bg, ptr %i.bn, align 8, !tbaa !308, !alias.scope !491
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 1, ptr %i.bo, align 8, !tbaa !309, !alias.scope !491
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21:   ; preds = %bb.r, %bb.s, %bb.t
  %i.bp = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  %i.bq = and i32 %i.bp, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  %.sroa.033.0.extract.trunc = trunc i32 %3 to i16 ; 3 uses
  %i.br = and i16 %.sroa.033.0.extract.trunc, 192
  %.not48 = icmp eq i16 %i.br, 0                  ; 2 uses
  %i.bs = and i16 %.sroa.033.0.extract.trunc, -17
  %spec.select = select i1 %.not48, i16 %.sroa.033.0.extract.trunc, i16 %i.bs ; 5 uses
  %spec.select46 = select i1 %.not48, i16 0, i16 16
  %i.bt = and i16 %spec.select, 8
  %.not = icmp eq i16 %i.bt, 0
  %i.bu = shl i16 %spec.select, 1                 ; 3 uses
  %i.bv = and i16 %i.bu, 2
  %i.bw = select i1 %.not, i16 0, i16 %i.bv
  %i.bx = and i16 %spec.select, 16
  %.not11 = icmp eq i16 %i.bx, 0
  %i.by = and i16 %i.bu, 4
  %i.bz = select i1 %.not11, i16 0, i16 %i.by
  %i.ca = and i16 %spec.select, 32
  %.not12 = icmp eq i16 %i.ca, 0
  %i.cb = and i16 %i.bu, 8
  %i.cc = select i1 %.not12, i16 0, i16 %i.cb
  %i.cd = lshr i16 %spec.select, 3
  %i.ce = and i16 %i.cd, 64
  %.sroa.0.1 = or disjoint i16 %i.ce, %spec.select46
  %.sroa.0.2 = or disjoint i16 %.sroa.0.1, %i.bw
  %.sroa.0.3 = or disjoint i16 %.sroa.0.2, %i.bz
  %i.cf = or disjoint i16 %.sroa.0.3, %i.cc
  %i.cg = tail call noundef i32 @_ZN6hermes2vm8JSObject18addOwnPropertyImplENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 %i.cf, ptr %4)
  %i.ch = icmp eq i32 %i.cg, 0
  %spec.select47 = select i1 %i.ch, i32 0, i32 257
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21
  %.sroa.040.1 = phi i32 [ 1, %bb.b ], [ %i.bq, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit21 ], [ %spec.select47, %bb.u ]
  ret i32 %.sroa.040.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject17putNamedOrIndexedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.g = tail call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.f, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = tail call i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr %i.h, i64 %i.i) #17 ; 2 uses
  %i.k = and i64 %i.j, 4294967296
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.extract.trunc = trunc i64 %i.j to i32
  %i.l = uitofp i32 %.sroa.0.0.extract.trunc to double ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !46
  store double %i.l, ptr %i.p, align 8, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = bitcast double %i.l to i64
  %i.v = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.n, i64 %i.u) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.v, %bb.e ]
  %i.w = tail call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, ptr %3, ptr nonnull %0, i32 %4)
  br label %bb.g

.thread:                                          ; preds = %bb.b, %bb.a
  %i.x = tail call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, ptr nonnull %0, i32 %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.022.1 = phi i32 [ %i.x, %.thread ], [ %i.w, %bb.f ]
  ret i32 %.sroa.022.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3, ptr %4, i32 %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 8 ; 9 uses
  %8 = alloca %"class.hermes::vm::MutableHandle.214", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::MutableHandle.209", align 8 ; 5 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 6 uses
  %15 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 8 ; 10 uses
  %16 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %17 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16
  %.not = icmp ne i32 %i.e, 0
  %.pr.pre472 = load i64, ptr %2, align 8, !tbaa !40 ; 3 uses
  %i.f = icmp ult i64 %.pr.pre472, -1970324836974592
  %or.cond523 = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond523, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit: ; preds = %bb.a
  %i.g = bitcast i64 %.pr.pre472 to double        ; 2 uses
  %i.h = fptoui double %i.g to i32                ; 3 uses
  %i.i = uitofp i32 %i.h to double
  %i.j = fcmp oeq double %i.g, %i.i
  %i.k = icmp ne i32 %i.h, -1
  %or.cond.i.i = and i1 %i.k, %i.j
  %i.l = zext i32 %i.h to i64
  %i.m = or disjoint i64 %i.l, 4294967296
  %i.n = trunc nuw nsw i64 %i.m to i40
  %i.o = select i1 %or.cond.i.i, i40 %i.n, i40 0  ; 2 uses
  %.not436 = icmp samesign ult i40 %i.o, 4294967296
  br i1 %.not436, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %i.p = load i64, ptr %4, align 8, !tbaa !326
  %i.q = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.p
  br i1 %i.q, label %bb.c, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.0309.0.extract.trunc = trunc i40 %i.o to i32 ; 2 uses
  %i.r = load i32, ptr %i.b, align 4
  %i.s = lshr i32 %i.r, 24
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !319
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !396
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.0309.0.extract.trunc) #17, !inline_history !397
  br i1 %i.y, label %bb.d, label %..threadthread-pre-split_crit_edge

..threadthread-pre-split_crit_edge:               ; preds = %bb.c
  %.pr.pre = load i64, ptr %2, align 8, !tbaa !326
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i172 = load i64, ptr %0, align 8, !tbaa !40
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i172, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = lshr i32 %i.ab, 24
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !319
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !501
  %i.ai = tail call i32 %i.ah(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.0309.0.extract.trunc, ptr %3) #17, !inline_history !502 ; 2 uses
  %.mask = and i32 %i.ai, 255
  %i.aj = icmp eq i32 %.mask, 0
  br i1 %i.aj, label %bb.bw, label %bb.e, !prof !39

bb.e:                                             ; preds = %bb.d
  %i.ak = and i32 %i.ai, 256
  %.not437 = icmp eq i32 %i.ak, 0
  br i1 %.not437, label %bb.f, label %bb.bw, !prof !39

bb.f:                                             ; preds = %bb.e
  %i.al = trunc i32 %5 to i1
  br i1 %i.al, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.bw

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.am, align 8, !tbaa !305
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 35, ptr %i.an, align 8, !tbaa !308
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ao, align 8, !tbaa !309
  store ptr @.str.18, ptr %6, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.ap, align 8, !tbaa !310
  %i.aq = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  %i.ar = and i32 %i.aq, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bw

.thread:                                          ; preds = %bb.a, %..threadthread-pre-split_crit_edge
  %i.as = phi i64 [ %.pr.pre472, %bb.a ], [ %.pr.pre, %..threadthread-pre-split_crit_edge ]
  %i.at = icmp ugt i64 %i.as, -281474976710657
  br i1 %i.at, label %bb.g, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !503

bb.g:                                             ; preds = %.thread
  %i.au = tail call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2)
  br label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, %bb.b, %.thread, %bb.g
  %.sroa.02.0.i = phi ptr [ %i.au, %bb.g ], [ %2, %.thread ], [ %2, %bb.b ], [ %2, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit ] ; 13 uses
  %.not438 = icmp eq ptr %.sroa.02.0.i, inttoptr (i64 -1 to ptr)
  br i1 %.not438, label %bb.bw, label %bb.h, !prof !39

bb.h:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i32 0, ptr %7, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 -1, ptr %i.av, align 4, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 192 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56 ; 2 uses
  %i.bc = icmp ult ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !46
  store i64 -281474976710656, ptr %i.az, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.be = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ax, i64 -281474976710656) #17
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre474 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.phi.trans.insert475 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre476 = load ptr, ptr %.phi.trans.insert475, align 8, !tbaa !56
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.i, %bb.j
  %i.bf = phi ptr [ %i.bb, %bb.i ], [ %.pre476, %bb.j ]
  %i.bg = phi ptr [ %i.bd, %bb.i ], [ %.pre474, %bb.j ] ; 4 uses
  %i.bh = phi ptr [ %i.ax, %bb.i ], [ %.pre, %bb.j ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.az, %bb.i ], [ %i.be, %bb.j ] ; 3 uses
  store ptr %.0.i.i.i.i.i.i, ptr %8, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.bi = icmp ult ptr %i.bg, %i.bf
  br i1 %i.bi, label %bb.k, label %bb.l, !prof !42

bb.k:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !46
  store i64 -1266636858327041, ptr %i.bg, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.l:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.bl = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bh, i64 -1266636858327041) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i.i173 = phi ptr [ %i.bg, %bb.k ], [ %i.bl, %bb.l ]
  store ptr %.0.i.i.i.i.i.i173, ptr %9, align 8, !tbaa !316
  %i.bm = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.critedge164, label %bb.m, !prof !39

bb.m:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bo = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326 ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, -844424930131969
  %i.bq = and i64 %i.bo, 281474976710655          ; 2 uses
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = and i1 %i.bp, %i.br
  %.sroa.0.0.copyload.i.i.i196.pre = load i64, ptr %0, align 8, !tbaa !40 ; 4 uses
  br i1 %i.bs, label %bb.n, label %bb.ai

bb.n:                                             ; preds = %bb.m
  %i.bt = xor i64 %.sroa.0.0.copyload.i.i.i196.pre, %i.bo
  %i.bu = and i64 %i.bt, 281474976710655
  %i.bv = icmp ne i64 %i.bu, 0                    ; 2 uses
  br i1 %i.bv, label %..critedge156_crit_edge, label %bb.o, !prof !39

..critedge156_crit_edge:                          ; preds = %bb.n
  %.pre477 = load i16, ptr %7, align 8
  br label %.critedge156

bb.o:                                             ; preds = %bb.n
  %i.bw = load i64, ptr %4, align 8, !tbaa !326
  %i.bx = icmp eq i64 %.sroa.0.0.copyload.i.i.i196.pre, %i.bw
  %.pre478 = load i16, ptr %7, align 8            ; 2 uses
  %i.by = and i16 %.pre478, 1364
  %or.cond428 = icmp eq i16 %i.by, 4
  %or.cond524 = select i1 %i.bx, i1 %or.cond428, i1 false, !prof !399
  br i1 %or.cond524, label %bb.p, label %.critedge156, !prof !399

bb.p:                                             ; preds = %bb.o
  %.sroa.078.0.copyload = load i64, ptr %7, align 8 ; 3 uses
  %i.bz = and i64 %.sroa.078.0.copyload, 32
  %.not.i = icmp eq i64 %i.bz, 0
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE:bb.a
  %i.dj = extractvalue { i32, i64 } %i.di, 0
  %i.dk = icmp eq i32 %i.dj, 0
  %. = select i1 %i.dk, i32 0, i32 257
  br label %.critedge164

bb.u:                                             ; preds = %.critedge156
  %i.dl = and i16 %i.co, 1024
  %.not139 = icmp eq i16 %i.dl, 0
  br i1 %.not139, label %bb.y, label %bb.v, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.dm = call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i) ; 2 uses
  %.not440 = icmp eq ptr %i.dm, inttoptr (i64 -1 to ptr)
  br i1 %.not440, label %.critedge164, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = call i32 @_ZN6hermes2vm7JSProxy11setComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEES8_S8_(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.dm, ptr %3, ptr %4) #17 ; 3 uses
  %.mask441 = and i32 %i.dn, 255
  %i.do = icmp eq i32 %.mask441, 0
  br i1 %i.do, label %.critedge164, label %bb.x, !prof !39

bb.x:                                             ; preds = %bb.w
  %i.dp = and i32 %i.dn, 256
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = trunc i32 %5 to i1
  %or.cond429 = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond429, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit185, label %.critedge164

_ZN6hermes2vm11TwineChar16C2EPKc.exit185:         ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.ds, align 8, !tbaa !305
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 38, ptr %i.dt, align 8, !tbaa !308
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.du, align 8, !tbaa !309
  store ptr @.str.21, ptr %12, align 8, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.dv, align 8, !tbaa !310
  %i.dw = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %12) #17
  %i.dx = and i32 %i.dw, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.critedge164

bb.y:                                             ; preds = %bb.u
  %i.dy = and i16 %i.co, 4
  %.not140 = icmp eq i16 %i.dy, 0
  br i1 %.not140, label %bb.z, label %bb.af, !prof !39

bb.z:                                             ; preds = %bb.y
  %i.dz = and i16 %i.co, 512
  %.not152 = icmp eq i16 %i.dz, 0
  br i1 %.not152, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ea = call ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i) #17 ; 2 uses
  %.not470 = icmp eq ptr %i.ea, inttoptr (i64 -1 to ptr)
  br i1 %.not470, label %.critedge164, label %bb.ab, !prof !39

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.copyload.i.i.i186 = load i64, ptr %i.ea, align 8, !tbaa !40
  %i.eb = and i64 %.sroa.0.0.copyload.i.i.i186, 4294967295
  %i.ec = or disjoint i64 %i.eb, -1266637395197952 ; 2 uses
  %i.ed = load ptr, ptr %i.aw, align 8, !tbaa !43 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 192 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !46 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 200
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !56
  %i.ei = icmp ult ptr %i.ef, %i.eh
  br i1 %i.ei, label %bb.ac, label %bb.ad, !prof !42

bb.ac:                                            ; preds = %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.ej, ptr %i.ee, align 8, !tbaa !46
  store i64 %i.ec, ptr %i.ef, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ek = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ed, i64 %i.ec) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i.i.i.i187 = phi ptr [ %i.ef, %bb.ac ], [ %i.ek, %bb.ad ]
  %i.el = call fastcc noundef i32 @_ZN6hermes2vmL36raiseErrorForOverridingStaticBuiltinENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS1_INS0_8SymbolIDEEE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i187)
  %i.em = and i32 %i.el, 255
  br label %.critedge164

bb.ae:                                            ; preds = %bb.z
  %i.en = trunc i32 %5 to i1
  br i1 %i.en, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit189, label %.critedge164

_ZN6hermes2vm11TwineChar16C2EPKc.exit189:         ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.eo, align 8, !tbaa !305
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 36, ptr %i.ep, align 8, !tbaa !308
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %i.eq, align 8, !tbaa !309
  store ptr @.str.22, ptr %13, align 8, !tbaa !41
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 3, ptr %i.er, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 1, ptr %i.es, align 8, !tbaa !305
  %i.et = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.eu, align 8, !tbaa !310
  %i.ev = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr %.sroa.02.0.i, ptr noundef nonnull align 8 dereferenceable(48) %14) #17
  %i.ew = and i32 %i.ev, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %.critedge164

bb.af:                                            ; preds = %bb.y
  %i.ex = and i16 %i.co, 64
  %.not141 = icmp eq i16 %i.ex, 0
  %or.cond431 = or i1 %i.bv, %.not141
  br i1 %or.cond431, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = call ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i) #17
  %.not442 = icmp eq ptr %i.ey, inttoptr (i64 -1 to ptr)
  br i1 %.not442, label %.critedge164, label %bb.ah, !prof !39

bb.ah:                                            ; preds = %bb.ag
  %i.ez = call i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %3, i32 %5) #17
  br label %.critedge164

bb.ai:                                            ; preds = %bb.af, %bb.m
  %i.fa = or i64 %.sroa.0.0.copyload.i.i.i196.pre, -281474976710656 ; 2 uses
  %i.fb = load ptr, ptr %i.aw, align 8, !tbaa !43 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 192 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !46 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 200
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !56
  %i.fg = icmp ult ptr %i.fd, %i.ff
  br i1 %i.fg, label %bb.aj, label %bb.ak, !prof !42

bb.aj:                                            ; preds = %bb.ai
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.fh, ptr %i.fc, align 8, !tbaa !46
  store i64 %i.fa, ptr %i.fd, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit198

bb.ak:                                            ; preds = %bb.ai
  %i.fi = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fb, i64 %i.fa) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit198

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit198: ; preds = %bb.aj, %bb.ak
  %.0.i.i.i.i.i.i197 = phi ptr [ %i.fd, %bb.aj ], [ %i.fi, %bb.ak ] ; 17 uses
  %.sroa.0.0.copyload.i199 = load i64, ptr %0, align 8, !tbaa !40
  %i.fj = load i64, ptr %4, align 8, !tbaa !326   ; 4 uses
  %.not142 = icmp eq i64 %.sroa.0.0.copyload.i199, %i.fj
  br i1 %.not142, label %bb.al, label %.critedge

bb.al:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit198
  %.sroa.0.0.copyload.i.i200 = load i64, ptr %.0.i.i.i.i.i.i197, align 8, !tbaa !40 ; 2 uses
  %i.fk = and i64 %.sroa.0.0.copyload.i.i200, 281474976710655 ; 2 uses
  %i.fl = inttoptr i64 %i.fk to ptr               ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = and i32 %i.fn, 160
  %or.cond433.not = icmp eq i32 %i.fo, 0
  br i1 %or.cond433.not, label %bb.ba, label %.critedge.thread

.critedge:                                        ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit198
  %i.fp = icmp ugt i64 %i.fj, -844424930131969
  br i1 %i.fp, label %bb.am, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

bb.am:                                            ; preds = %.critedge
  %i.fq = and i64 %i.fj, 281474976710655
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = add i32 %i.fs, -436207616
  %i.fu = icmp ult i32 %i.ft, 855638016
  %i.fv = or i64 %i.fj, -281474976710656
  %i.fw = select i1 %i.fu, i64 %i.fv, i64 -281474976710656
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit: ; preds = %.critedge, %bb.am
  %i.fx = phi i64 [ %i.fw, %bb.am ], [ -281474976710656, %.critedge ] ; 3 uses
  store i64 %i.fx, ptr %.0.i.i.i.i.i.i197, align 8, !tbaa !326
  %.pre491 = and i64 %i.fx, 281474976710655
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.al, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit
  %.pre-phi492 = phi i64 [ %i.fk, %bb.al ], [ %.pre491, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ]
  %i.fy = phi i64 [ %.sroa.0.0.copyload.i.i200, %bb.al ], [ %i.fx, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ]
  %i.fz = icmp ugt i64 %i.fy, -844424930131969
  %i.ga = icmp ne i64 %.pre-phi492, 0
  %i.gb = and i1 %i.fz, %i.ga
  br i1 %i.gb, label %bb.an, label %.critedge164

bb.an:                                            ; preds = %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i32 0, ptr %15, align 8, !tbaa !41
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 -1, ptr %i.gc, align 4, !tbaa !367
  %i.gd = call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %.0.i.i.i.i.i.i197, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %15) ; 2 uses
  %.mask443 = and i32 %i.gd, 255
  %i.ge = icmp eq i32 %.mask443, 0
  br i1 %i.ge, label %.critedge162, label %bb.ao, !prof !39

.critedge162:                                     ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.critedge164

bb.ao:                                            ; preds = %bb.an
  %i.gf = and i32 %i.gd, 256
  %.not444 = icmp eq i32 %i.gf, 0                 ; 2 uses
  %.pre479 = load i16, ptr %15, align 8           ; 3 uses
  br i1 %.not444, label %.critedge158, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gg = and i16 %.pre479, 20
  %.not445 = icmp eq i16 %i.gg, 4
  br i1 %.not445, label %bb.aq, label %.critedge170, !prof !42

bb.aq:                                            ; preds = %bb.ap
  %i.gh = and i16 %.pre479, 64
  %.not146 = icmp eq i16 %i.gh, 0
  %.sroa.0.0.copyload.i.i216.pre.pre482 = load i64, ptr %.0.i.i.i.i.i.i197, align 8, !tbaa !40 ; 3 uses
  br i1 %.not146, label %bb.ar, label %.critedge158..critedge160_crit_edge, !prof !42

bb.ar:                                            ; preds = %bb.aq
  %i.gi = and i64 %.sroa.0.0.copyload.i.i216.pre.pre482, 281474976710655
  %i.gj = inttoptr i64 %i.gi to ptr               ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = and i32 %i.gl, 160
  %or.cond = icmp eq i32 %i.gm, 0
  br i1 %or.cond, label %bb.as, label %.critedge158.thread, !prof !318

bb.as:                                            ; preds = %bb.ar
  %.sroa.044.0.copyload = load i64, ptr %15, align 8 ; 3 uses
  %i.gn = and i64 %.sroa.044.0.copyload, 32
  %.not.i206 = icmp eq i64 %i.gn, 0
  br i1 %.not.i206, label %_ZN6hermes2vm8JSObject26setComputedSlotValueUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE.exit213.thread, label %_ZN6hermes2vm8JSObject26setComputedSlotValueUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE.exit213, !prof !39

_ZN6hermes2vm8JSObject26setComputedSlotValueUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE.exit213.thread: ; preds = %bb.as
  %.sroa.0.0.copyload.i.i.i211 = load i64, ptr %3, align 8, !tbaa !40
  %i.go = call i32 @_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE(i64 %.sroa.0.0.copyload.i.i.i211, ptr noundef nonnull align 8 dereferenceable(9816) %1)
  %.sroa.0.0.copyload.i.i8.i212 = load i64, ptr %.0.i.i.i.i.i.i197, align 8, !tbaa !40
  %i.gp = and i64 %.sroa.0.0.copyload.i.i8.i212, 281474976710655
  %i.gq = inttoptr i64 %i.gp to ptr
  call void @_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E(ptr noundef %i.gq, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %.sroa.044.0.copyload, i32 %i.go)
  br label %bb.at

_ZN6hermes2vm8JSObject26setComputedSlotValueUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE.exit213: ; preds = %bb.as
  %.sroa.311.0.extract.shift.i207 = lshr i64 %.sroa.044.0.copyload, 32
  %.sroa.311.0.extract.trunc.i208 = trunc nuw i64 %.sroa.311.0.extract.shift.i207 to i32
  %i.gr = load i32, ptr %i.gj, align 4
  %i.gs = lshr i32 %i.gr, 24
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !319
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 72
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !501
  %i.gy = call i32 %i.gx(ptr nonnull %.0.i.i.i.i.i.i197, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.311.0.extract.trunc.i208, ptr %3) #17, !inline_history !504
  %.mask448 = and i32 %i.gy, 255
  %i.gz = icmp eq i32 %.mask448, 0
  br i1 %i.gz, label %.critedge170, label %bb.at, !prof !506

bb.at:                                            ; preds = %_ZN6hermes2vm8JSObject26setComputedSlotValueUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE.exit213.thread, %_ZN6hermes2vm8JSObject26setComputedSlotValueUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE.exit213
  br label %.critedge170

.critedge158:                                     ; preds = %bb.ao
  %.sroa.0.0.copyload.i.i216.pre.pre = load i64, ptr %.0.i.i.i.i.i.i197, align 8, !tbaa !40 ; 2 uses
  %.pre493 = and i16 %.pre479, 64
  %i.ha = icmp eq i16 %.pre493, 0
  br i1 %i.ha, label %.critedge158.thread, label %.critedge158..critedge160_crit_edge, !prof !507

.critedge158..critedge160_crit_edge:              ; preds = %bb.aq, %.critedge158
  %.sroa.0.0.copyload.i.i216.pre521 = phi i64 [ %.sroa.0.0.copyload.i.i216.pre.pre, %.critedge158 ], [ %.sroa.0.0.copyload.i.i216.pre.pre482, %bb.aq ]
  %.pre495 = and i64 %.sroa.0.0.copyload.i.i216.pre521, 281474976710655
  %.pre497 = inttoptr i64 %.pre495 to ptr
  br label %.critedge160

.critedge158.thread:                              ; preds = %bb.ar, %.critedge158
  %.sroa.0.0.copyload.i.i216.pre517 = phi i64 [ %.sroa.0.0.copyload.i.i216.pre.pre, %.critedge158 ], [ %.sroa.0.0.copyload.i.i216.pre.pre482, %bb.ar ]
  %i.hb = and i64 %.sroa.0.0.copyload.i.i216.pre517, 281474976710655
  %i.hc = inttoptr i64 %i.hb to ptr               ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = and i32 %i.he, 160
  %or.cond435.not = icmp eq i32 %i.hf, 0
  br i1 %or.cond435.not, label %bb.az, label %.critedge160, !prof !318

.critedge160:                                     ; preds = %.critedge158..critedge160_crit_edge, %.critedge158.thread
  %.pre-phi498 = phi ptr [ %.pre497, %.critedge158..critedge160_crit_edge ], [ %i.hc, %.critedge158.thread ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.pre-phi498, i64 4
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = and i32 %i.hh, 128
  %.not468 = icmp eq i32 %i.hi, 0
  br i1 %.not468, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.critedge160
  %.sroa.0265.0.insert.ext = select i1 %.not444, i32 319, i32 256
  %i.hj = call i32 @_ZN6hermes2vm7JSProxy17defineOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES8_NS0_11PropOpFlagsE(ptr nonnull %.0.i.i.i.i.i.i197, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, i32 %.sroa.0265.0.insert.ext, ptr %3, i32 %5) #17
  br label %.critedge170

bb.av:                                            ; preds = %.critedge160
  %i.hk = call ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i) #17 ; 2 uses
  %.not469 = icmp eq ptr %i.hk, inttoptr (i64 -1 to ptr)
  br i1 %.not469, label %.critedge170, label %bb.aw, !prof !39

bb.aw:                                            ; preds = %bb.av
  %.sroa.0.0.copyload.i.i.i217 = load i64, ptr %i.hk, align 8, !tbaa !40
  %i.hl = trunc i64 %.sroa.0.0.copyload.i.i.i217 to i32 ; 2 uses
  %i.hm = load i16, ptr %15, align 8
  %i.hn = and i16 %i.hm, 64
  %.not148 = icmp eq i16 %i.hn, 0
  br i1 %.not148, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ho = icmp eq i32 %i.hl, 85
  call void @llvm.assume(i1 %i.ho)
  %i.hp = call i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %.0.i.i.i.i.i.i197, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %3, i32 %5) #17
  br label %.critedge170

bb.ay:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i.i221 = load i64, ptr %.0.i.i.i.i.i.i197, align 8, !tbaa !40
  %i.hq = and i64 %.sroa.0.0.copyload.i.i221, 281474976710655
  %i.hr = inttoptr i64 %i.hq to ptr
  %.sroa.0.0.copyload.i.i.i222 = load i64, ptr %3, align 8, !tbaa !40
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !337 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !339
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = call i32 %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, i32 %i.hl, i64 %.sroa.0.0.copyload.i.i.i222) #17, !inline_history !400
  br label %.critedge170

bb.az:                                            ; preds = %.critedge158.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %.sroa.0.0.copyload.i.i223.pre = load i64, ptr %.0.i.i.i.i.i.i197, align 8, !tbaa !40
  %.pre484 = and i64 %.sroa.0.0.copyload.i.i223.pre, 281474976710655
  %.pre485 = inttoptr i64 %.pre484 to ptr
  br label %bb.ba

bb.ba:                                            ; preds = %bb.al, %bb.az
  %.pre-phi486 = phi ptr [ %i.fl, %bb.al ], [ %.pre485, %bb.az ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.pre-phi486, i64 4
  %i.hz = load i32, ptr %i.hy, align 4            ; 2 uses
  %i.ia = and i32 %i.hz, 1
  %.not.i224 = icmp eq i32 %i.ia, 0
  br i1 %.not.i224, label %bb.bc, label %bb.bb, !prof !42

bb.bb:                                            ; preds = %bb.ba
  %i.ib = trunc i32 %5 to i1
  br i1 %i.ib, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit226, label %.critedge164

_ZN6hermes2vm11TwineChar16C2EPKc.exit226:         ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.ic = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 1, ptr %i.ic, align 8, !tbaa !305
  %i.id = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i64 25, ptr %i.id, align 8, !tbaa !308
  %i.ie = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.ie, align 8, !tbaa !309
  store ptr @.str.24, ptr %16, align 8, !tbaa !41
  %i.if = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 3, ptr %i.if, align 8, !tbaa !310
  %i.ig = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %16) #17
  %i.ih = and i32 %i.ig, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %.critedge164

bb.bc:                                            ; preds = %bb.ba
  %i.ii = and i32 %i.hz, 8
  %.not149 = icmp eq i32 %i.ii, 0
  br i1 %.not149, label %.critedge168, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ij = load ptr, ptr %i.aw, align 8, !tbaa !43 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 192 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !46 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 200
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !56
  %i.io = icmp ult ptr %i.il, %i.in
  br i1 %i.io, label %bb.be, label %bb.bf, !prof !42

bb.be:                                            ; preds = %bb.bd
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.ip, ptr %i.ik, align 8, !tbaa !46
  store i64 -844424930131968, ptr %i.il, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.iq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ij, i64 -844424930131968) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.be, %bb.bf
  %.0.i.i.i.i.i.i228 = phi ptr [ %i.il, %bb.be ], [ %i.iq, %bb.bf ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i229 = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !40 ; 3 uses
  %i.ir = icmp ult i64 %.sroa.0.0.copyload.i.i.i229, -1970324836974592
  br i1 %i.ir, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit232, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit232.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit232: ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE:bb.a
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !43 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 192 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !46 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 200
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !56
  %i.el = icmp ult ptr %i.ei, %i.ek
  br i1 %i.el, label %bb.ab, label %bb.ac, !prof !42

bb.ab:                                            ; preds = %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.em, ptr %i.eh, align 8, !tbaa !46
  store i64 %i.ee, ptr %i.ei, align 8, !tbaa !40
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.ac:                                            ; preds = %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit
  %i.en = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.eg, i64 %i.ee) #17
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.ab, %bb.ac
  %.0.i.i.i.i.i.i65 = phi ptr [ %i.ei, %bb.ab ], [ %i.en, %bb.ac ]
  %.sroa.070.0.extract.trunc = trunc i64 %i.bv to i32
  %i.eo = call ptr @_ZN6hermes2vm11HiddenClass14deletePropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_15DictPropertyMap11PropertyPosE(ptr %.0.i.i.i.i.i.i65, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %.sroa.070.0.extract.trunc) #17
  %.sroa.0.0.copyload.i.i66 = load i64, ptr %0, align 8, !tbaa !40
  %i.ep = and i64 %.sroa.0.0.copyload.i.i66, 281474976710655
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 12 ; 3 uses
  %.sroa.0.0.copyload.i.i.i67 = load i64, ptr %i.eo, align 8, !tbaa !40 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !73
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = and i64 %i.eu, 562949949227008
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = icmp eq ptr %i.et, %i.ew
  br i1 %i.ex, label %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.ad, !prof !42

bb.ad:                                            ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.ey = and i64 %.sroa.0.0.copyload.i.i.i67, 281474976710655
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.fa = inttoptr i64 %i.ey to ptr
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ez, ptr noundef nonnull align 4 dereferenceable(4) %i.er, ptr noundef %i.fa) #17
  br label %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit, %bb.ad
  %i.fb = sub i64 %.sroa.0.0.copyload.i.i.i67, %i.br
  %i.fc = trunc i64 %i.fb to i32
  store i32 %i.fc, ptr %i.er, align 4, !tbaa !3
  br label %bb.ah

bb.ae:                                            ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = and i32 %i.fe, 128
  %.not50 = icmp eq i32 %i.ff, 0
  br i1 %.not50, label %bb.ah, label %bb.af, !prof !42

bb.af:                                            ; preds = %bb.ae
  %i.fg = call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i) ; 2 uses
  %.not151 = icmp eq ptr %i.fg, inttoptr (i64 -1 to ptr)
  br i1 %.not151, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fh = call i32 @_ZN6hermes2vm7JSProxy14deleteComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.fg) #17
  %.sroa.02.0.insert.ext = and i32 %i.fh, 65535
  %i.fi = call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_112proxyOpFlagsERNS0_7RuntimeENS0_11PropOpFlagsEPKcNS0_10CallResultIbLNS0_6detail20CallResultSpecializeE1EEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %3, ptr noundef nonnull @.str.25, i32 %.sroa.02.0.insert.ext)
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, %bb.ae, %bb.ag, %bb.af, %bb.u, %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit60, %_ZN6hermes2vm11TwineChar16C2EPKc.exit57
  %.sroa.0112.3 = phi i32 [ %i.cf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit57 ], [ 1, %bb.r ], [ 0, %bb.af ], [ 1, %bb.u ], [ %i.cw, %_ZN6hermes2vm11TwineChar16C2EPKc.exit60 ], [ %i.fi, %bb.ag ], [ 257, %bb.ae ], [ 257, %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.thread131

.thread131:                                       ; preds = %bb.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.l, %bb.m, %bb.ah, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.0112.6 = phi i32 [ 0, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 1, %bb.m ], [ 0, %bb.o ], [ 257, %bb.l ], [ %i.bf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0112.3, %bb.ah ]
  ret i32 %.sroa.0112.6
}

declare i32 @_ZN6hermes2vm7JSProxy14deleteComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 0, ptr %6, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 -1, ptr %i.a, align 4, !tbaa !367
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.0.0.copyload.i.i8.i.i = load i32, ptr %i.d, align 4, !tbaa !3
  %i.e = ptrtoint ptr %1 to i64
  %i.f = zext i32 %.sroa.0.0.copyload.i.i8.i.i to i64
  %i.g = add i64 %i.f, %i.e
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %6) #17 ; 2 uses
  %i.j = and i64 %i.i, 4294967296
  %.not63 = icmp eq i64 %i.j, 0
  br i1 %.not63, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.050.0.extract.trunc = trunc i64 %i.i to i32
  %.sroa.021.0.copyload = load i64, ptr %6, align 8
  %i.k = ptrtoint ptr %4 to i64
  %i.l = call i32 @_ZN6hermes2vm8JSObject17updateOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_15DictPropertyMap11PropertyPosENS0_23NamedPropertyDescriptorENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 %.sroa.050.0.extract.trunc, i64 %.sroa.021.0.copyload, i32 %3, i64 %i.k, i32 %5)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.m = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = and i32 %i.p, 192
  %or.cond.not = icmp eq i32 %i.q, 0
  br i1 %or.cond.not, label %bb.l, label %.critedge, !prof !318

.critedge:                                        ; preds = %bb.c
  %i.r = and i32 %i.p, 128
  %.not45 = icmp eq i32 %i.r, 0
  br i1 %.not45, label %bb.k, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.s = and i32 %2, 268435456
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.u = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.t, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = or i64 %i.v, -844424930131968            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !46
  store i64 %i.w, ptr %i.aa, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.af = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.y, i64 %i.w) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.h:                                             ; preds = %bb.d
  %i.ag = zext i32 %2 to i64
  %i.ah = or disjoint i64 %i.ag, -1266637395197952 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 192 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.ao = icmp ult ptr %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !46
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aj, i64 %i.ah) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %.sroa.049.0 = phi ptr [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.al, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = call i32 @_ZN6hermes2vm7JSProxy17defineOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES8_NS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.049.0, i32 %3, ptr %4, i32 %5) #17
  br label %bb.m

bb.k:                                             ; preds = %.critedge
  %i.as = and i32 %i.p, -193
  store i32 %i.as, ptr %i.o, align 4
  call void @_ZN6hermes2vm8Callable20defineLazyPropertiesENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  %i.at = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 %3, ptr %4, i32 %5)
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.au = call i32 @_ZN6hermes2vm8JSObject14addOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 %3, ptr %4, i32 %5)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.b
  %.sroa.044.0.in = phi i32 [ %i.l, %bb.b ], [ %i.ar, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %i.at, %bb.k ], [ %i.au, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.sroa.044.0.insert.ext = and i32 %.sroa.044.0.in, 65535
  ret i32 %.sroa.044.0.insert.ext
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject17updateOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_15DictPropertyMap11PropertyPosENS0_23NamedPropertyDescriptorENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 %3, i64 %4, i32 %5, i64 %6, i32 %7) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.041.0.extract.trunc = trunc i64 %4 to i16 ; 3 uses
  %.sroa.11.0.extract.shift = lshr i64 %4, 16
  %.sroa.11.0.extract.trunc = trunc nuw i64 %.sroa.11.0.extract.shift to i48 ; 2 uses
  %.sroa.0114.0.extract.trunc = trunc i32 %5 to i16 ; 2 uses
  %i.a = inttoptr i64 %6 to ptr                   ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %.sroa.1.0.extract.shift.i = lshr i64 %4, 32    ; 2 uses
  %i.d = icmp ult i64 %4, 21474836480
  br i1 %i.d, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.f, align 4, !tbaa !3
  %i.g = ptrtoint ptr %1 to i64
  %i.h = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.i = add i64 %i.h, %i.g
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add nuw nsw i64 %.sroa.1.0.extract.shift.i, 4294967291
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = and i64 %i.k, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit: ; preds = %bb.b, %bb.c
  %.sink6.i.i = phi i64 [ %i.m, %bb.c ], [ %.sroa.1.0.extract.shift.i, %bb.b ]
  %.sink.i.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.sink6.i.i
  %.sroa.0.0.i.i = load i32, ptr %i.n, align 4, !tbaa !3 ; 9 uses
  %i.o = trunc i32 %.sroa.0.0.i.i to i8
  %i.p = and i8 %i.o, 15
  switch i8 %i.p, label %default.unreachable [
    i8 0, label %bb.d
    i8 8, label %bb.d
    i8 1, label %bb.e
    i8 9, label %bb.e
    i8 2, label %bb.f
    i8 10, label %bb.f
    i8 3, label %bb.g
    i8 11, label %bb.g
    i8 4, label %bb.h
    i8 12, label %bb.h
    i8 5, label %bb.i
    i8 13, label %bb.i
    i8 6, label %bb.j
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
    i8 7, label %bb.k
    i8 15, label %bb.l
  ]

bb.d:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.q = ptrtoint ptr %1 to i64
  %i.r = zext i32 %.sroa.0.0.i.i to i64
  %i.s = add i64 %i.r, %i.q
  %i.t = or i64 %i.s, -281474976710656
  %i.u = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.t
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.v = and i32 %.sroa.0.0.i.i, -8
  %i.w = ptrtoint ptr %1 to i64
  %i.x = zext i32 %i.v to i64
  %i.y = add i64 %i.x, %i.w
  %i.z = or i64 %i.y, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.f:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.aa = and i32 %.sroa.0.0.i.i, -8
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = zext i32 %i.aa to i64
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = or i64 %i.ad, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.g:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.af = and i32 %.sroa.0.0.i.i, -8
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = zext i32 %i.af to i64
  %i.ai = add i64 %i.ah, %i.ag
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !311 ; 2 uses
  %i.am = fcmp uno double %i.al, 0.000000e+00
  %i.an = bitcast double %i.al to i64
  %.sroa.0.0.i.i77 = select i1 %i.am, i64 9221120237041090560, i64 %i.an, !prof !39
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.h:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.ao = ashr i32 %.sroa.0.0.i.i, 3
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = bitcast double %i.ap to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.i:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.ar = lshr i32 %.sroa.0.0.i.i, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = or disjoint i64 %i.as, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.j:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.au = icmp ugt i32 %.sroa.0.0.i.i, 15
  %i.av = zext i1 %i.au to i64
  %i.aw = or disjoint i64 %i.av, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.k:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.l:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

default.unreachable:                              ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.05.0.i = phi i64 [ %i.u, %bb.d ], [ %i.z, %bb.e ], [ %i.ae, %bb.f ], [ %.sroa.0.0.i.i77, %bb.g ], [ %i.aq, %bb.h ], [ %i.at, %bb.i ], [ %i.aw, %bb.j ], [ -1548112371908608, %bb.l ], [ -1970324836974592, %bb.k ], [ -1688849860263936, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit ]
  %i.ax = tail call { i64, i8 } @_ZN6hermes2vm8JSObject19checkPropertyUpdateERNS0_7RuntimeENS0_13PropertyFlagsENS0_19DefinePropertyFlagsENS0_11HermesValueENS0_6HandleIS6_EENS0_11PropOpFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 %.sroa.041.0.extract.trunc, i32 %5, i64 %.sroa.05.0.i, ptr %i.a, i32 %7) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.ax, 0 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.ax, 1
  %i.ay = icmp eq i8 %.fca.1.extract, 0
  br i1 %i.ay, label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
  %.sroa.0106.0.extract.trunc = trunc i64 %.fca.0.extract to i32 ; 2 uses
  %i.az = icmp eq i32 %.sroa.0106.0.extract.trunc, 0
  br i1 %i.az, label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0106.4.extract.shift = lshr i64 %.fca.0.extract, 32
  %.sroa.0106.4.extract.trunc = trunc i64 %.sroa.0106.4.extract.shift to i16 ; 3 uses
  %.not127 = icmp eq i16 %.sroa.0106.4.extract.trunc, %.sroa.041.0.extract.trunc
  br i1 %.not127, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.11.sroa.0.0.insert.mask = and i48 %.sroa.11.0.extract.trunc, -65536
  %.sroa.0.0.copyload.i.i78 = load i64, ptr %0, align 8, !tbaa !40
  %i.ba = and i64 %.sroa.0.0.copyload.i.i78, 281474976710655
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bc, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i79 = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.bd = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.be = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = or i64 %i.bf, -281474976710656
  %i.bh = select i1 %.not.i.i.i.i.i79, i64 -281474976710656, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !46 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !56
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.p, label %bb.q, !prof !42

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !46
  store i64 %i.bh, ptr %i.bl, align 8, !tbaa !40
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.q:                                             ; preds = %bb.o
  %i.bq = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bj, i64 %i.bh) #17
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.p ], [ %i.bq, %bb.q ]
  %i.br = tail call ptr @_ZN6hermes2vm11HiddenClass14updatePropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_15DictPropertyMap11PropertyPosENS0_13PropertyFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %3, i16 %.sroa.0106.4.extract.trunc) #17
  %.sroa.0.0.copyload.i.i80 = load i64, ptr %0, align 8, !tbaa !40
  %i.bs = and i64 %.sroa.0.0.copyload.i.i80, 281474976710655
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12 ; 3 uses
  %.sroa.0.0.copyload.i.i.i81 = load i64, ptr %i.br, align 8, !tbaa !40 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !73
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = and i64 %i.bx, 562949949227008
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = icmp eq ptr %i.bw, %i.bz
  br i1 %i.ca, label %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.r, !prof !42

bb.r:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.cb = and i64 %.sroa.0.0.copyload.i.i.i81, 281474976710655
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cd = inttoptr i64 %i.cb to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %i.bu, ptr noundef %i.cd) #17
  br label %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit, %bb.r
  %i.ce = sub i64 %.sroa.0.0.copyload.i.i.i81, %i.bd
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %i.bu, align 4, !tbaa !3
  br label %bb.s

bb.s:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, %bb.n
  %.sroa.041.0 = phi i16 [ %.sroa.0106.4.extract.trunc, %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit ], [ %.sroa.041.0.extract.trunc, %bb.n ]
  %.sroa.11.sroa.0.0 = phi i48 [ %.sroa.11.sroa.0.0.insert.mask, %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit ], [ %.sroa.11.0.extract.trunc, %bb.n ] ; 6 uses
  %i.cg = icmp eq i32 %.sroa.0106.0.extract.trunc, 1
  br i1 %i.cg, label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = and i16 %.sroa.0114.0.extract.trunc, 256
  %.not = icmp eq i16 %i.ch, 0
  br i1 %.not, label %bb.an, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = and i16 %.sroa.041.0, 64
  %.not76 = icmp eq i16 %i.ci, 0
  br i1 %.not76, label %bb.v, label %bb.am, !prof !42

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i82 = load i64, ptr %i.a, align 8, !tbaa !40 ; 9 uses
  %i.cj = ashr i64 %.sroa.0.0.copyload.i.i.i82, 47
  switch i64 %i.cj, label %bb.ad [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.w
    i64 -11, label %bb.x
    i64 -10, label %bb.y
    i64 -9, label %bb.z
    i64 -6, label %bb.aa
    i64 -5, label %bb.aa
    i64 -4, label %bb.ab
    i64 -3, label %bb.ab
    i64 -2, label %bb.ac
    i64 -1, label %bb.ac
  ]

bb.w:                                             ; preds = %bb.v
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.x:                                             ; preds = %bb.v
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.y:                                             ; preds = %bb.v
  %i.ck = trunc i64 %.sroa.0.0.copyload.i.i.i82 to i1
  %i.cl = select i1 %i.ck, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.z:                                             ; preds = %bb.v
  %i.cm = trunc i64 %.sroa.0.0.copyload.i.i.i82 to i32
  %i.cn = shl i32 %i.cm, 3
  %i.co = or disjoint i32 %i.cn, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.aa:                                            ; preds = %bb.v, %bb.v
  %i.cp = ptrtoint ptr %1 to i64
  %i.cq = sub i64 %.sroa.0.0.copyload.i.i.i82, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = or i32 %i.cr, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.ab:                                            ; preds = %bb.v, %bb.v
  %i.ct = ptrtoint ptr %1 to i64
  %i.cu = sub i64 %.sroa.0.0.copyload.i.i.i82, %i.ct
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = or i32 %i.cv, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.ac:                                            ; preds = %bb.v, %bb.v
  %i.cx = ptrtoint ptr %1 to i64
  %i.cy = sub i64 %.sroa.0.0.copyload.i.i.i82, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.ad:                                            ; preds = %bb.v
  %i.da = bitcast i64 %.sroa.0.0.copyload.i.i.i82 to double
  %i.db = fptosi double %i.da to i32
  %i.dc = shl i32 %i.db, 3                        ; 2 uses
  %i.dd = ashr exact i32 %i.dc, 3
  %i.de = sitofp i32 %i.dd to double
  %i.df = bitcast double %i.de to i64
  %i.dg = icmp eq i64 %.sroa.0.0.copyload.i.i.i82, %i.df
  br i1 %i.dg, label %bb.ae, label %bb.af, !prof !42

bb.ae:                                            ; preds = %bb.ad
  %i.dh = or disjoint i32 %i.dc, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.af:                                            ; preds = %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !34 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.dk, %i.dm
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.ah, !prof !39

bb.ag:                                            ; preds = %bb.af
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.do = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dn, i32 noundef 16) #17
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.ah:                                            ; preds = %bb.af
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !34
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.ah, %bb.ag
  %i.dp = phi ptr [ %i.do, %bb.ag ], [ %i.dj, %bb.ah ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i82, ptr %i.dq, align 8, !tbaa !311
  store i32 402653200, ptr %i.dp, align 8, !tbaa !41
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %1 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = trunc i64 %i.dt to i32
  %i.dv = or i32 %i.du, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ae, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.04.0.i = phi i32 [ 7, %bb.v ], [ %i.cz, %bb.ac ], [ 14, %bb.w ], [ 15, %bb.x ], [ %i.cl, %bb.y ], [ %i.co, %bb.z ], [ %i.cs, %bb.aa ], [ %i.cw, %bb.ab ], [ %i.dh, %bb.ae ], [ %i.dv, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 4 uses
  %.sroa.0.0.copyload.i.i83 = load i64, ptr %0, align 8, !tbaa !40
  %i.dw = and i64 %.sroa.0.0.copyload.i.i83, 281474976710655
  %i.dx = inttoptr i64 %i.dw to ptr               ; 2 uses
  %.sroa.11.0.insert.ext62 = zext i48 %.sroa.11.sroa.0.0 to i64
  %.sroa.1.0.extract.shift.i84 = lshr i64 %.sroa.11.0.insert.ext62, 16 ; 2 uses
  %i.dy = icmp ult i48 %.sroa.11.sroa.0.0, 327680
  br i1 %i.dy, label %bb.ai, label %bb.ak, !prof !42

bb.ai:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.sroa.1.0.extract.shift.i84 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !73
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = and i64 %i.ed, 1125899902648320
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = icmp eq ptr %i.ec, %i.ef
  br i1 %i.eg, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i, label %bb.aj, !prof !42

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.eh, ptr noundef nonnull align 4 dereferenceable(4) %i.ea, i32 %.sroa.04.0.i) #17
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i: ; preds = %bb.aj, %bb.ai
  store i32 %.sroa.04.0.i, ptr %i.ea, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.ak:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %.sroa.0.0.copyload.i.i.i.i85 = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.ej = ptrtoint ptr %1 to i64
  %i.ek = zext i32 %.sroa.0.0.copyload.i.i.i.i85 to i64
  %i.el = add i64 %i.ek, %i.ej
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = add nuw nsw i64 %.sroa.1.0.extract.shift.i84, 4294967291
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = and i64 %i.en, 4294967295
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ep ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !73
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = and i64 %i.et, -4194304
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = icmp eq ptr %i.es, %i.ev
  br i1 %i.ew, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i, label %bb.al, !prof !42

bb.al:                                            ; preds = %bb.ak
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ex, ptr noundef nonnull align 4 dereferenceable(4) %i.eq, i32 %.sroa.04.0.i) #17
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i: ; preds = %bb.al, %bb.ak
  store i32 %.sroa.04.0.i, ptr %i.eq, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.am:                                            ; preds = %bb.u
  %i.ey = tail call i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i32 %7) #17
  %i.ez = and i32 %i.ey, 65535
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.an:                                            ; preds = %bb.t
  %i.fa = and i16 %.sroa.0114.0.extract.trunc, 192
  %.not128 = icmp eq i16 %i.fa, 0
  br i1 %.not128, label %bb.bf, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.sroa.0.0.copyload.i.i.i87 = load i64, ptr %i.a, align 8, !tbaa !40 ; 9 uses
  %i.fb = ashr i64 %.sroa.0.0.copyload.i.i.i87, 47
  switch i64 %i.fb, label %bb.aw [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91
    i64 -12, label %bb.ap
    i64 -11, label %bb.aq
    i64 -10, label %bb.ar
    i64 -9, label %bb.as
    i64 -6, label %bb.at
    i64 -5, label %bb.at
    i64 -4, label %bb.au
    i64 -3, label %bb.au
    i64 -2, label %bb.av
    i64 -1, label %bb.av
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91

bb.aq:                                            ; preds = %bb.ao
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91

bb.ar:                                            ; preds = %bb.ao
  %i.fc = trunc i64 %.sroa.0.0.copyload.i.i.i87 to i1
  %i.fd = select i1 %i.fc, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91

bb.as:                                            ; preds = %bb.ao
  %i.fe = trunc i64 %.sroa.0.0.copyload.i.i.i87 to i32
  %i.ff = shl i32 %i.fe, 3
  %i.fg = or disjoint i32 %i.ff, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91

bb.at:                                            ; preds = %bb.ao, %bb.ao
  %i.fh = ptrtoint ptr %1 to i64
  %i.fi = sub i64 %.sroa.0.0.copyload.i.i.i87, %i.fh
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = or i32 %i.fj, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91

bb.au:                                            ; preds = %bb.ao, %bb.ao
  %i.fl = ptrtoint ptr %1 to i64
  %i.fm = sub i64 %.sroa.0.0.copyload.i.i.i87, %i.fl
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = or i32 %i.fn, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91

bb.av:                                            ; preds = %bb.ao, %bb.ao
  %i.fp = ptrtoint ptr %1 to i64
  %i.fq = sub i64 %.sroa.0.0.copyload.i.i.i87, %i.fp
  %i.fr = trunc i64 %i.fq to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91

bb.aw:                                            ; preds = %bb.ao
  %i.fs = bitcast i64 %.sroa.0.0.copyload.i.i.i87 to double
  %i.ft = fptosi double %i.fs to i32
  %i.fu = shl i32 %i.ft, 3                        ; 2 uses
  %i.fv = ashr exact i32 %i.fu, 3
  %i.fw = sitofp i32 %i.fv to double
  %i.fx = bitcast double %i.fw to i64
  %i.fy = icmp eq i64 %.sroa.0.0.copyload.i.i.i87, %i.fx
  br i1 %i.fy, label %bb.ax, label %bb.ay, !prof !42

bb.ax:                                            ; preds = %bb.aw
  %i.fz = or disjoint i32 %i.fu, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91

bb.ay:                                            ; preds = %bb.aw
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !34 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !38
  %.not.i.not.i.i.i.i.i.i.i.i89 = icmp ugt ptr %i.gc, %i.ge
  br i1 %.not.i.not.i.i.i.i.i.i.i.i89, label %bb.az, label %bb.ba, !prof !39

bb.az:                                            ; preds = %bb.ay
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.gg = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.gf, i32 noundef 16) #17
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i90

bb.ba:                                            ; preds = %bb.ay
  store ptr %i.gc, ptr %i.ga, align 8, !tbaa !34
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i90

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i90: ; preds = %bb.ba, %bb.az
  %i.gh = phi ptr [ %i.gg, %bb.az ], [ %i.gb, %bb.ba ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i87, ptr %i.gi, align 8, !tbaa !311
  store i32 402653200, ptr %i.gh, align 8, !tbaa !41
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %1 to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = or i32 %i.gm, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91: ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.ax, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i90
  %.sroa.04.0.i88 = phi i32 [ 7, %bb.ao ], [ %i.fr, %bb.av ], [ 14, %bb.ap ], [ 15, %bb.aq ], [ %i.fd, %bb.ar ], [ %i.fg, %bb.as ], [ %i.fk, %bb.at ], [ %i.fo, %bb.au ], [ %i.fz, %bb.ax ], [ %i.gn, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i90 ] ; 4 uses
  %.sroa.0.0.copyload.i.i92 = load i64, ptr %0, align 8, !tbaa !40
  %i.go = and i64 %.sroa.0.0.copyload.i.i92, 281474976710655
  %i.gp = inttoptr i64 %i.go to ptr               ; 2 uses
  %.sroa.11.0.insert.ext54 = zext i48 %.sroa.11.sroa.0.0 to i64
  %.sroa.1.0.extract.shift.i93 = lshr i64 %.sroa.11.0.insert.ext54, 16 ; 2 uses
  %i.gq = icmp ult i48 %.sroa.11.sroa.0.0, 327680
  br i1 %i.gq, label %bb.bb, label %bb.bd, !prof !42

bb.bb:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.sroa.1.0.extract.shift.i93 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !73
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = and i64 %i.gv, 1125899902648320
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = icmp eq ptr %i.gu, %i.gx
  br i1 %i.gy, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i96, label %bb.bc, !prof !42

bb.bc:                                            ; preds = %bb.bb
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.gz, ptr noundef nonnull align 4 dereferenceable(4) %i.gs, i32 %.sroa.04.0.i88) #17
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i96

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i96: ; preds = %bb.bc, %bb.bb
  store i32 %.sroa.04.0.i88, ptr %i.gs, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.bd:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit91
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %.sroa.0.0.copyload.i.i.i.i94 = load i32, ptr %i.ha, align 4, !tbaa !3
  %i.hb = ptrtoint ptr %1 to i64
  %i.hc = zext i32 %.sroa.0.0.copyload.i.i.i.i94 to i64
  %i.hd = add i64 %i.hc, %i.hb
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = add nuw nsw i64 %.sroa.1.0.extract.shift.i93, 4294967291
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hh = and i64 %i.hf, 4294967295
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hh ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !73
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = and i64 %i.hl, -4194304
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = icmp eq ptr %i.hk, %i.hn
  br i1 %i.ho, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i95, label %bb.be, !prof !42

bb.be:                                            ; preds = %bb.bd
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.hp, ptr noundef nonnull align 4 dereferenceable(4) %i.hi, i32 %.sroa.04.0.i88) #17
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i95

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i95: ; preds = %bb.be, %bb.bd
  store i32 %.sroa.04.0.i88, ptr %i.hi, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.bf:                                            ; preds = %bb.an
  %.sroa.0.0.copyload.i.i98 = load i64, ptr %0, align 8, !tbaa !40
  %i.hq = and i64 %.sroa.0.0.copyload.i.i98, 281474976710655
  %i.hr = inttoptr i64 %i.hq to ptr               ; 2 uses
  %.sroa.11.0.insert.ext = zext i48 %.sroa.11.sroa.0.0 to i64
  %.sroa.1.0.extract.shift.i99 = lshr i64 %.sroa.11.0.insert.ext, 16 ; 2 uses
  %i.hs = icmp ult i48 %.sroa.11.sroa.0.0, 327680
  br i1 %i.hs, label %bb.bg, label %bb.bi, !prof !42

bb.bg:                                            ; preds = %bb.bf
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.sroa.1.0.extract.shift.i99 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !73
  %i.hx = ptrtoint ptr %i.hu to i64
  %i.hy = and i64 %i.hx, 1125899902648320
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = icmp eq ptr %i.hw, %i.hz
  br i1 %i.ia, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i102, label %bb.bh, !prof !42

bb.bh:                                            ; preds = %bb.bg
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ib, ptr noundef nonnull align 4 dereferenceable(4) %i.hu, i32 14) #17
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i102

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i102: ; preds = %bb.bh, %bb.bg
  store i32 14, ptr %i.hu, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.bi:                                            ; preds = %bb.bf
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %.sroa.0.0.copyload.i.i.i.i100 = load i32, ptr %i.ic, align 4, !tbaa !3
  %i.id = ptrtoint ptr %1 to i64
  %i.ie = zext i32 %.sroa.0.0.copyload.i.i.i.i100 to i64
  %i.if = add i64 %i.ie, %i.id
  %i.ig = inttoptr i64 %i.if to ptr
  %i.ih = add nuw nsw i64 %.sroa.1.0.extract.shift.i99, 4294967291
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ij = and i64 %i.ih, 4294967295
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ij ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !73
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = and i64 %i.in, -4194304
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = icmp eq ptr %i.im, %i.ip
  br i1 %i.iq, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i101, label %bb.bj, !prof !42

bb.bj:                                            ; preds = %bb.bi
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ir, ptr noundef nonnull align 4 dereferenceable(4) %i.ik, i32 14) #17
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i101

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i101: ; preds = %bb.bj, %bb.bi
  store i32 14, ptr %i.ik, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i96, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i95, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i102, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i101, %bb.s, %bb.m, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, %bb.am
  %.sroa.0122.0 = phi i32 [ %i.ez, %bb.am ], [ 0, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ], [ 1, %bb.m ], [ 257, %bb.s ], [ 257, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i101 ], [ 257, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i102 ], [ 257, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i95 ], [ 257, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i96 ], [ 257, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i ], [ 257, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i ]
  ret i32 %.sroa.0122.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 %3, ptr nofree readonly captures(none) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6hermes2vm8JSObject18addOwnPropertyImplENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 %3, ptr %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm8JSObject18addOwnPropertyImplENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 %3, ptr nofree readonly captures(none) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.hermes::vm::CallResult.235", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = or i64 %i.f, -281474976710656
  %i.h = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.k, align 8, !tbaa !46
  store i64 %i.h, ptr %i.l, align 8, !tbaa !40
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.j, i64 %i.h) #17
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ]
  call void @_ZN6hermes2vm11HiddenClass11addPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.235") align 8 %5, ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 %3) #17
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !510, !range !10, !noundef !11
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.d, !prof !39

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %.sroa.0.0.copyload.i.i13 = load i64, ptr %0, align 8, !tbaa !40
  %i.u = and i64 %.sroa.0.0.copyload.i.i13, 281474976710655
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !316
  %.sroa.0.0.copyload.i.i.i14 = load i64, ptr %i.x, align 8, !tbaa !40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = and i64 %i.aa, 562949949227008
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = icmp eq ptr %i.z, %i.ac
  br i1 %i.ad, label %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i14, 281474976710655
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ag = inttoptr i64 %i.ae to ptr
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef %i.ag) #17
  br label %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %bb.d, %bb.e
  %i.ah = sub i64 %.sroa.0.0.copyload.i.i.i14, %i.d
  %i.ai = trunc i64 %i.ah to i32
  store i32 %i.ai, ptr %i.w, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !515
  call void @_ZN6hermes2vm8JSObject22allocateNewSlotStorageENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ak, ptr %4)
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %0, align 8, !tbaa !40
  %i.al = and i64 %.sroa.0.0.copyload.i.i15, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.sroa.0.0.copyload.i.i16 = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ao = zext i32 %.sroa.0.0.copyload.i.i16 to i64
  %i.ap = add i64 %i.ao, %i.d
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.as = load i8, ptr %i.ar, align 2
  %i.at = and i8 %i.as, 4
  %.not = icmp eq i8 %i.at, 0
  br i1 %.not, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, -17
  store i32 %i.aw, ptr %i.au, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, %bb.f, %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %.0 = phi i32 [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit ], [ 1, %bb.f ], [ 1, %_ZN6hermes2vm9GCPointerINS0_11HiddenClassEE10setNonNullERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 7 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 4 ; 7 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !46
  store i64 -844424930131968, ptr %i.i, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 -844424930131968) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

end_hunk_6
