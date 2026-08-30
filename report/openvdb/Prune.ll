Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Prune?download=true
inline.NumInlined: 13729
inline.NumDeleted: 5876
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE16initRootChildrenINS1_8RootNodeIS7_EEEEbRT_:bb.a

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIbLj3EEELj4EEELj5EEESt14default_deleteIS9_EE5resetIPS8_vEEvT_.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE10childCountEv.exit
  %i.s = phi i64 [ %i.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE10childCountEv.exit ], [ %i.q, %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIbLj3EEELj4EEELj5EEESt14default_deleteIS9_EE5resetIPS8_vEEvT_.exit ]
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !587  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.c, %i.v
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.y, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !592
  %.not1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i.i11, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i, !llvm.loop !596

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.v, %bb.e ], [ %i.y, %bb.f ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not2728 = icmp eq ptr %.sroa.2.1.i, %i.c
  br i1 %.not2728, label %.thread25, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.030 = phi ptr [ %i.ab, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ], [ %i.u, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %.sroa.5.029 = phi ptr [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ], [ %.sroa.2.1.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.029, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !597
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store ptr %i.aa, ptr %.030, align 8, !tbaa !61
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.5.029) #28 ; 3 uses
  %.not2.i.i.i13 = icmp eq ptr %i.ac, %i.c
  br i1 %.not2.i.i.i13, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph, %bb.g
  %.sroa.5.2 = phi ptr [ %i.af, %bb.g ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !592
  %.not1.i.i.i15 = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i.i15, label %bb.g, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2) #28 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i16, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i14, !llvm.loop !596

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.g, %.lr.ph
  %.sroa.5.3 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.5.2, %.lr.ph.i.i.i14 ], [ %i.af, %bb.g ] ; 2 uses
  %.not27 = icmp eq ptr %.sroa.5.3, %i.c
  br i1 %.not27, label %.thread25, label %.lr.ph, !llvm.loop !601

.thread25:                                        ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.d
  %i.ag = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE10childCountEv.exit.thread ], [ false, %bb.d ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIbLj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS6_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector", align 8       ; 20 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon, align 8                ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<bool, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.361, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !46     ; 9 uses
  br i1 %3, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not149 = icmp eq i64 %i.a, 0
  br i1 %.not149, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29
          to label %.noexc50 unwind label %bb.f   ; 8 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !602    ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !605
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc50
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #25
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !602
  store ptr %i.f, ptr %i.d, align 8, !tbaa !605
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !606
  %.pre115.a = load i64, ptr %1, align 8, !tbaa !46
  %i.q = icmp eq i64 %.pre115.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %vector.ph

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit63
  %i.u = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 5 uses
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.bg, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %.03695 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03695
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 262144
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi179 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !129
  %wide.load180 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !129
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ae = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load180)
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ah = add <2 x i32> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i32> %vec.phi179, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, 512
  br i1 %i.aj, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !607

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.al, ptr %i.w, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.s, align 8, !tbaa !605
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE10childCountEv.exit
  %i.an = ptrtoint ptr %i.v to i64
  %i.ao = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc61.a unwind label %.loopexit.split-lp

.noexc61.a:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55: ; preds = %bb.h
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i56, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29
          to label %.noexc62 unwind label %.loopexit87 ; 5 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %i.al, ptr %i.ay, align 8, !tbaa !129
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

bb.j:                                             ; preds = %.noexc62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.u, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58: ; preds = %bb.j, %.noexc62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i59 = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i59, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  store ptr %i.ax, ptr %6, align 8, !tbaa !602
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !605
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.be, ptr %i.c, align 8, !tbaa !606
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

.loopexit87:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt6vectorImSaImEE9push_backEOm.exit63:         ; preds = %bb.g, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60
  %i.bf = phi ptr [ %i.u, %bb.g ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bg = phi ptr [ %i.v, %bb.g ], [ %i.be, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ]
  %i.bh = phi ptr [ %i.am, %bb.g ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bi = add nuw i64 %.03695, 1                  ; 2 uses
  %i.bj = load i64, ptr %1, align 8, !tbaa !46
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %vector.ph, label %.loopexit, !llvm.loop !610

bb.l:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not148 = icmp eq i64 %i.a, 0
  br i1 %.not148, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.bn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.m
  %i.bo = phi ptr [ @.str.36, %bb.m ], [ @.str.34, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bo) #26
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %i.bp = shl nuw nsw i64 %i.a, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #29
          to label %.noexc77 unwind label %bb.f   ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.bq, align 8, !tbaa !129
  %i.br = add nsw i64 %i.a, -1                    ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc77
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !129
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc77
  store ptr %i.bq, ptr %6, align 8, !tbaa !602
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.a ; 2 uses
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !605
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !606
  %.pre = load i64, ptr %1, align 8, !tbaa !46
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.bv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.bv, ptr %7, align 8, !tbaa !611
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !613
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.bx, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %2, ptr %8, align 8, !tbaa !615
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.by, align 8, !tbaa !617
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.bz, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListINS7_12InternalNodeINS7_8LeafNodeIbLj3EEELj4EEEE16initNodeChildrenINS8_INS9_ISC_Lj5EEEEENS7_10NodeFilterEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSO_RSQ_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pre116.a = load ptr, ptr %i.bl, align 8, !tbaa !605
  %.pre117.a = load ptr, ptr %6, align 8, !tbaa !602
  br label %.loopexit

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.al

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit63, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.n
  %i.cb = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.n ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 8 uses
  %i.cc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre116.a, %bb.n ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 1
  br i1 %i.ch, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.loopexit
  %load_initial = load i64, ptr %i.cb, align 8    ; 2 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.cj = add nsw i64 %i.cg, -2
  %xtraiter = and i64 %i.ci, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader.new

.lr.ph97.preheader.new:                           ; preds = %.lr.ph97.preheader
  %unroll_iter = and i64 %i.ci, -4
  br label %.lr.ph97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph97
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph97.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ]
  %.03596.epil.init = phi i64 [ 1, %.lr.ph97.preheader ], [ %i.df, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod194 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph97.epil

.lr.ph97.epil:                                    ; preds = %.lr.ph97.epil, %.lr.ph97.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph97.epil.preheader ], [ %i.cn, %.lr.ph97.epil ]
  %.03596.epil = phi i64 [ %.03596.epil.init, %.lr.ph97.epil.preheader ], [ %i.co, %.lr.ph97.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph97.epil.preheader ], [ %epil.iter.next, %.lr.ph97.epil ]
  %i.cl = getelementptr [8 x i8], ptr %i.cb, i64 %.03596.epil ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !129
  %i.cn = add i64 %i.cm, %store_forwarded.epil    ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !129
  %i.co = add nuw i64 %.03596.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph97.epil, !llvm.loop !619

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.epil, %.loopexit
  %i.cp = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cp, label %.thread, label %bb.p

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph97.preheader.new ], [ %i.de, %.lr.ph97 ]
  %.03596 = phi i64 [ 1, %.lr.ph97.preheader.new ], [ %i.df, %.lr.ph97 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %niter.next.3, %.lr.ph97 ]
  %i.cq = getelementptr [8 x i8], ptr %i.cb, i64 %.03596 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = add i64 %i.cr, %store_forwarded         ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !129
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cu = getelementptr i8, ptr %i.ct, i64 8      ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cy = getelementptr i8, ptr %i.cx, i64 16     ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !129
  %i.da = add i64 %i.cz, %i.cw                    ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !129
  %i.db = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.dc = getelementptr i8, ptr %i.db, i64 24     ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = add i64 %i.dd, %i.da                    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE16initRootChildrenINS1_8RootNodeIS7_EEEEbRT_:bb.a

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIiLj3EEELj4EEELj5EEESt14default_deleteIS9_EE5resetIPS8_vEEvT_.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE10childCountEv.exit
  %i.s = phi i64 [ %i.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE10childCountEv.exit ], [ %i.q, %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIiLj3EEELj4EEELj5EEESt14default_deleteIS9_EE5resetIPS8_vEEvT_.exit ]
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !115
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !587  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.c, %i.v
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.y, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !819
  %.not1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i.i11, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i, !llvm.loop !823

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.v, %bb.e ], [ %i.y, %bb.f ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not2728 = icmp eq ptr %.sroa.2.1.i, %i.c
  br i1 %.not2728, label %.thread25, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.030 = phi ptr [ %i.ab, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ], [ %i.u, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %.sroa.5.029 = phi ptr [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ], [ %.sroa.2.1.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.029, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !824
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store ptr %i.aa, ptr %.030, align 8, !tbaa !116
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.5.029) #28 ; 3 uses
  %.not2.i.i.i13 = icmp eq ptr %i.ac, %i.c
  br i1 %.not2.i.i.i13, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph, %bb.g
  %.sroa.5.2 = phi ptr [ %i.af, %bb.g ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !819
  %.not1.i.i.i15 = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i.i15, label %bb.g, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2) #28 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i16, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i14, !llvm.loop !823

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.g, %.lr.ph
  %.sroa.5.3 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.5.2, %.lr.ph.i.i.i14 ], [ %i.af, %bb.g ] ; 2 uses
  %.not27 = icmp eq ptr %.sroa.5.3, %i.c
  br i1 %.not27, label %.thread25, label %.lr.ph, !llvm.loop !826

.thread25:                                        ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.d
  %i.ag = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE10childCountEv.exit.thread ], [ false, %bb.d ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIiLj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS6_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector", align 8       ; 20 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.433, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<int, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.439, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !101    ; 9 uses
  br i1 %3, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not149 = icmp eq i64 %i.a, 0
  br i1 %.not149, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29
          to label %.noexc50 unwind label %bb.f   ; 8 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !602    ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !605
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc50
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #25
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !602
  store ptr %i.f, ptr %i.d, align 8, !tbaa !605
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !606
  %.pre115.a = load i64, ptr %1, align 8, !tbaa !101
  %i.q = icmp eq i64 %.pre115.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %vector.ph

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit63
  %i.u = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 5 uses
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.bg, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %.03695 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !115
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03695
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 262144
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi179 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !129
  %wide.load180 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !129
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ae = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load180)
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ah = add <2 x i32> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i32> %vec.phi179, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, 512
  br i1 %i.aj, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !827

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.al, ptr %i.w, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.s, align 8, !tbaa !605
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE10childCountEv.exit
  %i.an = ptrtoint ptr %i.v to i64
  %i.ao = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc61.a unwind label %.loopexit.split-lp

.noexc61.a:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55: ; preds = %bb.h
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i56, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29
          to label %.noexc62 unwind label %.loopexit87 ; 5 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %i.al, ptr %i.ay, align 8, !tbaa !129
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

bb.j:                                             ; preds = %.noexc62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.u, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58: ; preds = %bb.j, %.noexc62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i59 = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i59, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  store ptr %i.ax, ptr %6, align 8, !tbaa !602
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !605
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.be, ptr %i.c, align 8, !tbaa !606
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

.loopexit87:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt6vectorImSaImEE9push_backEOm.exit63:         ; preds = %bb.g, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60
  %i.bf = phi ptr [ %i.u, %bb.g ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bg = phi ptr [ %i.v, %bb.g ], [ %i.be, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ]
  %i.bh = phi ptr [ %i.am, %bb.g ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bi = add nuw i64 %.03695, 1                  ; 2 uses
  %i.bj = load i64, ptr %1, align 8, !tbaa !101
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %vector.ph, label %.loopexit, !llvm.loop !828

bb.l:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not148 = icmp eq i64 %i.a, 0
  br i1 %.not148, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.bn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.m
  %i.bo = phi ptr [ @.str.36, %bb.m ], [ @.str.34, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bo) #26
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %i.bp = shl nuw nsw i64 %i.a, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #29
          to label %.noexc77 unwind label %bb.f   ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.bq, align 8, !tbaa !129
  %i.br = add nsw i64 %i.a, -1                    ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc77
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !129
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc77
  store ptr %i.bq, ptr %6, align 8, !tbaa !602
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.a ; 2 uses
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !605
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !606
  %.pre = load i64, ptr %1, align 8, !tbaa !101
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.bv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.bv, ptr %7, align 8, !tbaa !611
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !613
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.bx, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %2, ptr %8, align 8, !tbaa !615
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.by, align 8, !tbaa !617
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.bz, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListINS7_12InternalNodeINS7_8LeafNodeIiLj3EEELj4EEEE16initNodeChildrenINS8_INS9_ISC_Lj5EEEEENS7_10NodeFilterEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSO_RSQ_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pre116.a = load ptr, ptr %i.bl, align 8, !tbaa !605
  %.pre117.a = load ptr, ptr %6, align 8, !tbaa !602
  br label %.loopexit

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.al

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit63, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.n
  %i.cb = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.n ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 8 uses
  %i.cc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre116.a, %bb.n ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 1
  br i1 %i.ch, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.loopexit
  %load_initial = load i64, ptr %i.cb, align 8    ; 2 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.cj = add nsw i64 %i.cg, -2
  %xtraiter = and i64 %i.ci, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader.new

.lr.ph97.preheader.new:                           ; preds = %.lr.ph97.preheader
  %unroll_iter = and i64 %i.ci, -4
  br label %.lr.ph97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph97
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph97.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ]
  %.03596.epil.init = phi i64 [ 1, %.lr.ph97.preheader ], [ %i.df, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod194 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph97.epil

.lr.ph97.epil:                                    ; preds = %.lr.ph97.epil, %.lr.ph97.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph97.epil.preheader ], [ %i.cn, %.lr.ph97.epil ]
  %.03596.epil = phi i64 [ %.03596.epil.init, %.lr.ph97.epil.preheader ], [ %i.co, %.lr.ph97.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph97.epil.preheader ], [ %epil.iter.next, %.lr.ph97.epil ]
  %i.cl = getelementptr [8 x i8], ptr %i.cb, i64 %.03596.epil ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !129
  %i.cn = add i64 %i.cm, %store_forwarded.epil    ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !129
  %i.co = add nuw i64 %.03596.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph97.epil, !llvm.loop !829

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.epil, %.loopexit
  %i.cp = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cp, label %.thread, label %bb.p

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph97.preheader.new ], [ %i.de, %.lr.ph97 ]
  %.03596 = phi i64 [ 1, %.lr.ph97.preheader.new ], [ %i.df, %.lr.ph97 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %niter.next.3, %.lr.ph97 ]
  %i.cq = getelementptr [8 x i8], ptr %i.cb, i64 %.03596 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = add i64 %i.cr, %store_forwarded         ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !129
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cu = getelementptr i8, ptr %i.ct, i64 8      ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cy = getelementptr i8, ptr %i.cx, i64 16     ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !129
  %i.da = add i64 %i.cz, %i.cw                    ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !129
  %i.db = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.dc = getelementptr i8, ptr %i.db, i64 24     ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = add i64 %i.dd, %i.da                    ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE16initRootChildrenINS1_8RootNodeIS7_EEEEbRT_:bb.a

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIlLj3EEELj4EEELj5EEESt14default_deleteIS9_EE5resetIPS8_vEEvT_.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10childCountEv.exit
  %i.s = phi i64 [ %i.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10childCountEv.exit ], [ %i.q, %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIlLj3EEELj4EEELj5EEESt14default_deleteIS9_EE5resetIPS8_vEEvT_.exit ]
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !168
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !587  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.c, %i.v
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.y, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1047
  %.not1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i.i11, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1051

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.v, %bb.e ], [ %i.y, %bb.f ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not2728 = icmp eq ptr %.sroa.2.1.i, %i.c
  br i1 %.not2728, label %.thread25, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.030 = phi ptr [ %i.ab, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ], [ %i.u, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %.sroa.5.029 = phi ptr [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ], [ %.sroa.2.1.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.029, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1052
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store ptr %i.aa, ptr %.030, align 8, !tbaa !169
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.5.029) #28 ; 3 uses
  %.not2.i.i.i13 = icmp eq ptr %i.ac, %i.c
  br i1 %.not2.i.i.i13, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph, %bb.g
  %.sroa.5.2 = phi ptr [ %i.af, %bb.g ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1047
  %.not1.i.i.i15 = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i.i15, label %bb.g, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2) #28 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i16, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i14, !llvm.loop !1051

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.g, %.lr.ph
  %.sroa.5.3 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.5.2, %.lr.ph.i.i.i14 ], [ %i.af, %bb.g ] ; 2 uses
  %.not27 = icmp eq ptr %.sroa.5.3, %i.c
  br i1 %.not27, label %.thread25, label %.lr.ph, !llvm.loop !1054

.thread25:                                        ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.d
  %i.ag = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10childCountEv.exit.thread ], [ false, %bb.d ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS6_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector", align 8       ; 20 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.573, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<long, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.579, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !154    ; 9 uses
  br i1 %3, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not149 = icmp eq i64 %i.a, 0
  br i1 %.not149, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29
          to label %.noexc50 unwind label %bb.f   ; 8 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !602    ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !605
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc50
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #25
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !602
  store ptr %i.f, ptr %i.d, align 8, !tbaa !605
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !606
  %.pre115.a = load i64, ptr %1, align 8, !tbaa !154
  %i.q = icmp eq i64 %.pre115.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %vector.ph

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit63
  %i.u = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 5 uses
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.bg, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %.03695 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !168
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03695
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !169
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 262144
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi179 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !129
  %wide.load180 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !129
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ae = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load180)
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ah = add <2 x i32> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i32> %vec.phi179, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, 512
  br i1 %i.aj, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !1055

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.al, ptr %i.w, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.s, align 8, !tbaa !605
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE10childCountEv.exit
  %i.an = ptrtoint ptr %i.v to i64
  %i.ao = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc61.a unwind label %.loopexit.split-lp

.noexc61.a:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55: ; preds = %bb.h
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i56, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29
          to label %.noexc62 unwind label %.loopexit87 ; 5 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %i.al, ptr %i.ay, align 8, !tbaa !129
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

bb.j:                                             ; preds = %.noexc62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.u, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58: ; preds = %bb.j, %.noexc62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i59 = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i59, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  store ptr %i.ax, ptr %6, align 8, !tbaa !602
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !605
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.be, ptr %i.c, align 8, !tbaa !606
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

.loopexit87:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt6vectorImSaImEE9push_backEOm.exit63:         ; preds = %bb.g, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60
  %i.bf = phi ptr [ %i.u, %bb.g ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bg = phi ptr [ %i.v, %bb.g ], [ %i.be, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ]
  %i.bh = phi ptr [ %i.am, %bb.g ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bi = add nuw i64 %.03695, 1                  ; 2 uses
  %i.bj = load i64, ptr %1, align 8, !tbaa !154
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %vector.ph, label %.loopexit, !llvm.loop !1056

bb.l:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not148 = icmp eq i64 %i.a, 0
  br i1 %.not148, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.bn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.m
  %i.bo = phi ptr [ @.str.36, %bb.m ], [ @.str.34, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bo) #26
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %i.bp = shl nuw nsw i64 %i.a, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #29
          to label %.noexc77 unwind label %bb.f   ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.bq, align 8, !tbaa !129
  %i.br = add nsw i64 %i.a, -1                    ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc77
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !129
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc77
  store ptr %i.bq, ptr %6, align 8, !tbaa !602
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.a ; 2 uses
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !605
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !606
  %.pre = load i64, ptr %1, align 8, !tbaa !154
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.bv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.bv, ptr %7, align 8, !tbaa !611
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !613
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.bx, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %2, ptr %8, align 8, !tbaa !615
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.by, align 8, !tbaa !617
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.bz, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListINS7_12InternalNodeINS7_8LeafNodeIlLj3EEELj4EEEE16initNodeChildrenINS8_INS9_ISC_Lj5EEEEENS7_10NodeFilterEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSO_RSQ_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pre116.a = load ptr, ptr %i.bl, align 8, !tbaa !605
  %.pre117.a = load ptr, ptr %6, align 8, !tbaa !602
  br label %.loopexit

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.al

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit63, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.n
  %i.cb = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.n ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 8 uses
  %i.cc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre116.a, %bb.n ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 1
  br i1 %i.ch, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.loopexit
  %load_initial = load i64, ptr %i.cb, align 8    ; 2 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.cj = add nsw i64 %i.cg, -2
  %xtraiter = and i64 %i.ci, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader.new

.lr.ph97.preheader.new:                           ; preds = %.lr.ph97.preheader
  %unroll_iter = and i64 %i.ci, -4
  br label %.lr.ph97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph97
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph97.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ]
  %.03596.epil.init = phi i64 [ 1, %.lr.ph97.preheader ], [ %i.df, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod194 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph97.epil

.lr.ph97.epil:                                    ; preds = %.lr.ph97.epil, %.lr.ph97.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph97.epil.preheader ], [ %i.cn, %.lr.ph97.epil ]
  %.03596.epil = phi i64 [ %.03596.epil.init, %.lr.ph97.epil.preheader ], [ %i.co, %.lr.ph97.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph97.epil.preheader ], [ %epil.iter.next, %.lr.ph97.epil ]
  %i.cl = getelementptr [8 x i8], ptr %i.cb, i64 %.03596.epil ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !129
  %i.cn = add i64 %i.cm, %store_forwarded.epil    ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !129
  %i.co = add nuw i64 %.03596.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph97.epil, !llvm.loop !1057

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.epil, %.loopexit
  %i.cp = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cp, label %.thread, label %bb.p

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph97.preheader.new ], [ %i.de, %.lr.ph97 ]
  %.03596 = phi i64 [ 1, %.lr.ph97.preheader.new ], [ %i.df, %.lr.ph97 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %niter.next.3, %.lr.ph97 ]
  %i.cq = getelementptr [8 x i8], ptr %i.cb, i64 %.03596 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = add i64 %i.cr, %store_forwarded         ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !129
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cu = getelementptr i8, ptr %i.ct, i64 8      ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cy = getelementptr i8, ptr %i.cx, i64 16     ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !129
  %i.da = add i64 %i.cz, %i.cw                    ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !129
  %i.db = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.dc = getelementptr i8, ptr %i.db, i64 24     ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = add i64 %i.dd, %i.da                    ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE16initRootChildrenINS1_8RootNodeIS7_EEEEbRT_:bb.a

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEESt14default_deleteIS9_EE5resetIPS8_vEEvT_.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE10childCountEv.exit
  %i.s = phi i64 [ %i.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE10childCountEv.exit ], [ %i.q, %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEESt14default_deleteIS9_EE5resetIPS8_vEEvT_.exit ]
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !222
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !587  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.c, %i.v
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.y, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1214
  %.not1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i.i11, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1218

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.v, %bb.e ], [ %i.y, %bb.f ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not2728 = icmp eq ptr %.sroa.2.1.i, %i.c
  br i1 %.not2728, label %.thread25, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.030 = phi ptr [ %i.ab, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ], [ %i.u, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %.sroa.5.029 = phi ptr [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ], [ %.sroa.2.1.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.029, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1219
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store ptr %i.aa, ptr %.030, align 8, !tbaa !223
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.5.029) #28 ; 3 uses
  %.not2.i.i.i13 = icmp eq ptr %i.ac, %i.c
  br i1 %.not2.i.i.i13, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph, %bb.g
  %.sroa.5.2 = phi ptr [ %i.af, %bb.g ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1214
  %.not1.i.i.i15 = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i.i15, label %bb.g, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2) #28 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i16, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i14, !llvm.loop !1218

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.g, %.lr.ph
  %.sroa.5.3 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.5.2, %.lr.ph.i.i.i14 ], [ %i.af, %bb.g ] ; 2 uses
  %.not27 = icmp eq ptr %.sroa.5.3, %i.c
  br i1 %.not27, label %.thread25, label %.lr.ph, !llvm.loop !1221

.thread25:                                        ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.d
  %i.ag = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE10childCountEv.exit.thread ], [ false, %bb.d ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS6_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector", align 8       ; 20 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.663, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.669, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !208    ; 9 uses
  br i1 %3, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not149 = icmp eq i64 %i.a, 0
  br i1 %.not149, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29
          to label %.noexc50 unwind label %bb.f   ; 8 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !602    ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !605
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc50
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #25
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !602
  store ptr %i.f, ptr %i.d, align 8, !tbaa !605
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !606
  %.pre115.a = load i64, ptr %1, align 8, !tbaa !208
  %i.q = icmp eq i64 %.pre115.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %vector.ph

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit63
  %i.u = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 5 uses
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.bg, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %.03695 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !222
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03695
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !223
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 262144
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi179 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !129
  %wide.load180 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !129
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ae = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load180)
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ah = add <2 x i32> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i32> %vec.phi179, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, 512
  br i1 %i.aj, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !1222

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.al, ptr %i.w, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.s, align 8, !tbaa !605
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE10childCountEv.exit
  %i.an = ptrtoint ptr %i.v to i64
  %i.ao = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc61.a unwind label %.loopexit.split-lp

.noexc61.a:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55: ; preds = %bb.h
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i56, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29
          to label %.noexc62 unwind label %.loopexit87 ; 5 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %i.al, ptr %i.ay, align 8, !tbaa !129
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

bb.j:                                             ; preds = %.noexc62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.u, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58: ; preds = %bb.j, %.noexc62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i59 = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i59, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  store ptr %i.ax, ptr %6, align 8, !tbaa !602
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !605
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.be, ptr %i.c, align 8, !tbaa !606
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

.loopexit87:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt6vectorImSaImEE9push_backEOm.exit63:         ; preds = %bb.g, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60
  %i.bf = phi ptr [ %i.u, %bb.g ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bg = phi ptr [ %i.v, %bb.g ], [ %i.be, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ]
  %i.bh = phi ptr [ %i.am, %bb.g ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bi = add nuw i64 %.03695, 1                  ; 2 uses
  %i.bj = load i64, ptr %1, align 8, !tbaa !208
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %vector.ph, label %.loopexit, !llvm.loop !1223

bb.l:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not148 = icmp eq i64 %i.a, 0
  br i1 %.not148, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.bn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.m
  %i.bo = phi ptr [ @.str.36, %bb.m ], [ @.str.34, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bo) #26
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %i.bp = shl nuw nsw i64 %i.a, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #29
          to label %.noexc77 unwind label %bb.f   ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.bq, align 8, !tbaa !129
  %i.br = add nsw i64 %i.a, -1                    ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc77
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !129
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc77
  store ptr %i.bq, ptr %6, align 8, !tbaa !602
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.a ; 2 uses
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !605
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !606
  %.pre = load i64, ptr %1, align 8, !tbaa !208
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.bv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.bv, ptr %7, align 8, !tbaa !611
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !613
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.bx, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %2, ptr %8, align 8, !tbaa !615
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.by, align 8, !tbaa !617
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.bz, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListINS7_12InternalNodeINS7_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS8_INS9_ISC_Lj5EEEEENS7_10NodeFilterEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSO_RSQ_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pre116.a = load ptr, ptr %i.bl, align 8, !tbaa !605
  %.pre117.a = load ptr, ptr %6, align 8, !tbaa !602
  br label %.loopexit

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.al

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit63, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.n
  %i.cb = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.n ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 8 uses
  %i.cc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre116.a, %bb.n ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 1
  br i1 %i.ch, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.loopexit
  %load_initial = load i64, ptr %i.cb, align 8    ; 2 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.cj = add nsw i64 %i.cg, -2
  %xtraiter = and i64 %i.ci, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader.new

.lr.ph97.preheader.new:                           ; preds = %.lr.ph97.preheader
  %unroll_iter = and i64 %i.ci, -4
  br label %.lr.ph97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph97
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph97.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ]
  %.03596.epil.init = phi i64 [ 1, %.lr.ph97.preheader ], [ %i.df, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod194 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph97.epil

.lr.ph97.epil:                                    ; preds = %.lr.ph97.epil, %.lr.ph97.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph97.epil.preheader ], [ %i.cn, %.lr.ph97.epil ]
  %.03596.epil = phi i64 [ %.03596.epil.init, %.lr.ph97.epil.preheader ], [ %i.co, %.lr.ph97.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph97.epil.preheader ], [ %epil.iter.next, %.lr.ph97.epil ]
  %i.cl = getelementptr [8 x i8], ptr %i.cb, i64 %.03596.epil ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !129
  %i.cn = add i64 %i.cm, %store_forwarded.epil    ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !129
  %i.co = add nuw i64 %.03596.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph97.epil, !llvm.loop !1224

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.epil, %.loopexit
  %i.cp = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cp, label %.thread, label %bb.p

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph97.preheader.new ], [ %i.de, %.lr.ph97 ]
  %.03596 = phi i64 [ 1, %.lr.ph97.preheader.new ], [ %i.df, %.lr.ph97 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %niter.next.3, %.lr.ph97 ]
  %i.cq = getelementptr [8 x i8], ptr %i.cb, i64 %.03596 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = add i64 %i.cr, %store_forwarded         ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !129
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cu = getelementptr i8, ptr %i.ct, i64 8      ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cy = getelementptr i8, ptr %i.cx, i64 16     ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !129
  %i.da = add i64 %i.cz, %i.cw                    ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !129
  %i.db = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.dc = getelementptr i8, ptr %i.db, i64 24     ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = add i64 %i.dd, %i.da                    ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE16initRootChildrenINS1_8RootNodeIS7_EEEEbRT_:bb.a

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEESt14default_deleteIS9_EE5resetIPS8_vEEvT_.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10childCountEv.exit
  %i.s = phi i64 [ %i.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10childCountEv.exit ], [ %i.q, %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEESt14default_deleteIS9_EE5resetIPS8_vEEvT_.exit ]
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !276
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !587  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.c, %i.v
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.y, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1384
  %.not1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i.i11, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1388

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.v, %bb.e ], [ %i.y, %bb.f ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not2728 = icmp eq ptr %.sroa.2.1.i, %i.c
  br i1 %.not2728, label %.thread25, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.030 = phi ptr [ %i.ab, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ], [ %i.u, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %.sroa.5.029 = phi ptr [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ], [ %.sroa.2.1.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.029, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1389
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store ptr %i.aa, ptr %.030, align 8, !tbaa !277
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.5.029) #28 ; 3 uses
  %.not2.i.i.i13 = icmp eq ptr %i.ac, %i.c
  br i1 %.not2.i.i.i13, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph, %bb.g
  %.sroa.5.2 = phi ptr [ %i.af, %bb.g ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1384
  %.not1.i.i.i15 = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i.i15, label %bb.g, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2) #28 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i16, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, label %.lr.ph.i.i.i14, !llvm.loop !1388

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.g, %.lr.ph
  %.sroa.5.3 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.5.2, %.lr.ph.i.i.i14 ], [ %i.af, %bb.g ] ; 2 uses
  %.not27 = icmp eq ptr %.sroa.5.3, %i.c
  br i1 %.not27, label %.thread25, label %.lr.ph, !llvm.loop !1391

.thread25:                                        ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.d
  %i.ag = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10childCountEv.exit.thread ], [ false, %bb.d ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS6_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector", align 8       ; 20 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.759, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.765, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !262    ; 9 uses
  br i1 %3, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not149 = icmp eq i64 %i.a, 0
  br i1 %.not149, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29
          to label %.noexc50 unwind label %bb.f   ; 8 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !602    ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !605
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc50
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #25
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !602
  store ptr %i.f, ptr %i.d, align 8, !tbaa !605
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !606
  %.pre115.a = load i64, ptr %1, align 8, !tbaa !262
  %i.q = icmp eq i64 %.pre115.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %vector.ph

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit63
  %i.u = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 5 uses
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.bg, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %.03695 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !276
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03695
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !277
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 262144
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi179 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !129
  %wide.load180 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !129
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ae = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load180)
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ah = add <2 x i32> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i32> %vec.phi179, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, 512
  br i1 %i.aj, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !1392

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.al, ptr %i.w, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.s, align 8, !tbaa !605
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE10childCountEv.exit
  %i.an = ptrtoint ptr %i.v to i64
  %i.ao = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc61.a unwind label %.loopexit.split-lp

.noexc61.a:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55: ; preds = %bb.h
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i56, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29
          to label %.noexc62 unwind label %.loopexit87 ; 5 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %i.al, ptr %i.ay, align 8, !tbaa !129
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

bb.j:                                             ; preds = %.noexc62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.u, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58: ; preds = %bb.j, %.noexc62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i59 = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i59, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  store ptr %i.ax, ptr %6, align 8, !tbaa !602
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !605
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.be, ptr %i.c, align 8, !tbaa !606
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

.loopexit87:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt6vectorImSaImEE9push_backEOm.exit63:         ; preds = %bb.g, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60
  %i.bf = phi ptr [ %i.u, %bb.g ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bg = phi ptr [ %i.v, %bb.g ], [ %i.be, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ]
  %i.bh = phi ptr [ %i.am, %bb.g ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bi = add nuw i64 %.03695, 1                  ; 2 uses
  %i.bj = load i64, ptr %1, align 8, !tbaa !262
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %vector.ph, label %.loopexit, !llvm.loop !1393

bb.l:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not148 = icmp eq i64 %i.a, 0
  br i1 %.not148, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.bn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.m
  %i.bo = phi ptr [ @.str.36, %bb.m ], [ @.str.34, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bo) #26
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %i.bp = shl nuw nsw i64 %i.a, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #29
          to label %.noexc77 unwind label %bb.f   ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.bq, align 8, !tbaa !129
  %i.br = add nsw i64 %i.a, -1                    ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc77
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !129
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc77
  store ptr %i.bq, ptr %6, align 8, !tbaa !602
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.a ; 2 uses
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !605
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !606
  %.pre = load i64, ptr %1, align 8, !tbaa !262
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.bv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.bv, ptr %7, align 8, !tbaa !611
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !613
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.bx, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %2, ptr %8, align 8, !tbaa !615
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.by, align 8, !tbaa !617
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.bz, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListINS7_12InternalNodeINS7_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS8_INS9_ISC_Lj5EEEEENS7_10NodeFilterEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSO_RSQ_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pre116.a = load ptr, ptr %i.bl, align 8, !tbaa !605
  %.pre117.a = load ptr, ptr %6, align 8, !tbaa !602
  br label %.loopexit

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.al

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit63, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.n
  %i.cb = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.n ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 8 uses
  %i.cc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre116.a, %bb.n ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 1
  br i1 %i.ch, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.loopexit
  %load_initial = load i64, ptr %i.cb, align 8    ; 2 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.cj = add nsw i64 %i.cg, -2
  %xtraiter = and i64 %i.ci, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader.new

.lr.ph97.preheader.new:                           ; preds = %.lr.ph97.preheader
  %unroll_iter = and i64 %i.ci, -4
  br label %.lr.ph97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph97
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph97.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ]
  %.03596.epil.init = phi i64 [ 1, %.lr.ph97.preheader ], [ %i.df, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod194 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph97.epil

.lr.ph97.epil:                                    ; preds = %.lr.ph97.epil, %.lr.ph97.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph97.epil.preheader ], [ %i.cn, %.lr.ph97.epil ]
  %.03596.epil = phi i64 [ %.03596.epil.init, %.lr.ph97.epil.preheader ], [ %i.co, %.lr.ph97.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph97.epil.preheader ], [ %epil.iter.next, %.lr.ph97.epil ]
  %i.cl = getelementptr [8 x i8], ptr %i.cb, i64 %.03596.epil ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !129
  %i.cn = add i64 %i.cm, %store_forwarded.epil    ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !129
  %i.co = add nuw i64 %.03596.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph97.epil, !llvm.loop !1394

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.epil, %.loopexit
  %i.cp = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cp, label %.thread, label %bb.p

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph97.preheader.new ], [ %i.de, %.lr.ph97 ]
  %.03596 = phi i64 [ 1, %.lr.ph97.preheader.new ], [ %i.df, %.lr.ph97 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %niter.next.3, %.lr.ph97 ]
  %i.cq = getelementptr [8 x i8], ptr %i.cb, i64 %.03596 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = add i64 %i.cr, %store_forwarded         ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !129
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cu = getelementptr i8, ptr %i.ct, i64 8      ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cy = getelementptr i8, ptr %i.cx, i64 16     ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !129
  %i.da = add i64 %i.cz, %i.cw                    ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !129
  %i.db = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.dc = getelementptr i8, ptr %i.db, i64 24     ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = add i64 %i.dd, %i.da                    ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE16initRootChildrenINS1_8RootNodeISA_EEEEbRT_:bb.a

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEESt14default_deleteISC_EE5resetIPSB_vEEvT_.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10childCountEv.exit
  %i.s = phi i64 [ %i.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10childCountEv.exit ], [ %i.q, %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEESt14default_deleteISC_EE5resetIPSB_vEEvT_.exit ]
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !326
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !587  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.c, %i.v
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.y, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1552
  %.not1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i.i11, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1558

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.v, %bb.e ], [ %i.y, %bb.f ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not2728 = icmp eq ptr %.sroa.2.1.i, %i.c
  br i1 %.not2728, label %.thread25, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit
  %.030 = phi ptr [ %i.ab, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit ], [ %i.u, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %.sroa.5.029 = phi ptr [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit ], [ %.sroa.2.1.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.029, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1559
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store ptr %i.aa, ptr %.030, align 8, !tbaa !327
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.5.029) #28 ; 3 uses
  %.not2.i.i.i13 = icmp eq ptr %i.ac, %i.c
  br i1 %.not2.i.i.i13, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph, %bb.g
  %.sroa.5.2 = phi ptr [ %i.af, %bb.g ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1552
  %.not1.i.i.i15 = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i.i15, label %bb.g, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2) #28 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i16, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, label %.lr.ph.i.i.i14, !llvm.loop !1558

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.g, %.lr.ph
  %.sroa.5.3 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.5.2, %.lr.ph.i.i.i14 ], [ %i.af, %bb.g ] ; 2 uses
  %.not27 = icmp eq ptr %.sroa.5.3, %i.c
  br i1 %.not27, label %.thread25, label %.lr.ph, !llvm.loop !1561

.thread25:                                        ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.d
  %i.ag = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread ], [ false, %bb.d ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS9_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector", align 8       ; 20 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.849, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::math::Vec3<float>, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.856, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !312    ; 9 uses
  br i1 %3, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not149 = icmp eq i64 %i.a, 0
  br i1 %.not149, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29
          to label %.noexc50 unwind label %bb.f   ; 8 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !602    ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !605
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc50
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #25
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !602
  store ptr %i.f, ptr %i.d, align 8, !tbaa !605
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !606
  %.pre115.a = load i64, ptr %1, align 8, !tbaa !312
  %i.q = icmp eq i64 %.pre115.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %vector.ph

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit63
  %i.u = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 5 uses
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.bg, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %.03695 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !326
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03695
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !327
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 524288
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi179 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !129
  %wide.load180 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !129
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ae = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load180)
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ah = add <2 x i32> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i32> %vec.phi179, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, 512
  br i1 %i.aj, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !1562

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.al, ptr %i.w, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.s, align 8, !tbaa !605
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE10childCountEv.exit
  %i.an = ptrtoint ptr %i.v to i64
  %i.ao = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc61.a unwind label %.loopexit.split-lp

.noexc61.a:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55: ; preds = %bb.h
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i56, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29
          to label %.noexc62 unwind label %.loopexit87 ; 5 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %i.al, ptr %i.ay, align 8, !tbaa !129
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

bb.j:                                             ; preds = %.noexc62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.u, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58: ; preds = %bb.j, %.noexc62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i59 = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i59, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  store ptr %i.ax, ptr %6, align 8, !tbaa !602
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !605
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.be, ptr %i.c, align 8, !tbaa !606
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

.loopexit87:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt6vectorImSaImEE9push_backEOm.exit63:         ; preds = %bb.g, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60
  %i.bf = phi ptr [ %i.u, %bb.g ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bg = phi ptr [ %i.v, %bb.g ], [ %i.be, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ]
  %i.bh = phi ptr [ %i.am, %bb.g ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bi = add nuw i64 %.03695, 1                  ; 2 uses
  %i.bj = load i64, ptr %1, align 8, !tbaa !312
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %vector.ph, label %.loopexit, !llvm.loop !1563

bb.l:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not148 = icmp eq i64 %i.a, 0
  br i1 %.not148, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.bn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.m
  %i.bo = phi ptr [ @.str.36, %bb.m ], [ @.str.34, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bo) #26
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %i.bp = shl nuw nsw i64 %i.a, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #29
          to label %.noexc77 unwind label %bb.f   ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.bq, align 8, !tbaa !129
  %i.br = add nsw i64 %i.a, -1                    ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc77
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !129
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc77
  store ptr %i.bq, ptr %6, align 8, !tbaa !602
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.a ; 2 uses
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !605
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !606
  %.pre = load i64, ptr %1, align 8, !tbaa !312
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.bv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.bv, ptr %7, align 8, !tbaa !611
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !613
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.bx, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %2, ptr %8, align 8, !tbaa !615
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.by, align 8, !tbaa !617
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.bz, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListINS7_12InternalNodeINS7_8LeafNodeINS6_4math4Vec3IfEELj3EEELj4EEEE16initNodeChildrenINS8_INS9_ISF_Lj5EEEEENS7_10NodeFilterEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSR_RST_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pre116.a = load ptr, ptr %i.bl, align 8, !tbaa !605
  %.pre117.a = load ptr, ptr %6, align 8, !tbaa !602
  br label %.loopexit

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.al

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit63, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.n
  %i.cb = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.n ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 8 uses
  %i.cc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre116.a, %bb.n ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 1
  br i1 %i.ch, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.loopexit
  %load_initial = load i64, ptr %i.cb, align 8    ; 2 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.cj = add nsw i64 %i.cg, -2
  %xtraiter = and i64 %i.ci, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader.new

.lr.ph97.preheader.new:                           ; preds = %.lr.ph97.preheader
  %unroll_iter = and i64 %i.ci, -4
  br label %.lr.ph97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph97
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph97.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ]
  %.03596.epil.init = phi i64 [ 1, %.lr.ph97.preheader ], [ %i.df, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod194 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph97.epil

.lr.ph97.epil:                                    ; preds = %.lr.ph97.epil, %.lr.ph97.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph97.epil.preheader ], [ %i.cn, %.lr.ph97.epil ]
  %.03596.epil = phi i64 [ %.03596.epil.init, %.lr.ph97.epil.preheader ], [ %i.co, %.lr.ph97.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph97.epil.preheader ], [ %epil.iter.next, %.lr.ph97.epil ]
  %i.cl = getelementptr [8 x i8], ptr %i.cb, i64 %.03596.epil ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !129
  %i.cn = add i64 %i.cm, %store_forwarded.epil    ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !129
  %i.co = add nuw i64 %.03596.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph97.epil, !llvm.loop !1564

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.epil, %.loopexit
  %i.cp = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cp, label %.thread, label %bb.p

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph97.preheader.new ], [ %i.de, %.lr.ph97 ]
  %.03596 = phi i64 [ 1, %.lr.ph97.preheader.new ], [ %i.df, %.lr.ph97 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %niter.next.3, %.lr.ph97 ]
  %i.cq = getelementptr [8 x i8], ptr %i.cb, i64 %.03596 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = add i64 %i.cr, %store_forwarded         ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !129
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cu = getelementptr i8, ptr %i.ct, i64 8      ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cy = getelementptr i8, ptr %i.cx, i64 16     ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !129
  %i.da = add i64 %i.cz, %i.cw                    ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !129
  %i.db = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.dc = getelementptr i8, ptr %i.db, i64 24     ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = add i64 %i.dd, %i.da                    ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE16initRootChildrenINS1_8RootNodeISA_EEEEbRT_:bb.a

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEESt14default_deleteISC_EE5resetIPSB_vEEvT_.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE10childCountEv.exit
  %i.s = phi i64 [ %i.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE10childCountEv.exit ], [ %i.q, %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IdEELj3EEELj4EEELj5EEESt14default_deleteISC_EE5resetIPSB_vEEvT_.exit ]
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !376
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !587  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.c, %i.v
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.y, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1719
  %.not1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i.i11, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1725

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.v, %bb.e ], [ %i.y, %bb.f ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not2728 = icmp eq ptr %.sroa.2.1.i, %i.c
  br i1 %.not2728, label %.thread25, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit
  %.030 = phi ptr [ %i.ab, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit ], [ %i.u, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %.sroa.5.029 = phi ptr [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit ], [ %.sroa.2.1.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.029, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1726
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store ptr %i.aa, ptr %.030, align 8, !tbaa !377
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.5.029) #28 ; 3 uses
  %.not2.i.i.i13 = icmp eq ptr %i.ac, %i.c
  br i1 %.not2.i.i.i13, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph, %bb.g
  %.sroa.5.2 = phi ptr [ %i.af, %bb.g ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1719
  %.not1.i.i.i15 = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i.i15, label %bb.g, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2) #28 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i16, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, label %.lr.ph.i.i.i14, !llvm.loop !1725

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.g, %.lr.ph
  %.sroa.5.3 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.5.2, %.lr.ph.i.i.i14 ], [ %i.af, %bb.g ] ; 2 uses
  %.not27 = icmp eq ptr %.sroa.5.3, %i.c
  br i1 %.not27, label %.thread25, label %.lr.ph, !llvm.loop !1728

.thread25:                                        ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.d
  %i.ag = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread ], [ false, %bb.d ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS9_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector", align 8       ; 20 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.948, align 8            ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::math::Vec3<double>, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.954, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !362    ; 9 uses
  br i1 %3, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not149 = icmp eq i64 %i.a, 0
  br i1 %.not149, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29
          to label %.noexc50 unwind label %bb.f   ; 8 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !602    ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !605
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc50
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #25
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !602
  store ptr %i.f, ptr %i.d, align 8, !tbaa !605
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !606
  %.pre115.a = load i64, ptr %1, align 8, !tbaa !362
  %i.q = icmp eq i64 %.pre115.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %vector.ph

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit63
  %i.u = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 5 uses
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.bg, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %.03695 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !376
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03695
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !377
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 786432
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi179 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !129
  %wide.load180 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !129
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ae = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load180)
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ah = add <2 x i32> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i32> %vec.phi179, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, 512
  br i1 %i.aj, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !1729

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.al, ptr %i.w, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.s, align 8, !tbaa !605
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE10childCountEv.exit
  %i.an = ptrtoint ptr %i.v to i64
  %i.ao = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc61.a unwind label %.loopexit.split-lp

.noexc61.a:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55: ; preds = %bb.h
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i56, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29
          to label %.noexc62 unwind label %.loopexit87 ; 5 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %i.al, ptr %i.ay, align 8, !tbaa !129
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

bb.j:                                             ; preds = %.noexc62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.u, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58: ; preds = %bb.j, %.noexc62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i59 = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i59, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  store ptr %i.ax, ptr %6, align 8, !tbaa !602
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !605
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.be, ptr %i.c, align 8, !tbaa !606
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

.loopexit87:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt6vectorImSaImEE9push_backEOm.exit63:         ; preds = %bb.g, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60
  %i.bf = phi ptr [ %i.u, %bb.g ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bg = phi ptr [ %i.v, %bb.g ], [ %i.be, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ]
  %i.bh = phi ptr [ %i.am, %bb.g ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bi = add nuw i64 %.03695, 1                  ; 2 uses
  %i.bj = load i64, ptr %1, align 8, !tbaa !362
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %vector.ph, label %.loopexit, !llvm.loop !1730

bb.l:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not148 = icmp eq i64 %i.a, 0
  br i1 %.not148, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.bn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.m
  %i.bo = phi ptr [ @.str.36, %bb.m ], [ @.str.34, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bo) #26
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %i.bp = shl nuw nsw i64 %i.a, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #29
          to label %.noexc77 unwind label %bb.f   ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.bq, align 8, !tbaa !129
  %i.br = add nsw i64 %i.a, -1                    ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc77
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !129
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc77
  store ptr %i.bq, ptr %6, align 8, !tbaa !602
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.a ; 2 uses
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !605
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !606
  %.pre = load i64, ptr %1, align 8, !tbaa !362
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.bv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.bv, ptr %7, align 8, !tbaa !611
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !613
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.bx, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %2, ptr %8, align 8, !tbaa !615
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.by, align 8, !tbaa !617
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.bz, align 8, !tbaa !375
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListINS7_12InternalNodeINS7_8LeafNodeINS6_4math4Vec3IdEELj3EEELj4EEEE16initNodeChildrenINS8_INS9_ISF_Lj5EEEEENS7_10NodeFilterEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSR_RST_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pre116.a = load ptr, ptr %i.bl, align 8, !tbaa !605
  %.pre117.a = load ptr, ptr %6, align 8, !tbaa !602
  br label %.loopexit

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.al

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit63, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.n
  %i.cb = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.n ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 8 uses
  %i.cc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre116.a, %bb.n ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 1
  br i1 %i.ch, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.loopexit
  %load_initial = load i64, ptr %i.cb, align 8    ; 2 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.cj = add nsw i64 %i.cg, -2
  %xtraiter = and i64 %i.ci, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader.new

.lr.ph97.preheader.new:                           ; preds = %.lr.ph97.preheader
  %unroll_iter = and i64 %i.ci, -4
  br label %.lr.ph97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph97
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph97.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ]
  %.03596.epil.init = phi i64 [ 1, %.lr.ph97.preheader ], [ %i.df, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod194 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph97.epil

.lr.ph97.epil:                                    ; preds = %.lr.ph97.epil, %.lr.ph97.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph97.epil.preheader ], [ %i.cn, %.lr.ph97.epil ]
  %.03596.epil = phi i64 [ %.03596.epil.init, %.lr.ph97.epil.preheader ], [ %i.co, %.lr.ph97.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph97.epil.preheader ], [ %epil.iter.next, %.lr.ph97.epil ]
  %i.cl = getelementptr [8 x i8], ptr %i.cb, i64 %.03596.epil ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !129
  %i.cn = add i64 %i.cm, %store_forwarded.epil    ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !129
  %i.co = add nuw i64 %.03596.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph97.epil, !llvm.loop !1731

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.epil, %.loopexit
  %i.cp = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cp, label %.thread, label %bb.p

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph97.preheader.new ], [ %i.de, %.lr.ph97 ]
  %.03596 = phi i64 [ 1, %.lr.ph97.preheader.new ], [ %i.df, %.lr.ph97 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %niter.next.3, %.lr.ph97 ]
  %i.cq = getelementptr [8 x i8], ptr %i.cb, i64 %.03596 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = add i64 %i.cr, %store_forwarded         ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !129
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cu = getelementptr i8, ptr %i.ct, i64 8      ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cy = getelementptr i8, ptr %i.cx, i64 16     ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !129
  %i.da = add i64 %i.cz, %i.cw                    ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !129
  %i.db = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.dc = getelementptr i8, ptr %i.db, i64 24     ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = add i64 %i.dd, %i.da                    ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE16initRootChildrenINS1_8RootNodeISA_EEEEbRT_:bb.a

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISC_EE5resetIPSB_vEEvT_.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10childCountEv.exit
  %i.s = phi i64 [ %i.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10childCountEv.exit ], [ %i.q, %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IiEELj3EEELj4EEELj5EEESt14default_deleteISC_EE5resetIPSB_vEEvT_.exit ]
  %.not26 = icmp eq i64 %i.s, 0
  br i1 %.not26, label %.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !426
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !587  ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.c, %i.v
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.2.0.i = phi ptr [ %i.y, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1923
  %.not1.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not1.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #28 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i.i11, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1929

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e
  %.sroa.2.1.i = phi ptr [ %i.v, %bb.e ], [ %i.y, %bb.f ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not2728 = icmp eq ptr %.sroa.2.1.i, %i.c
  br i1 %.not2728, label %.thread25, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit
  %.030 = phi ptr [ %i.ab, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit ], [ %i.u, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %.sroa.5.029 = phi ptr [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit ], [ %.sroa.2.1.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.029, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1930
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store ptr %i.aa, ptr %.030, align 8, !tbaa !427
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.5.029) #28 ; 3 uses
  %.not2.i.i.i13 = icmp eq ptr %i.ac, %i.c
  br i1 %.not2.i.i.i13, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph, %bb.g
  %.sroa.5.2 = phi ptr [ %i.af, %bb.g ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1923
  %.not1.i.i.i15 = icmp eq ptr %i.ae, null
  br i1 %.not1.i.i.i15, label %bb.g, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2) #28 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i16, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, label %.lr.ph.i.i.i14, !llvm.loop !1929

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.g, %.lr.ph
  %.sroa.5.3 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.5.2, %.lr.ph.i.i.i14 ], [ %i.af, %bb.g ] ; 2 uses
  %.not27 = icmp eq ptr %.sroa.5.3, %i.c
  br i1 %.not27, label %.thread25, label %.lr.ph, !llvm.loop !1932

.thread25:                                        ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.d
  %i.ag = phi i1 [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread ], [ false, %bb.d ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE12beginChildOnEv.exit ], [ true, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS5_5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EppEv.exit ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEEE16initNodeChildrenINS2_INS3_IS9_Lj5EEEEENS1_10NodeFilterEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.std::vector", align 8       ; 20 uses
  %7 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %8 = alloca %class.anon.1039, align 8           ; 7 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::math::Vec3<int>, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %10 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %11 = alloca %class.anon.1046, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i64, ptr %1, align 8, !tbaa !412    ; 9 uses
  br i1 %3, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not149 = icmp eq i64 %i.a, 0
  br i1 %.not149, label %.loopexit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29
          to label %.noexc50 unwind label %bb.f   ; 8 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.g = load ptr, ptr %6, align 8, !tbaa !602    ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !605
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc50
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #25
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.f, ptr %6, align 8, !tbaa !602
  store ptr %i.f, ptr %i.d, align 8, !tbaa !605
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.a ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !606
  %.pre115.a = load i64, ptr %1, align 8, !tbaa !412
  %i.q = icmp eq i64 %.pre115.a, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %vector.ph

bb.f:                                             ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

vector.ph:                                        ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit63
  %i.u = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 5 uses
  %i.v = phi ptr [ %i.p, %.lr.ph ], [ %i.bg, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %.03695 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !426
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.03695
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !427
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 524288
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi179 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !129
  %wide.load180 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !129
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ae = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load180)
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ah = add <2 x i32> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i32> %vec.phi179, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, 512
  br i1 %i.aj, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE10childCountEv.exit, label %vector.body, !llvm.loop !1933

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE10childCountEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE10childCountEv.exit
  store i64 %i.al, ptr %i.w, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.s, align 8, !tbaa !605
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE10childCountEv.exit
  %i.an = ptrtoint ptr %i.v to i64
  %i.ao = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.noexc61.a unwind label %.loopexit.split-lp

.noexc61.a:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55: ; preds = %bb.h
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i56, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #29
          to label %.noexc62 unwind label %.loopexit87 ; 5 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i64 %i.al, ptr %i.ay, align 8, !tbaa !129
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

bb.j:                                             ; preds = %.noexc62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.u, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58: ; preds = %bb.j, %.noexc62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i59 = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i59, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !606
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i58
  store ptr %i.ax, ptr %6, align 8, !tbaa !602
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !605
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.be, ptr %i.c, align 8, !tbaa !606
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit63

.loopexit87:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt6vectorImSaImEE9push_backEOm.exit63:         ; preds = %bb.g, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60
  %i.bf = phi ptr [ %i.u, %bb.g ], [ %i.ax, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bg = phi ptr [ %i.v, %bb.g ], [ %i.be, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ]
  %i.bh = phi ptr [ %i.am, %bb.g ], [ %i.ba, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i60 ] ; 2 uses
  %i.bi = add nuw i64 %.03695, 1                  ; 2 uses
  %i.bj = load i64, ptr %1, align 8, !tbaa !412
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %vector.ph, label %.loopexit, !llvm.loop !1934

bb.l:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not148 = icmp eq i64 %i.a, 0
  br i1 %.not148, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.bn, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.b, %bb.m
  %i.bo = phi ptr [ @.str.36, %bb.m ], [ @.str.34, %bb.b ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bo) #26
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %i.bp = shl nuw nsw i64 %i.a, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #29
          to label %.noexc77 unwind label %bb.f   ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.bq, align 8, !tbaa !129
  %i.br = add nsw i64 %i.a, -1                    ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc77
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !129
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc77
  store ptr %i.bq, ptr %6, align 8, !tbaa !602
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.a ; 2 uses
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !605
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !606
  %.pre = load i64, ptr %1, align 8, !tbaa !412
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %i.bv = phi i64 [ %.pre, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.bv, ptr %7, align 8, !tbaa !611
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !613
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 64, ptr %i.bx, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %2, ptr %8, align 8, !tbaa !615
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.by, align 8, !tbaa !617
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.bz, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListINS7_12InternalNodeINS7_8LeafNodeINS6_4math4Vec3IiEELj3EEELj4EEEE16initNodeChildrenINS8_INS9_ISF_Lj5EEEEENS7_10NodeFilterEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKSR_RST_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pre116.a = load ptr, ptr %i.bl, align 8, !tbaa !605
  %.pre117.a = load ptr, ptr %6, align 8, !tbaa !602
  br label %.loopexit

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.al

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit63, %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.n
  %i.cb = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre117.a, %bb.n ], [ %i.bf, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 8 uses
  %i.cc = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.pre116.a, %bb.n ], [ %i.bh, %_ZNSt6vectorImSaImEE9push_backEOm.exit63 ] ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 1
  br i1 %i.ch, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.loopexit
  %load_initial = load i64, ptr %i.cb, align 8    ; 2 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.cj = add nsw i64 %i.cg, -2
  %xtraiter = and i64 %i.ci, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader.new

.lr.ph97.preheader.new:                           ; preds = %.lr.ph97.preheader
  %unroll_iter = and i64 %i.ci, -4
  br label %.lr.ph97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph97
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.preheader
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph97.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ]
  %.03596.epil.init = phi i64 [ 1, %.lr.ph97.preheader ], [ %i.df, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod194 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph97.epil

.lr.ph97.epil:                                    ; preds = %.lr.ph97.epil, %.lr.ph97.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.lr.ph97.epil.preheader ], [ %i.cn, %.lr.ph97.epil ]
  %.03596.epil = phi i64 [ %.03596.epil.init, %.lr.ph97.epil.preheader ], [ %i.co, %.lr.ph97.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph97.epil.preheader ], [ %epil.iter.next, %.lr.ph97.epil ]
  %i.cl = getelementptr [8 x i8], ptr %i.cb, i64 %.03596.epil ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !129
  %i.cn = add i64 %i.cm, %store_forwarded.epil    ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !129
  %i.co = add nuw i64 %.03596.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph97.epil, !llvm.loop !1935

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97.epil, %.loopexit
  %i.cp = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cp, label %.thread, label %bb.p

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph97.preheader.new ], [ %i.de, %.lr.ph97 ]
  %.03596 = phi i64 [ 1, %.lr.ph97.preheader.new ], [ %i.df, %.lr.ph97 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %niter.next.3, %.lr.ph97 ]
  %i.cq = getelementptr [8 x i8], ptr %i.cb, i64 %.03596 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = add i64 %i.cr, %store_forwarded         ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !129
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cu = getelementptr i8, ptr %i.ct, i64 8      ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !129
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !129
  %i.cx = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.cy = getelementptr i8, ptr %i.cx, i64 16     ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !129
  %i.da = add i64 %i.cz, %i.cw                    ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !129
  %i.db = getelementptr [8 x i8], ptr %i.cb, i64 %.03596
  %i.dc = getelementptr i8, ptr %i.db, i64 24     ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = add i64 %i.dd, %i.da                    ; 3 uses
end_hunk_7
