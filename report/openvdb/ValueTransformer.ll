Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/ValueTransformer?download=true
inline.NumInlined: 4690
inline.NumDeleted: 1931
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 184
begin_hunk_0_@_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferIiLj3EE8FileInfoEEclEPS5_:bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !117
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15, !inline_history !9
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15, !inline_history !9
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !118

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !114  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EE8FileInfoD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !116
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !117
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #15, !inline_history !10
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #15, !inline_history !10
  br label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EE8FileInfoD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i2.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ai, label %bb.n, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EE8FileInfoD2Ev.exit, !prof !118

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #15
  br label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EE8FileInfoD2Ev.exit

_ZN7openvdb5v13_04tree10LeafBufferIiLj3EE8FileInfoD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 48) #25
  br label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EE8FileInfoD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform5MinOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !59
  %i.c = load i32, ptr %i.a, align 8, !tbaa !59
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59   ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59   ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !59
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i = load i64, ptr %i.ba, align 8, !tbaa !61
  %broadcast.splatinsert72 = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat73 = shufflevector <2 x i64> %broadcast.splatinsert72, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index75 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next76.3, %vector.body74 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index75 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %broadcast.splat73, ptr %i.bb, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat73, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index75 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x i64> %broadcast.splat73, ptr %i.be, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat73, ptr %i.bf, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index75 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x i64> %broadcast.splat73, ptr %i.bh, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat73, ptr %i.bi, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index75 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x i64> %broadcast.splat73, ptr %i.bk, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat73, ptr %i.bl, align 8, !tbaa !84
  %index.next76.3 = add nuw nsw i64 %index75, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next76.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body74, !llvm.loop !289

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body74
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.j, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.k, %bb.i
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.k ], [ %.014.i.i.i.i23, %bb.i ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !17

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.ca = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i28, %bb.l ], [ %.19.i.i.i.i28, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !173 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !57
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !61
  %i.cu = load i64, ptr %2, align 8, !tbaa !61
  %i.cv = icmp slt i64 %i.cu, %i.ct
  br i1 %i.cv, label %.thread, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MinOpIlEEEEvRKNS0_4math5CoordERKT_.exit

.thread:                                          ; preds = %bb.q, %bb.p
  %i.cw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !173
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = load i8, ptr %i.cp, align 8, !range !57
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = select i1 %i.cz, i1 %i.db, i1 false
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cw, i8 0, i64 270336, i1 false)
  %i.de = load i32, ptr %i.j, align 4, !tbaa !59
  %i.df = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.dg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.de, i64 2
  %i.dh = shufflevector <2 x i32> %i.df, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dj = and <4 x i32> %i.di, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dj, ptr %i.dd, align 8, !tbaa !59
  br i1 %i.dc, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dk, i8 -1, i64 4096, i1 false), !tbaa !61
  br label %vector.ph

vector.ph:                                        ; preds = %.thread, %bb.r
  %.pre.i32 = load i64, ptr %i.cx, align 8, !tbaa !61
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i32, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.dl, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dm, align 8, !tbaa !84
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.do, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dp, align 8, !tbaa !84
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.dr, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.ds, align 8, !tbaa !84
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.du, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dv, align 8, !tbaa !84
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dw = icmp eq i64 %index.next.3, 32768
  br i1 %i.dw, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36, label %vector.body, !llvm.loop !290

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cw)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.1.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 5 uses
  %i.dx = load i32, ptr %1, align 4, !tbaa !59
  %i.dy = shl i32 %i.dx, 3
  %i.dz = and i32 %i.dy, 31744
  %i.ea = load i32, ptr %i.e, align 4, !tbaa !59
  %i.eb = lshr i32 %i.ea, 2
  %i.ec = and i32 %i.eb, 992
  %i.ed = or disjoint i32 %i.ec, %i.dz            ; 2 uses
  %i.ee = load i32, ptr %i.j, align 4, !tbaa !59
  %i.ef = lshr i32 %i.ee, 7
  %i.eg = and i32 %i.ef, 31
  %i.eh = or disjoint i32 %i.ed, %i.eg            ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.ph, i64 262144
  %i.ej = lshr i32 %i.ed, 6
  %i.ek = zext nneg i32 %i.ej to i64              ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ek ; 3 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !61
  %i.en = and i32 %i.eh, 63
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo                    ; 4 uses
  %i.eq = and i64 %i.ep, %i.em
  %.not.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i, label %bb.s, label %..critedge23_crit_edge.i

..critedge23_crit_edge.i:                         ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.phi.trans.insert.i = zext nneg i32 %i.eh to i64
  %.phi.trans.insert29.i = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.phi.trans.insert.i
  %.pre.i37 = load ptr, ptr %.phi.trans.insert29.i, align 8, !tbaa !84
  br label %.critedge23.i

bb.s:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %.1.ph, i64 266240
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ek ; 3 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !61
  %i.eu = and i64 %i.et, %i.ep
  %.not28.i = icmp eq i64 %i.eu, 0                ; 2 uses
  %.pre30.i = zext nneg i32 %i.eh to i64          ; 2 uses
  br i1 %.not28.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre30.i
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !61
  %i.ex = load i64, ptr %2, align 8, !tbaa !61
  %i.ey = icmp slt i64 %i.ex, %i.ew
  br i1 %i.ey, label %.thread.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MinOpIlEEEEvRKNS0_4math5CoordERKT_.exit

.thread.i:                                        ; preds = %bb.t, %bb.s
  %i.ez = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #24 ; 9 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre30.i ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ez, i8 0, i64 33792, i1 false)
  %i.fc = load i32, ptr %i.j, align 4, !tbaa !59
  %i.fd = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.fe = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.fc, i64 2
  %i.ff = shufflevector <2 x i32> %i.fd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x i32> %i.ff, <4 x i32> %i.fe, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fh = and <4 x i32> %i.fg, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.fh, ptr %i.fb, align 8, !tbaa !59
  br i1 %.not28.i, label %vector.ph78, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 33280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.fi, i8 -1, i64 512, i1 false), !tbaa !61
  br label %vector.ph78

vector.ph78:                                      ; preds = %.thread.i, %bb.u
  %.pre.i.i = load i64, ptr %i.fa, align 8, !tbaa !61
  %broadcast.splatinsert79 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 0
  %broadcast.splat80 = shufflevector <2 x i64> %broadcast.splatinsert79, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph78
  %index82 = phi i64 [ 0, %vector.ph78 ], [ %index.next83.3, %vector.body81 ] ; 5 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index82 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x i64> %broadcast.splat80, ptr %i.fj, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat80, ptr %i.fk, align 8, !tbaa !84
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index82 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  store <2 x i64> %broadcast.splat80, ptr %i.fm, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat80, ptr %i.fn, align 8, !tbaa !84
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index82 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 80
  store <2 x i64> %broadcast.splat80, ptr %i.fp, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat80, ptr %i.fq, align 8, !tbaa !84
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index82 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 112
  store <2 x i64> %broadcast.splat80, ptr %i.fs, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat80, ptr %i.ft, align 8, !tbaa !84
  %index.next83.3 = add nuw nsw i64 %index82, 16  ; 2 uses
  %i.fu = icmp eq i64 %index.next83.3, 4096
  br i1 %i.fu, label %.critedge.i38, label %vector.body81, !llvm.loop !291

.critedge.i38:                                    ; preds = %vector.body81
  %i.fv = load i64, ptr %i.el, align 8, !tbaa !61
  %i.fw = or i64 %i.fv, %i.ep
  store i64 %i.fw, ptr %i.el, align 8, !tbaa !61
  %i.fx = xor i64 %i.ep, -1
  %i.fy = load i64, ptr %i.es, align 8, !tbaa !61
  %i.fz = and i64 %i.fy, %i.fx
  store i64 %i.fz, ptr %i.es, align 8, !tbaa !61
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !84
  br label %.critedge23.i

.critedge23.i:                                    ; preds = %.critedge.i38, %..critedge23_crit_edge.i
  %i.ga = phi ptr [ %.pre.i37, %..critedge23_crit_edge.i ], [ %i.ez, %.critedge.i38 ]
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE11modifyValueINS0_5tools8valxform5MinOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ga, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MinOpIlEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MinOpIlEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %bb.q, %.critedge23.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(270352) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %3, ptr %i.c, align 8, !tbaa !173
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.d, align 8, !tbaa !292
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.e, align 8, !tbaa !293
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 6 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load i32, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !59   ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59   ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !98
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !98
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #25
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #25
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !98
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59   ; 2 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !59     ; 2 uses
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp sgt i32 %i.h, %i.i
  br i1 %i.k, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !59   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !59   ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp sgt i32 %i.m, %i.o
  br i1 %i.q, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59
  %i.v = icmp slt i32 %i.s, %i.u
  br i1 %i.v, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80: ; preds = %bb.f, %bb.d, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02126.i = load ptr, ptr %i.w, align 8, !tbaa !91 ; 2 uses
  %.not27.i = icmp eq ptr %.02126.i, null
  br i1 %.not27.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80
  %i.x = load i32, ptr %2, align 4, !tbaa !59     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 4
end_hunk_0
begin_hunk_1_@_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoEEclEPS5_:bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !117
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15, !inline_history !23
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15, !inline_history !23
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !118

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #15
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !114  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !116
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !117
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #15, !inline_history !24
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #15, !inline_history !24
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i2.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ai, label %bb.n, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit, !prof !118

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #15
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 48) #25
  br label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform5MinOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !59
  %i.c = load i32, ptr %i.a, align 8, !tbaa !59
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59   ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59   ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !59
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i = load double, ptr %i.ba, align 8, !tbaa !65
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index74 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next75.3, %vector.body73 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x double> %broadcast.splat72, ptr %i.bb, align 8, !tbaa !84
  store <2 x double> %broadcast.splat72, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x double> %broadcast.splat72, ptr %i.be, align 8, !tbaa !84
  store <2 x double> %broadcast.splat72, ptr %i.bf, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x double> %broadcast.splat72, ptr %i.bh, align 8, !tbaa !84
  store <2 x double> %broadcast.splat72, ptr %i.bi, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x double> %broadcast.splat72, ptr %i.bk, align 8, !tbaa !84
  store <2 x double> %broadcast.splat72, ptr %i.bl, align 8, !tbaa !84
  %index.next75.3 = add nuw nsw i64 %index74, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next75.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body73, !llvm.loop !327

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body73
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.j, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.k, %bb.i
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.k ], [ %.014.i.i.i.i23, %bb.i ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !25

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.ca = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i28, %bb.l ], [ %.19.i.i.i.i28, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !192 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !57
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !65 ; 3 uses
  %i.cu = load double, ptr %2, align 8, !tbaa !65 ; 2 uses
  %i.cv = fcmp olt double %i.cu, %i.ct
  %.0 = select i1 %i.cv, double %i.cu, double %i.ct
  %i.cw = fcmp une double %i.ct, %.0
  br i1 %i.cw, label %.thread, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MinOpIdEEEEvRKNS0_4math5CoordERKT_.exit

.thread:                                          ; preds = %bb.p, %bb.q
  %i.cx = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 9 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cz = load ptr, ptr %i.cn, align 8, !tbaa !192
  %i.da = icmp eq ptr %i.cz, null
  %i.db = load i8, ptr %i.cp, align 8, !range !57
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = select i1 %i.da, i1 %i.dc, i1 false
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cx, i8 0, i64 270336, i1 false)
  %i.df = load i32, ptr %i.j, align 4, !tbaa !59
  %i.dg = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.dh = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.df, i64 2
  %i.di = shufflevector <2 x i32> %i.dg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> %i.dh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dk = and <4 x i32> %i.dj, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dk, ptr %i.de, align 8, !tbaa !59
  br i1 %i.dd, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dl, i8 -1, i64 4096, i1 false), !tbaa !61
  br label %vector.ph

vector.ph:                                        ; preds = %.thread, %bb.r
  %.pre.i32 = load double, ptr %i.cy, align 8, !tbaa !65
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i32, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dn, align 8, !tbaa !84
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dq, align 8, !tbaa !84
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  store <2 x double> %broadcast.splat, ptr %i.ds, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dt, align 8, !tbaa !84
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dv, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dw, align 8, !tbaa !84
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dx = icmp eq i64 %index.next.3, 32768
  br i1 %i.dx, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, label %vector.body, !llvm.loop !328

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cx)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.1.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cx, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 5 uses
  %i.dy = load i32, ptr %1, align 4, !tbaa !59
  %i.dz = shl i32 %i.dy, 3
  %i.ea = and i32 %i.dz, 31744
  %i.eb = load i32, ptr %i.e, align 4, !tbaa !59
  %i.ec = lshr i32 %i.eb, 2
  %i.ed = and i32 %i.ec, 992
  %i.ee = or disjoint i32 %i.ed, %i.ea            ; 2 uses
  %i.ef = load i32, ptr %i.j, align 4, !tbaa !59
  %i.eg = lshr i32 %i.ef, 7
  %i.eh = and i32 %i.eg, 31
  %i.ei = or disjoint i32 %i.ee, %i.eh            ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1.ph, i64 262144
  %i.ek = lshr i32 %i.ee, 6
  %i.el = zext nneg i32 %i.ek to i64              ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.el ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !61
  %i.eo = and i32 %i.ei, 63
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep                    ; 4 uses
  %i.er = and i64 %i.eq, %i.en
  %.not.i = icmp eq i64 %i.er, 0
  br i1 %.not.i, label %bb.s, label %..critedge23_crit_edge.i

..critedge23_crit_edge.i:                         ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.phi.trans.insert.i = zext nneg i32 %i.ei to i64
  %.phi.trans.insert27.i = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.phi.trans.insert.i
  %.pre.i37 = load ptr, ptr %.phi.trans.insert27.i, align 8, !tbaa !84
  br label %.critedge23.i

bb.s:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.1.ph, i64 266240
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.el ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !61
  %i.ev = and i64 %i.eu, %i.eq
  %.not26.i = icmp eq i64 %i.ev, 0                ; 2 uses
  %.pre28.i = zext nneg i32 %i.ei to i64          ; 2 uses
  br i1 %.not26.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre28.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !65 ; 3 uses
  %i.ey = load double, ptr %2, align 8, !tbaa !65 ; 2 uses
  %i.ez = fcmp olt double %i.ey, %i.ex
  %.0.i = select i1 %i.ez, double %i.ey, double %i.ex
  %i.fa = fcmp oeq double %i.ex, %.0.i
  br i1 %i.fa, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MinOpIdEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.s
  %i.fb = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #24 ; 9 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre28.i ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.fb, i8 0, i64 33792, i1 false)
  %i.fe = load i32, ptr %i.j, align 4, !tbaa !59
  %i.ff = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.fg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.fe, i64 2
  %i.fh = shufflevector <2 x i32> %i.ff, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fi = shufflevector <4 x i32> %i.fh, <4 x i32> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fj = and <4 x i32> %i.fi, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.fj, ptr %i.fd, align 8, !tbaa !59
  br i1 %.not26.i, label %vector.ph77, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 33280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.fk, i8 -1, i64 512, i1 false), !tbaa !61
  br label %vector.ph77

vector.ph77:                                      ; preds = %.thread.i, %bb.u
  %.pre.i.i = load double, ptr %i.fc, align 8, !tbaa !65
  %broadcast.splatinsert78 = insertelement <2 x double> poison, double %.pre.i.i, i64 0
  %broadcast.splat79 = shufflevector <2 x double> %broadcast.splatinsert78, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph77
  %index81 = phi i64 [ 0, %vector.ph77 ], [ %index.next82.3, %vector.body80 ] ; 5 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index81 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x double> %broadcast.splat79, ptr %i.fl, align 8, !tbaa !84
  store <2 x double> %broadcast.splat79, ptr %i.fm, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index81 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store <2 x double> %broadcast.splat79, ptr %i.fo, align 8, !tbaa !84
  store <2 x double> %broadcast.splat79, ptr %i.fp, align 8, !tbaa !84
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index81 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  store <2 x double> %broadcast.splat79, ptr %i.fr, align 8, !tbaa !84
  store <2 x double> %broadcast.splat79, ptr %i.fs, align 8, !tbaa !84
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index81 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 112
  store <2 x double> %broadcast.splat79, ptr %i.fu, align 8, !tbaa !84
  store <2 x double> %broadcast.splat79, ptr %i.fv, align 8, !tbaa !84
  %index.next82.3 = add nuw nsw i64 %index81, 16  ; 2 uses
  %i.fw = icmp eq i64 %index.next82.3, 4096
  br i1 %i.fw, label %.critedge.i38, label %vector.body80, !llvm.loop !329

.critedge.i38:                                    ; preds = %vector.body80
  %i.fx = load i64, ptr %i.em, align 8, !tbaa !61
  %i.fy = or i64 %i.fx, %i.eq
  store i64 %i.fy, ptr %i.em, align 8, !tbaa !61
  %i.fz = xor i64 %i.eq, -1
  %i.ga = load i64, ptr %i.et, align 8, !tbaa !61
  %i.gb = and i64 %i.ga, %i.fz
  store i64 %i.gb, ptr %i.et, align 8, !tbaa !61
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !84
  br label %.critedge23.i

.critedge23.i:                                    ; preds = %.critedge.i38, %..critedge23_crit_edge.i
  %i.gc = phi ptr [ %.pre.i37, %..critedge23_crit_edge.i ], [ %i.fb, %.critedge.i38 ]
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11modifyValueINS0_5tools8valxform5MinOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.gc, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MinOpIdEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MinOpIdEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %.critedge23.i, %bb.t, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(270352) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %3, ptr %i.c, align 8, !tbaa !192
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !330
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.e, align 8, !tbaa !331
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 6 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load i32, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !59   ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59   ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !98
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !98
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #25
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #25
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !98
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59   ; 2 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !59     ; 2 uses
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp sgt i32 %i.h, %i.i
  br i1 %i.k, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !59   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !59   ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp sgt i32 %i.m, %i.o
  br i1 %i.q, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59
  %i.v = icmp slt i32 %i.s, %i.u
  br i1 %i.v, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80: ; preds = %bb.f, %bb.d, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02126.i = load ptr, ptr %i.w, align 8, !tbaa !91 ; 2 uses
  %.not27.i = icmp eq ptr %.02126.i, null
  br i1 %.not27.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread80
  %i.x = load i32, ptr %2, align 4, !tbaa !59     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 4
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE11modifyValueINS0_5tools8valxform5MaxOpIiEEEEvRKNS0_4math5CoordERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store i32 %i.bk, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 92
  store i32 0, ptr %i.bm, align 4, !tbaa !129
  %i.bn = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bo = or i64 %i.bn, %i.u
  store i64 %i.bo, ptr %i.q, align 8, !tbaa !61
  %i.bp = xor i64 %i.u, -1
  %i.bq = load i64, ptr %i.x, align 8, !tbaa !61
  %i.br = and i64 %i.bq, %i.bp
  store i64 %i.br, ptr %i.x, align 8, !tbaa !61
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !84
  %.pre31 = load i32, ptr %1, align 4, !tbaa !59
  %.pre32 = load i32, ptr %i.d, align 4, !tbaa !59
  %.pre33 = load i32, ptr %i.i, align 4, !tbaa !59
  br label %.critedge23

bb.d:                                             ; preds = %.noexc, %.thread
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 96) #25
  resume { ptr, i32 } %i.bs

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bt = phi i32 [ %i.j, %..critedge23_crit_edge ], [ %.pre33, %.critedge ]
  %i.bu = phi i32 [ %i.e, %..critedge23_crit_edge ], [ %.pre32, %.critedge ]
  %i.bv = phi i32 [ %i.a, %..critedge23_crit_edge ], [ %.pre31, %.critedge ]
  %i.bw = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.ag, %.critedge ] ; 6 uses
  %i.bx = shl i32 %i.bv, 6
  %i.by = and i32 %i.bx, 448                      ; 2 uses
  %i.bz = shl i32 %i.bu, 3
  %i.ca = and i32 %i.bz, 56
  %i.cb = and i32 %i.bt, 7
  %i.cc = or disjoint i32 %i.cb, %i.ca            ; 2 uses
  %i.cd = or disjoint i32 %i.cc, %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.cf = load atomic i32, ptr %i.ce seq_cst, align 4
  %.not.i.i.i25 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i25, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.critedge23
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bw)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i: ; preds = %bb.e, %.critedge23
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !84
  %.not.i4.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i4.i.i, label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform5MaxOpIiEEEEvRKNS0_4math5CoordERKT_.exit, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i
  %i.ch = load atomic i32, ptr %i.ce seq_cst, align 8
  %.not.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform5MaxOpIiEEEEvRKNS0_4math5CoordERKT_.exit

bb.f:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i
  %i.ci = load atomic i32, ptr %i.ce seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bw)
  br label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i

_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i: ; preds = %bb.g, %bb.f
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  %i.ck = zext nneg i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIiLj3EE2atEjE5sZero, ptr %i.cl ; 2 uses
  %i.cm = load i32, ptr %2, align 4, !tbaa !59    ; 2 uses
  %i.cn = load i32, ptr %.0.i.i.i.i, align 4, !tbaa !59
  %i.co = icmp sgt i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.h, label %_ZNK7openvdb5v13_05tools8valxform5MaxOpIiEclERi.exit.i.i

bb.h:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i
  store i32 %i.cm, ptr %.0.i.i.i.i, align 4, !tbaa !59
  br label %_ZNK7openvdb5v13_05tools8valxform5MaxOpIiEclERi.exit.i.i

_ZNK7openvdb5v13_05tools8valxform5MaxOpIiEclERi.exit.i.i: ; preds = %bb.h, %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cq = zext nneg i32 %i.cc to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = lshr exact i32 %i.by, 6
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ct ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !61
  %i.cw = or i64 %i.cv, %i.cr
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !61
  br label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform5MaxOpIiEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform5MaxOpIiEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %_ZNK7openvdb5v13_05tools8valxform5MaxOpIiEclERi.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform5MaxOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !59
  %i.c = load i32, ptr %i.a, align 8, !tbaa !59
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59   ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59   ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !59
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i = load i64, ptr %i.ba, align 8, !tbaa !61
  %broadcast.splatinsert72 = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat73 = shufflevector <2 x i64> %broadcast.splatinsert72, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index75 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next76.3, %vector.body74 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index75 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %broadcast.splat73, ptr %i.bb, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat73, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index75 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x i64> %broadcast.splat73, ptr %i.be, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat73, ptr %i.bf, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index75 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x i64> %broadcast.splat73, ptr %i.bh, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat73, ptr %i.bi, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index75 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x i64> %broadcast.splat73, ptr %i.bk, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat73, ptr %i.bl, align 8, !tbaa !84
  %index.next76.3 = add nuw nsw i64 %index75, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next76.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body74, !llvm.loop !403

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body74
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.j, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.k, %bb.i
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.k ], [ %.014.i.i.i.i23, %bb.i ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !17

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.ca = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i28, %bb.l ], [ %.19.i.i.i.i28, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !173 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !57
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !61
  %i.cu = load i64, ptr %2, align 8, !tbaa !61
  %i.cv = icmp sgt i64 %i.cu, %i.ct
  br i1 %i.cv, label %.thread, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MaxOpIlEEEEvRKNS0_4math5CoordERKT_.exit

.thread:                                          ; preds = %bb.q, %bb.p
  %i.cw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !173
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = load i8, ptr %i.cp, align 8, !range !57
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = select i1 %i.cz, i1 %i.db, i1 false
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cw, i8 0, i64 270336, i1 false)
  %i.de = load i32, ptr %i.j, align 4, !tbaa !59
  %i.df = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.dg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.de, i64 2
  %i.dh = shufflevector <2 x i32> %i.df, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dj = and <4 x i32> %i.di, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dj, ptr %i.dd, align 8, !tbaa !59
  br i1 %i.dc, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dk, i8 -1, i64 4096, i1 false), !tbaa !61
  br label %vector.ph

vector.ph:                                        ; preds = %.thread, %bb.r
  %.pre.i32 = load i64, ptr %i.cx, align 8, !tbaa !61
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i32, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.dl, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dm, align 8, !tbaa !84
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.do, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dp, align 8, !tbaa !84
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.dr, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.ds, align 8, !tbaa !84
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.du, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dv, align 8, !tbaa !84
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dw = icmp eq i64 %index.next.3, 32768
  br i1 %i.dw, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36, label %vector.body, !llvm.loop !404

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cw)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.1.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 5 uses
  %i.dx = load i32, ptr %1, align 4, !tbaa !59
  %i.dy = shl i32 %i.dx, 3
  %i.dz = and i32 %i.dy, 31744
  %i.ea = load i32, ptr %i.e, align 4, !tbaa !59
  %i.eb = lshr i32 %i.ea, 2
  %i.ec = and i32 %i.eb, 992
  %i.ed = or disjoint i32 %i.ec, %i.dz            ; 2 uses
  %i.ee = load i32, ptr %i.j, align 4, !tbaa !59
  %i.ef = lshr i32 %i.ee, 7
  %i.eg = and i32 %i.ef, 31
  %i.eh = or disjoint i32 %i.ed, %i.eg            ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.ph, i64 262144
  %i.ej = lshr i32 %i.ed, 6
  %i.ek = zext nneg i32 %i.ej to i64              ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ek ; 3 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !61
  %i.en = and i32 %i.eh, 63
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo                    ; 4 uses
  %i.eq = and i64 %i.ep, %i.em
  %.not.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i, label %bb.s, label %..critedge23_crit_edge.i

..critedge23_crit_edge.i:                         ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.phi.trans.insert.i = zext nneg i32 %i.eh to i64
  %.phi.trans.insert29.i = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.phi.trans.insert.i
  %.pre.i37 = load ptr, ptr %.phi.trans.insert29.i, align 8, !tbaa !84
  br label %.critedge23.i

bb.s:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %.1.ph, i64 266240
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ek ; 3 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !61
  %i.eu = and i64 %i.et, %i.ep
  %.not28.i = icmp eq i64 %i.eu, 0                ; 2 uses
  %.pre30.i = zext nneg i32 %i.eh to i64          ; 2 uses
  br i1 %.not28.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre30.i
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !61
  %i.ex = load i64, ptr %2, align 8, !tbaa !61
  %i.ey = icmp sgt i64 %i.ex, %i.ew
  br i1 %i.ey, label %.thread.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MaxOpIlEEEEvRKNS0_4math5CoordERKT_.exit

.thread.i:                                        ; preds = %bb.t, %bb.s
  %i.ez = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #24 ; 9 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre30.i ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ez, i8 0, i64 33792, i1 false)
  %i.fc = load i32, ptr %i.j, align 4, !tbaa !59
  %i.fd = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.fe = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.fc, i64 2
  %i.ff = shufflevector <2 x i32> %i.fd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x i32> %i.ff, <4 x i32> %i.fe, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fh = and <4 x i32> %i.fg, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.fh, ptr %i.fb, align 8, !tbaa !59
  br i1 %.not28.i, label %vector.ph78, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 33280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.fi, i8 -1, i64 512, i1 false), !tbaa !61
  br label %vector.ph78

vector.ph78:                                      ; preds = %.thread.i, %bb.u
  %.pre.i.i = load i64, ptr %i.fa, align 8, !tbaa !61
  %broadcast.splatinsert79 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 0
  %broadcast.splat80 = shufflevector <2 x i64> %broadcast.splatinsert79, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph78
  %index82 = phi i64 [ 0, %vector.ph78 ], [ %index.next83.3, %vector.body81 ] ; 5 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index82 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x i64> %broadcast.splat80, ptr %i.fj, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat80, ptr %i.fk, align 8, !tbaa !84
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index82 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  store <2 x i64> %broadcast.splat80, ptr %i.fm, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat80, ptr %i.fn, align 8, !tbaa !84
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index82 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 80
  store <2 x i64> %broadcast.splat80, ptr %i.fp, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat80, ptr %i.fq, align 8, !tbaa !84
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index82 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 112
  store <2 x i64> %broadcast.splat80, ptr %i.fs, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat80, ptr %i.ft, align 8, !tbaa !84
  %index.next83.3 = add nuw nsw i64 %index82, 16  ; 2 uses
  %i.fu = icmp eq i64 %index.next83.3, 4096
  br i1 %i.fu, label %.critedge.i38, label %vector.body81, !llvm.loop !405

.critedge.i38:                                    ; preds = %vector.body81
  %i.fv = load i64, ptr %i.el, align 8, !tbaa !61
  %i.fw = or i64 %i.fv, %i.ep
  store i64 %i.fw, ptr %i.el, align 8, !tbaa !61
  %i.fx = xor i64 %i.ep, -1
  %i.fy = load i64, ptr %i.es, align 8, !tbaa !61
  %i.fz = and i64 %i.fy, %i.fx
  store i64 %i.fz, ptr %i.es, align 8, !tbaa !61
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !84
  br label %.critedge23.i

.critedge23.i:                                    ; preds = %.critedge.i38, %..critedge23_crit_edge.i
  %i.ga = phi ptr [ %.pre.i37, %..critedge23_crit_edge.i ], [ %i.ez, %.critedge.i38 ]
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE11modifyValueINS0_5tools8valxform5MaxOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ga, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MaxOpIlEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MaxOpIlEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %bb.q, %.critedge23.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE11modifyValueINS0_5tools8valxform5MaxOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !59     ; 2 uses
  %i.b = shl i32 %i.a, 5
  %i.c = and i32 %i.b, 3840
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.f = shl i32 %i.e, 1
  %i.g = and i32 %i.f, 240
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 2 uses
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 15
  %i.m = or disjoint i32 %i.h, %i.l               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 4 uses
  %i.v = and i64 %i.u, %i.r
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = zext nneg i32 %i.m to i64
  %.phi.trans.insert30 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert30, align 8, !tbaa !84
  br label %.critedge23

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 33280
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = and i64 %i.y, %i.u
  %i.aa = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ab = zext nneg i32 %i.m to i64               ; 2 uses
  br i1 %i.aa, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !61
  %i.ae = load i64, ptr %2, align 8, !tbaa !61
  %i.af = icmp sgt i64 %i.ae, %i.ad
  br i1 %i.af, label %.thread, label %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EE11modifyValueINS0_5tools8valxform5MaxOpIlEEEEvRKNS0_4math5CoordERKT_.exit

.thread:                                          ; preds = %bb.b, %bb.c
  %i.ag = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 19 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.ai = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.thread
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i8 0, ptr %i.aj, align 4, !tbaa !120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store atomic i32 0, ptr %i.ak seq_cst, align 8
  %i.al = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIlLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ag)
          to label %.noexc24 unwind label %bb.d   ; 0 uses

.noexc24:                                         ; preds = %.noexc
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !84 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %.critedge, label %vector.ph

vector.ph:                                        ; preds = %.noexc24
  %.pre.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !61
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.an = shl nuw nsw i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.ao, align 8, !tbaa !61
  %index.next = shl i64 %index, 3
  %i.ap = getelementptr i8, ptr %i.am, i64 %index.next ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.ap, i64 32
  %i.aq = getelementptr i8, ptr %i.ap, i64 48
  store <2 x i64> %broadcast.splat, ptr %next.gep.1, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.aq, align 8, !tbaa !61
  %index.next.1 = shl i64 %index, 3
  %i.ar = getelementptr i8, ptr %i.am, i64 %index.next.1 ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %i.ar, i64 64
  %i.as = getelementptr i8, ptr %i.ar, i64 80
  store <2 x i64> %broadcast.splat, ptr %next.gep.2, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.as, align 8, !tbaa !61
  %index.next.2 = shl i64 %index, 3
  %i.at = getelementptr i8, ptr %i.am, i64 %index.next.2 ; 2 uses
  %next.gep.3 = getelementptr i8, ptr %i.at, i64 96
  %i.au = getelementptr i8, ptr %i.at, i64 112
  store <2 x i64> %broadcast.splat, ptr %next.gep.3, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.au, align 8, !tbaa !61
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.av = icmp eq i64 %index.next.3, 512
  br i1 %i.av, label %.critedge, label %vector.body, !llvm.loop !406

.critedge:                                        ; preds = %vector.body, %.noexc24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ax = sext i1 %i.aa to i64                    ; 8 uses
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %i.ax, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i64 %i.ax, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store i64 %i.ax, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i64 %i.ax, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store i64 %i.ax, ptr %i.be, align 8, !tbaa !61
  %i.bf = load i32, ptr %1, align 4, !tbaa !59
  %i.bg = and i32 %i.bf, -8
  %i.bh = load i32, ptr %i.d, align 4, !tbaa !59
  %i.bi = and i32 %i.bh, -8
  %i.bj = load i32, ptr %i.i, align 4, !tbaa !59
  %i.bk = and i32 %i.bj, -8
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bi to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bg to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bl, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store i32 %i.bk, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 92
  store i32 0, ptr %i.bm, align 4, !tbaa !176
  %i.bn = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bo = or i64 %i.bn, %i.u
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11modifyValueINS0_5tools8valxform5MaxOpIfEEEEvRKNS0_4math5CoordERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  store i32 0, ptr %i.bn, align 4, !tbaa !183
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bp = or i64 %i.bo, %i.u
  store i64 %i.bp, ptr %i.q, align 8, !tbaa !61
  %i.bq = xor i64 %i.u, -1
  %i.br = load i64, ptr %i.x, align 8, !tbaa !61
  %i.bs = and i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.x, align 8, !tbaa !61
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !84
  %.pre29 = load i32, ptr %1, align 4, !tbaa !59
  %.pre30 = load i32, ptr %i.d, align 4, !tbaa !59
  %.pre31 = load i32, ptr %i.i, align 4, !tbaa !59
  br label %.critedge23

bb.d:                                             ; preds = %.noexc, %.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 96) #25
  resume { ptr, i32 } %i.bt

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bu = phi i32 [ %i.j, %..critedge23_crit_edge ], [ %.pre31, %.critedge ]
  %i.bv = phi i32 [ %i.e, %..critedge23_crit_edge ], [ %.pre30, %.critedge ]
  %i.bw = phi i32 [ %i.a, %..critedge23_crit_edge ], [ %.pre29, %.critedge ]
  %i.bx = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.ah, %.critedge ] ; 6 uses
  %i.by = shl i32 %i.bw, 6
  %i.bz = and i32 %i.by, 448                      ; 2 uses
  %i.ca = shl i32 %i.bv, 3
  %i.cb = and i32 %i.ca, 56
  %i.cc = and i32 %i.bu, 7
  %i.cd = or disjoint i32 %i.cc, %i.cb            ; 2 uses
  %i.ce = or disjoint i32 %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cg = load atomic i32, ptr %i.cf seq_cst, align 4
  %.not.i.i.i25 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i25, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.critedge23
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bx)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i: ; preds = %bb.e, %.critedge23
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !84
  %.not.i4.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i4.i.i, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform5MaxOpIfEEEEvRKNS0_4math5CoordERKT_.exit, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i
  %i.ci = load atomic i32, ptr %i.cf seq_cst, align 8
  %.not.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform5MaxOpIfEEEEvRKNS0_4math5CoordERKT_.exit

bb.f:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i
  %i.cj = load atomic i32, ptr %i.cf seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bx)
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  %i.cl = zext nneg i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cm ; 2 uses
  %i.cn = load float, ptr %2, align 4, !tbaa !63  ; 2 uses
  %i.co = load float, ptr %.0.i.i.i.i, align 4, !tbaa !63
  %i.cp = fcmp ogt float %i.cn, %i.co
  br i1 %i.cp, label %bb.h, label %_ZNK7openvdb5v13_05tools8valxform5MaxOpIfEclERf.exit.i.i

bb.h:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i
  store float %i.cn, ptr %.0.i.i.i.i, align 4, !tbaa !63
  br label %_ZNK7openvdb5v13_05tools8valxform5MaxOpIfEclERf.exit.i.i

_ZNK7openvdb5v13_05tools8valxform5MaxOpIfEclERf.exit.i.i: ; preds = %bb.h, %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cr = zext nneg i32 %i.cd to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = lshr exact i32 %i.bz, 6
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !61
  %i.cx = or i64 %i.cw, %i.cs
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !61
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform5MaxOpIfEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform5MaxOpIfEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %_ZNK7openvdb5v13_05tools8valxform5MaxOpIfEclERf.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform5MaxOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !59
  %i.c = load i32, ptr %i.a, align 8, !tbaa !59
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59   ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59   ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !59
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i = load double, ptr %i.ba, align 8, !tbaa !65
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index74 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next75.3, %vector.body73 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x double> %broadcast.splat72, ptr %i.bb, align 8, !tbaa !84
  store <2 x double> %broadcast.splat72, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x double> %broadcast.splat72, ptr %i.be, align 8, !tbaa !84
  store <2 x double> %broadcast.splat72, ptr %i.bf, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x double> %broadcast.splat72, ptr %i.bh, align 8, !tbaa !84
  store <2 x double> %broadcast.splat72, ptr %i.bi, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x double> %broadcast.splat72, ptr %i.bk, align 8, !tbaa !84
  store <2 x double> %broadcast.splat72, ptr %i.bl, align 8, !tbaa !84
  %index.next75.3 = add nuw nsw i64 %index74, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next75.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body73, !llvm.loop !408

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body73
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.j, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.k, %bb.i
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.k ], [ %.014.i.i.i.i23, %bb.i ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !25

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.ca = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i28, %bb.l ], [ %.19.i.i.i.i28, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !192 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !57
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !65 ; 3 uses
  %i.cu = load double, ptr %2, align 8, !tbaa !65 ; 2 uses
  %i.cv = fcmp ogt double %i.cu, %i.ct
  %.0 = select i1 %i.cv, double %i.cu, double %i.ct
  %i.cw = fcmp une double %i.ct, %.0
  br i1 %i.cw, label %.thread, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MaxOpIdEEEEvRKNS0_4math5CoordERKT_.exit

.thread:                                          ; preds = %bb.p, %bb.q
  %i.cx = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 9 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cz = load ptr, ptr %i.cn, align 8, !tbaa !192
  %i.da = icmp eq ptr %i.cz, null
  %i.db = load i8, ptr %i.cp, align 8, !range !57
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = select i1 %i.da, i1 %i.dc, i1 false
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cx, i8 0, i64 270336, i1 false)
  %i.df = load i32, ptr %i.j, align 4, !tbaa !59
  %i.dg = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.dh = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.df, i64 2
  %i.di = shufflevector <2 x i32> %i.dg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> %i.dh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dk = and <4 x i32> %i.dj, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dk, ptr %i.de, align 8, !tbaa !59
  br i1 %i.dd, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dl, i8 -1, i64 4096, i1 false), !tbaa !61
  br label %vector.ph

vector.ph:                                        ; preds = %.thread, %bb.r
  %.pre.i32 = load double, ptr %i.cy, align 8, !tbaa !65
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i32, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dn, align 8, !tbaa !84
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dq, align 8, !tbaa !84
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  store <2 x double> %broadcast.splat, ptr %i.ds, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dt, align 8, !tbaa !84
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dv, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dw, align 8, !tbaa !84
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dx = icmp eq i64 %index.next.3, 32768
  br i1 %i.dx, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, label %vector.body, !llvm.loop !409

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cx)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.1.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cx, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 5 uses
  %i.dy = load i32, ptr %1, align 4, !tbaa !59
  %i.dz = shl i32 %i.dy, 3
  %i.ea = and i32 %i.dz, 31744
  %i.eb = load i32, ptr %i.e, align 4, !tbaa !59
  %i.ec = lshr i32 %i.eb, 2
  %i.ed = and i32 %i.ec, 992
  %i.ee = or disjoint i32 %i.ed, %i.ea            ; 2 uses
  %i.ef = load i32, ptr %i.j, align 4, !tbaa !59
  %i.eg = lshr i32 %i.ef, 7
  %i.eh = and i32 %i.eg, 31
  %i.ei = or disjoint i32 %i.ee, %i.eh            ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1.ph, i64 262144
  %i.ek = lshr i32 %i.ee, 6
  %i.el = zext nneg i32 %i.ek to i64              ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.el ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !61
  %i.eo = and i32 %i.ei, 63
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep                    ; 4 uses
  %i.er = and i64 %i.eq, %i.en
  %.not.i = icmp eq i64 %i.er, 0
  br i1 %.not.i, label %bb.s, label %..critedge23_crit_edge.i

..critedge23_crit_edge.i:                         ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.phi.trans.insert.i = zext nneg i32 %i.ei to i64
  %.phi.trans.insert27.i = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.phi.trans.insert.i
  %.pre.i37 = load ptr, ptr %.phi.trans.insert27.i, align 8, !tbaa !84
  br label %.critedge23.i

bb.s:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.1.ph, i64 266240
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.el ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !61
  %i.ev = and i64 %i.eu, %i.eq
  %.not26.i = icmp eq i64 %i.ev, 0                ; 2 uses
  %.pre28.i = zext nneg i32 %i.ei to i64          ; 2 uses
  br i1 %.not26.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre28.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !65 ; 3 uses
  %i.ey = load double, ptr %2, align 8, !tbaa !65 ; 2 uses
  %i.ez = fcmp ogt double %i.ey, %i.ex
  %.0.i = select i1 %i.ez, double %i.ey, double %i.ex
  %i.fa = fcmp oeq double %i.ex, %.0.i
  br i1 %i.fa, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MaxOpIdEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.s
  %i.fb = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #24 ; 9 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre28.i ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.fb, i8 0, i64 33792, i1 false)
  %i.fe = load i32, ptr %i.j, align 4, !tbaa !59
  %i.ff = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.fg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.fe, i64 2
  %i.fh = shufflevector <2 x i32> %i.ff, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fi = shufflevector <4 x i32> %i.fh, <4 x i32> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fj = and <4 x i32> %i.fi, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.fj, ptr %i.fd, align 8, !tbaa !59
  br i1 %.not26.i, label %vector.ph77, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 33280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.fk, i8 -1, i64 512, i1 false), !tbaa !61
  br label %vector.ph77

vector.ph77:                                      ; preds = %.thread.i, %bb.u
  %.pre.i.i = load double, ptr %i.fc, align 8, !tbaa !65
  %broadcast.splatinsert78 = insertelement <2 x double> poison, double %.pre.i.i, i64 0
  %broadcast.splat79 = shufflevector <2 x double> %broadcast.splatinsert78, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph77
  %index81 = phi i64 [ 0, %vector.ph77 ], [ %index.next82.3, %vector.body80 ] ; 5 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index81 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x double> %broadcast.splat79, ptr %i.fl, align 8, !tbaa !84
  store <2 x double> %broadcast.splat79, ptr %i.fm, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index81 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store <2 x double> %broadcast.splat79, ptr %i.fo, align 8, !tbaa !84
  store <2 x double> %broadcast.splat79, ptr %i.fp, align 8, !tbaa !84
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index81 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  store <2 x double> %broadcast.splat79, ptr %i.fr, align 8, !tbaa !84
  store <2 x double> %broadcast.splat79, ptr %i.fs, align 8, !tbaa !84
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index81 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 112
  store <2 x double> %broadcast.splat79, ptr %i.fu, align 8, !tbaa !84
  store <2 x double> %broadcast.splat79, ptr %i.fv, align 8, !tbaa !84
  %index.next82.3 = add nuw nsw i64 %index81, 16  ; 2 uses
  %i.fw = icmp eq i64 %index.next82.3, 4096
  br i1 %i.fw, label %.critedge.i38, label %vector.body80, !llvm.loop !410

.critedge.i38:                                    ; preds = %vector.body80
  %i.fx = load i64, ptr %i.em, align 8, !tbaa !61
  %i.fy = or i64 %i.fx, %i.eq
  store i64 %i.fy, ptr %i.em, align 8, !tbaa !61
  %i.fz = xor i64 %i.eq, -1
  %i.ga = load i64, ptr %i.et, align 8, !tbaa !61
  %i.gb = and i64 %i.ga, %i.fz
  store i64 %i.gb, ptr %i.et, align 8, !tbaa !61
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !84
  br label %.critedge23.i

.critedge23.i:                                    ; preds = %.critedge.i38, %..critedge23_crit_edge.i
  %i.gc = phi ptr [ %.pre.i37, %..critedge23_crit_edge.i ], [ %i.fb, %.critedge.i38 ]
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11modifyValueINS0_5tools8valxform5MaxOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.gc, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MaxOpIdEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5MaxOpIdEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %.critedge23.i, %bb.t, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11modifyValueINS0_5tools8valxform5MaxOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !59     ; 2 uses
  %i.b = shl i32 %i.a, 5
  %i.c = and i32 %i.b, 3840
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.f = shl i32 %i.e, 1
  %i.g = and i32 %i.f, 240
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 2 uses
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 15
  %i.m = or disjoint i32 %i.h, %i.l               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 4 uses
  %i.v = and i64 %i.u, %i.r
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = zext nneg i32 %i.m to i64
  %.phi.trans.insert28 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert28, align 8, !tbaa !84
  br label %.critedge23

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 33280
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = and i64 %i.y, %i.u
  %i.aa = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ab = zext nneg i32 %i.m to i64               ; 2 uses
  br i1 %i.aa, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !65 ; 3 uses
  %i.ae = load double, ptr %2, align 8, !tbaa !65 ; 2 uses
  %i.af = fcmp ogt double %i.ae, %i.ad
  %.0 = select i1 %i.af, double %i.ae, double %i.ad
  %i.ag = fcmp oeq double %i.ad, %.0
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE11modifyValueINS0_5tools8valxform5MaxOpIdEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.ah = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 19 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.aj = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.thread
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !84
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i8 0, ptr %i.ak, align 4, !tbaa !120
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store atomic i32 0, ptr %i.al seq_cst, align 8
  %i.am = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ah)
          to label %.noexc24 unwind label %bb.d   ; 0 uses

.noexc24:                                         ; preds = %.noexc
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !84 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.critedge, label %vector.ph

vector.ph:                                        ; preds = %.noexc24
  %.pre.i.i.i = load double, ptr %i.ai, align 8, !tbaa !65
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ao = shl nuw nsw i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !65
  %index.next = shl i64 %index, 3
  %i.aq = getelementptr i8, ptr %i.an, i64 %index.next ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.aq, i64 32
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  store <2 x double> %broadcast.splat, ptr %next.gep.1, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !65
  %index.next.1 = shl i64 %index, 3
  %i.as = getelementptr i8, ptr %i.an, i64 %index.next.1 ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %i.as, i64 64
  %i.at = getelementptr i8, ptr %i.as, i64 80
  store <2 x double> %broadcast.splat, ptr %next.gep.2, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.at, align 8, !tbaa !65
  %index.next.2 = shl i64 %index, 3
  %i.au = getelementptr i8, ptr %i.an, i64 %index.next.2 ; 2 uses
  %next.gep.3 = getelementptr i8, ptr %i.au, i64 96
  %i.av = getelementptr i8, ptr %i.au, i64 112
  store <2 x double> %broadcast.splat, ptr %next.gep.3, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.av, align 8, !tbaa !65
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.aw = icmp eq i64 %index.next.3, 512
  br i1 %i.aw, label %.critedge, label %vector.body, !llvm.loop !411

.critedge:                                        ; preds = %vector.body, %.noexc24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ay = sext i1 %i.aa to i64                    ; 8 uses
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 %i.ay, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %i.ay, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i64 %i.ay, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store i64 %i.ay, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store i64 %i.ay, ptr %i.bf, align 8, !tbaa !61
  %i.bg = load i32, ptr %1, align 4, !tbaa !59
  %i.bh = and i32 %i.bg, -8
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !59
  %i.bj = and i32 %i.bi, -8
  %i.bk = load i32, ptr %i.i, align 4, !tbaa !59
  %i.bl = and i32 %i.bk, -8
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  store i32 0, ptr %i.bn, align 4, !tbaa !195
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE11modifyValueINS0_5tools8valxform5SumOpIiEEEEvRKNS0_4math5CoordERKT_:bb.a
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bg to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.be to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bj, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i32 %i.bi, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 92
  store i32 0, ptr %i.bk, align 4, !tbaa !129
  %i.bl = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bm = or i64 %i.bl, %i.u
  store i64 %i.bm, ptr %i.q, align 8, !tbaa !61
  %i.bn = xor i64 %i.u, -1
  %i.bo = load i64, ptr %i.x, align 8, !tbaa !61
  %i.bp = and i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %i.x, align 8, !tbaa !61
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !84
  %.pre30 = load i32, ptr %1, align 4, !tbaa !59
  %.pre31 = load i32, ptr %i.d, align 4, !tbaa !59
  %.pre32 = load i32, ptr %i.i, align 4, !tbaa !59
  br label %.critedge23

bb.c:                                             ; preds = %.noexc, %.thread
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 96) #25
  resume { ptr, i32 } %i.bq

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.br = phi i32 [ %i.j, %..critedge23_crit_edge ], [ %.pre32, %.critedge ]
  %i.bs = phi i32 [ %i.e, %..critedge23_crit_edge ], [ %.pre31, %.critedge ]
  %i.bt = phi i32 [ %i.a, %..critedge23_crit_edge ], [ %.pre30, %.critedge ]
  %i.bu = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.ad, %.critedge ] ; 6 uses
  %i.bv = shl i32 %i.bt, 6
  %i.bw = and i32 %i.bv, 448                      ; 2 uses
  %i.bx = shl i32 %i.bs, 3
  %i.by = and i32 %i.bx, 56
  %i.bz = and i32 %i.br, 7
  %i.ca = or disjoint i32 %i.bz, %i.by            ; 2 uses
  %i.cb = or disjoint i32 %i.ca, %i.bw
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.cd = load atomic i32, ptr %i.cc seq_cst, align 4
  %.not.i.i.i25 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i25, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.critedge23
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bu)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i: ; preds = %bb.d, %.critedge23
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !84
  %.not.i4.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i4.i.i, label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform5SumOpIiEEEEvRKNS0_4math5CoordERKT_.exit, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i
  %i.cf = load atomic i32, ptr %i.cc seq_cst, align 8
  %.not.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform5SumOpIiEEEEvRKNS0_4math5CoordERKT_.exit

bb.e:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i
  %i.cg = load atomic i32, ptr %i.cc seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bu)
  br label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i

_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  %i.ci = zext nneg i32 %i.cb to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ci
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIiLj3EE2atEjE5sZero, ptr %i.cj ; 2 uses
  %i.ck = load i32, ptr %2, align 4, !tbaa !67
  %i.cl = load i32, ptr %.0.i.i.i.i, align 4, !tbaa !59
  %i.cm = add nsw i32 %i.cl, %i.ck
  store i32 %i.cm, ptr %.0.i.i.i.i, align 4, !tbaa !59
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.co = zext nneg i32 %i.ca to i64
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = lshr exact i32 %i.bw, 6
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cr ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !61
  %i.cu = or i64 %i.ct, %i.cp
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !61
  br label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform5SumOpIiEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform5SumOpIiEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %bb.b, %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform5SumOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !59
  %i.c = load i32, ptr %i.a, align 8, !tbaa !59
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59   ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59   ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !59
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i = load i64, ptr %i.ba, align 8, !tbaa !61
  %broadcast.splatinsert71 = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat72 = shufflevector <2 x i64> %broadcast.splatinsert71, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index74 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next75.3, %vector.body73 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %broadcast.splat72, ptr %i.bb, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat72, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x i64> %broadcast.splat72, ptr %i.be, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat72, ptr %i.bf, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x i64> %broadcast.splat72, ptr %i.bh, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat72, ptr %i.bi, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x i64> %broadcast.splat72, ptr %i.bk, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat72, ptr %i.bl, align 8, !tbaa !84
  %index.next75.3 = add nuw nsw i64 %index74, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next75.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body73, !llvm.loop !416

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body73
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.j, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.k, %bb.i
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.k ], [ %.014.i.i.i.i23, %bb.i ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !17

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.ca = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i28, %bb.l ], [ %.19.i.i.i.i28, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !173 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !57
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cs = load i64, ptr %2, align 8, !tbaa !69
  %.not54 = icmp eq i64 %i.cs, 0
  br i1 %.not54, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5SumOpIlEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread

.thread:                                          ; preds = %bb.p, %bb.q
  %i.ct = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !173
  %i.cw = icmp eq ptr %i.cv, null
  %i.cx = load i8, ptr %i.cp, align 8, !range !57
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = select i1 %i.cw, i1 %i.cy, i1 false
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.ct, i8 0, i64 270336, i1 false)
  %i.db = load i32, ptr %i.j, align 4, !tbaa !59
  %i.dc = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.dd = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.db, i64 2
  %i.de = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.df = shufflevector <4 x i32> %i.de, <4 x i32> %i.dd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dg = and <4 x i32> %i.df, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dg, ptr %i.da, align 8, !tbaa !59
  br i1 %i.cz, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dh, i8 -1, i64 4096, i1 false), !tbaa !61
  br label %vector.ph

vector.ph:                                        ; preds = %.thread, %bb.r
  %.pre.i32 = load i64, ptr %i.cu, align 8, !tbaa !61
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i32, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.di, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dj, align 8, !tbaa !84
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.dl, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dm, align 8, !tbaa !84
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.do, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dp, align 8, !tbaa !84
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.dr, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.ds, align 8, !tbaa !84
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dt = icmp eq i64 %index.next.3, 32768
  br i1 %i.dt, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36, label %vector.body, !llvm.loop !417

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.ct)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.1.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.ct, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 4 uses
  %i.du = load i32, ptr %1, align 4, !tbaa !59
  %i.dv = shl i32 %i.du, 3
  %i.dw = and i32 %i.dv, 31744
  %i.dx = load i32, ptr %i.e, align 4, !tbaa !59
  %i.dy = lshr i32 %i.dx, 2
  %i.dz = and i32 %i.dy, 992
  %i.ea = or disjoint i32 %i.dz, %i.dw            ; 2 uses
  %i.eb = load i32, ptr %i.j, align 4, !tbaa !59
  %i.ec = lshr i32 %i.eb, 7
  %i.ed = and i32 %i.ec, 31
  %i.ee = or disjoint i32 %i.ea, %i.ed            ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.ph, i64 262144
  %i.eg = lshr i32 %i.ea, 6
  %i.eh = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eh ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !61
  %i.ek = and i32 %i.ee, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el                    ; 4 uses
  %i.en = and i64 %i.em, %i.ej
  %.not.i = icmp eq i64 %i.en, 0
  br i1 %.not.i, label %bb.s, label %..critedge23_crit_edge.i

..critedge23_crit_edge.i:                         ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.phi.trans.insert.i = zext nneg i32 %i.ee to i64
  %.phi.trans.insert28.i = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.phi.trans.insert.i
  %.pre.i37 = load ptr, ptr %.phi.trans.insert28.i, align 8, !tbaa !84
  br label %.critedge23.i

bb.s:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.1.ph, i64 266240
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.eh ; 3 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !61
  %i.er = and i64 %i.eq, %i.em
  %.not26.i = icmp ne i64 %i.er, 0                ; 2 uses
  %i.es = load i64, ptr %2, align 8
  %i.et = icmp eq i64 %i.es, 0
  %or.cond.i = select i1 %.not26.i, i1 %i.et, i1 false
  br i1 %or.cond.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5SumOpIlEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.s
  %i.eu = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #24 ; 9 uses
  %i.ev = zext nneg i32 %i.ee to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.eu, i8 0, i64 33792, i1 false)
  %i.ey = load i32, ptr %i.j, align 4, !tbaa !59
  %i.ez = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.fa = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ey, i64 2
  %i.fb = shufflevector <2 x i32> %i.ez, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x i32> %i.fb, <4 x i32> %i.fa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fd = and <4 x i32> %i.fc, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.fd, ptr %i.ex, align 8, !tbaa !59
  br i1 %.not26.i, label %bb.t, label %vector.ph77

bb.t:                                             ; preds = %.thread.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 33280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.fe, i8 -1, i64 512, i1 false), !tbaa !61
  br label %vector.ph77

vector.ph77:                                      ; preds = %.thread.i, %bb.t
  %.pre.i.i = load i64, ptr %i.ew, align 8, !tbaa !61
  %broadcast.splatinsert78 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 0
  %broadcast.splat79 = shufflevector <2 x i64> %broadcast.splatinsert78, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph77
  %index81 = phi i64 [ 0, %vector.ph77 ], [ %index.next82.3, %vector.body80 ] ; 5 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index81 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <2 x i64> %broadcast.splat79, ptr %i.ff, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat79, ptr %i.fg, align 8, !tbaa !84
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index81 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store <2 x i64> %broadcast.splat79, ptr %i.fi, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat79, ptr %i.fj, align 8, !tbaa !84
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index81 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 80
  store <2 x i64> %broadcast.splat79, ptr %i.fl, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat79, ptr %i.fm, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index81 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 96
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 112
  store <2 x i64> %broadcast.splat79, ptr %i.fo, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat79, ptr %i.fp, align 8, !tbaa !84
  %index.next82.3 = add nuw nsw i64 %index81, 16  ; 2 uses
  %i.fq = icmp eq i64 %index.next82.3, 4096
  br i1 %i.fq, label %.critedge.i38, label %vector.body80, !llvm.loop !418

.critedge.i38:                                    ; preds = %vector.body80
  %i.fr = load i64, ptr %i.ei, align 8, !tbaa !61
  %i.fs = or i64 %i.fr, %i.em
  store i64 %i.fs, ptr %i.ei, align 8, !tbaa !61
  %i.ft = xor i64 %i.em, -1
  %i.fu = load i64, ptr %i.ep, align 8, !tbaa !61
  %i.fv = and i64 %i.fu, %i.ft
  store i64 %i.fv, ptr %i.ep, align 8, !tbaa !61
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !84
  br label %.critedge23.i

.critedge23.i:                                    ; preds = %.critedge.i38, %..critedge23_crit_edge.i
  %i.fw = phi ptr [ %.pre.i37, %..critedge23_crit_edge.i ], [ %i.eu, %.critedge.i38 ]
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE11modifyValueINS0_5tools8valxform5SumOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.fw, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5SumOpIlEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5SumOpIlEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %.critedge23.i, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE11modifyValueINS0_5tools8valxform5SumOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !59     ; 2 uses
  %i.b = shl i32 %i.a, 5
  %i.c = and i32 %i.b, 3840
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.f = shl i32 %i.e, 1
  %i.g = and i32 %i.f, 240
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 2 uses
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 15
  %i.m = or disjoint i32 %i.h, %i.l               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 4 uses
  %i.v = and i64 %i.u, %i.r
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = zext nneg i32 %i.m to i64
  %.phi.trans.insert29 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert29, align 8, !tbaa !84
  br label %.critedge23

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 33280
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = and i64 %i.y, %i.u
  %i.aa = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ab = load i64, ptr %2, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EE11modifyValueINS0_5tools8valxform5SumOpIlEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread

.thread:                                          ; preds = %bb.b
  %i.ad = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 19 uses
  %i.ae = zext nneg i32 %i.m to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 2 uses
  %i.ag = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #24
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.thread
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i8 0, ptr %i.ah, align 4, !tbaa !120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store atomic i32 0, ptr %i.ai seq_cst, align 8
  %i.aj = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIlLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ad)
          to label %.noexc24 unwind label %bb.c   ; 0 uses

.noexc24:                                         ; preds = %.noexc
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !84 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %.critedge, label %vector.ph

vector.ph:                                        ; preds = %.noexc24
  %.pre.i.i.i = load i64, ptr %i.af, align 8, !tbaa !61
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.al = shl nuw nsw i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.am, align 8, !tbaa !61
  %index.next = shl i64 %index, 3
  %i.an = getelementptr i8, ptr %i.ak, i64 %index.next ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.an, i64 32
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  store <2 x i64> %broadcast.splat, ptr %next.gep.1, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.ao, align 8, !tbaa !61
  %index.next.1 = shl i64 %index, 3
  %i.ap = getelementptr i8, ptr %i.ak, i64 %index.next.1 ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %i.ap, i64 64
  %i.aq = getelementptr i8, ptr %i.ap, i64 80
  store <2 x i64> %broadcast.splat, ptr %next.gep.2, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.aq, align 8, !tbaa !61
  %index.next.2 = shl i64 %index, 3
  %i.ar = getelementptr i8, ptr %i.ak, i64 %index.next.2 ; 2 uses
  %next.gep.3 = getelementptr i8, ptr %i.ar, i64 96
  %i.as = getelementptr i8, ptr %i.ar, i64 112
  store <2 x i64> %broadcast.splat, ptr %next.gep.3, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.as, align 8, !tbaa !61
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.at = icmp eq i64 %index.next.3, 512
  br i1 %i.at, label %.critedge, label %vector.body, !llvm.loop !419

.critedge:                                        ; preds = %vector.body, %.noexc24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.av = sext i1 %i.aa to i64                    ; 8 uses
  store i64 %i.av, ptr %i.au, align 8, !tbaa !61
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %i.av, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i64 %i.av, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store i64 %i.av, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i64 %i.av, ptr %i.bc, align 8, !tbaa !61
  %i.bd = load i32, ptr %1, align 4, !tbaa !59
  %i.be = and i32 %i.bd, -8
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !59
  %i.bg = and i32 %i.bf, -8
  %i.bh = load i32, ptr %i.i, align 4, !tbaa !59
  %i.bi = and i32 %i.bh, -8
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bg to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.be to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bj, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i32 %i.bi, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 92
  store i32 0, ptr %i.bk, align 4, !tbaa !176
  %i.bl = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bm = or i64 %i.bl, %i.u
  store i64 %i.bm, ptr %i.q, align 8, !tbaa !61
  %i.bn = xor i64 %i.u, -1
  %i.bo = load i64, ptr %i.x, align 8, !tbaa !61
  %i.bp = and i64 %i.bo, %i.bn
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11modifyValueINS0_5tools8valxform5SumOpIfEEEEvRKNS0_4math5CoordERKT_:bb.a
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  store i32 0, ptr %i.bn, align 4, !tbaa !183
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bp = or i64 %i.bo, %i.u
  store i64 %i.bp, ptr %i.q, align 8, !tbaa !61
  %i.bq = xor i64 %i.u, -1
  %i.br = load i64, ptr %i.x, align 8, !tbaa !61
  %i.bs = and i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.x, align 8, !tbaa !61
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !84
  %.pre29 = load i32, ptr %1, align 4, !tbaa !59
  %.pre30 = load i32, ptr %i.d, align 4, !tbaa !59
  %.pre31 = load i32, ptr %i.i, align 4, !tbaa !59
  br label %.critedge23

bb.d:                                             ; preds = %.noexc, %.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 96) #25
  resume { ptr, i32 } %i.bt

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bu = phi i32 [ %i.j, %..critedge23_crit_edge ], [ %.pre31, %.critedge ]
  %i.bv = phi i32 [ %i.e, %..critedge23_crit_edge ], [ %.pre30, %.critedge ]
  %i.bw = phi i32 [ %i.a, %..critedge23_crit_edge ], [ %.pre29, %.critedge ]
  %i.bx = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.ah, %.critedge ] ; 6 uses
  %i.by = shl i32 %i.bw, 6
  %i.bz = and i32 %i.by, 448                      ; 2 uses
  %i.ca = shl i32 %i.bv, 3
  %i.cb = and i32 %i.ca, 56
  %i.cc = and i32 %i.bu, 7
  %i.cd = or disjoint i32 %i.cc, %i.cb            ; 2 uses
  %i.ce = or disjoint i32 %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cg = load atomic i32, ptr %i.cf seq_cst, align 4
  %.not.i.i.i25 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i25, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.critedge23
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bx)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i: ; preds = %bb.e, %.critedge23
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !84
  %.not.i4.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i4.i.i, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform5SumOpIfEEEEvRKNS0_4math5CoordERKT_.exit, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i
  %i.ci = load atomic i32, ptr %i.cf seq_cst, align 8
  %.not.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform5SumOpIfEEEEvRKNS0_4math5CoordERKT_.exit

bb.f:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i
  %i.cj = load atomic i32, ptr %i.cf seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bx)
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  %i.cl = zext nneg i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cm ; 2 uses
  %i.cn = load float, ptr %2, align 4, !tbaa !71
  %i.co = load float, ptr %.0.i.i.i.i, align 4, !tbaa !63
  %i.cp = fadd float %i.cn, %i.co
  store float %i.cp, ptr %.0.i.i.i.i, align 4, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cr = zext nneg i32 %i.cd to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = lshr exact i32 %i.bz, 6
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !61
  %i.cx = or i64 %i.cw, %i.cs
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !61
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform5SumOpIfEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform5SumOpIfEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform5SumOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !59
  %i.c = load i32, ptr %i.a, align 8, !tbaa !59
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59   ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59   ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !59
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i = load double, ptr %i.ba, align 8, !tbaa !65
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index73 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next74.3, %vector.body72 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index73 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x double> %broadcast.splat71, ptr %i.bb, align 8, !tbaa !84
  store <2 x double> %broadcast.splat71, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index73 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x double> %broadcast.splat71, ptr %i.be, align 8, !tbaa !84
  store <2 x double> %broadcast.splat71, ptr %i.bf, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index73 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x double> %broadcast.splat71, ptr %i.bh, align 8, !tbaa !84
  store <2 x double> %broadcast.splat71, ptr %i.bi, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index73 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x double> %broadcast.splat71, ptr %i.bk, align 8, !tbaa !84
  store <2 x double> %broadcast.splat71, ptr %i.bl, align 8, !tbaa !84
  %index.next74.3 = add nuw nsw i64 %index73, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next74.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body72, !llvm.loop !421

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body72
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.j, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.k, %bb.i
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.k ], [ %.014.i.i.i.i23, %bb.i ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !25

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.ca = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i28, %bb.l ], [ %.19.i.i.i.i28, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !192 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !57
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !65 ; 2 uses
  %i.cu = load double, ptr %2, align 8, !tbaa !73
  %i.cv = fadd double %i.ct, %i.cu
  %i.cw = fcmp une double %i.ct, %i.cv
  br i1 %i.cw, label %.thread, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5SumOpIdEEEEvRKNS0_4math5CoordERKT_.exit

.thread:                                          ; preds = %bb.p, %bb.q
  %i.cx = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 9 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cz = load ptr, ptr %i.cn, align 8, !tbaa !192
  %i.da = icmp eq ptr %i.cz, null
  %i.db = load i8, ptr %i.cp, align 8, !range !57
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = select i1 %i.da, i1 %i.dc, i1 false
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cx, i8 0, i64 270336, i1 false)
  %i.df = load i32, ptr %i.j, align 4, !tbaa !59
  %i.dg = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.dh = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.df, i64 2
  %i.di = shufflevector <2 x i32> %i.dg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> %i.dh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dk = and <4 x i32> %i.dj, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dk, ptr %i.de, align 8, !tbaa !59
  br i1 %i.dd, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dl, i8 -1, i64 4096, i1 false), !tbaa !61
  br label %vector.ph

vector.ph:                                        ; preds = %.thread, %bb.r
  %.pre.i32 = load double, ptr %i.cy, align 8, !tbaa !65
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i32, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dn, align 8, !tbaa !84
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dq, align 8, !tbaa !84
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  store <2 x double> %broadcast.splat, ptr %i.ds, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dt, align 8, !tbaa !84
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dv, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dw, align 8, !tbaa !84
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dx = icmp eq i64 %index.next.3, 32768
  br i1 %i.dx, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, label %vector.body, !llvm.loop !422

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cx)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.1.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cx, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 5 uses
  %i.dy = load i32, ptr %1, align 4, !tbaa !59
  %i.dz = shl i32 %i.dy, 3
  %i.ea = and i32 %i.dz, 31744
  %i.eb = load i32, ptr %i.e, align 4, !tbaa !59
  %i.ec = lshr i32 %i.eb, 2
  %i.ed = and i32 %i.ec, 992
  %i.ee = or disjoint i32 %i.ed, %i.ea            ; 2 uses
  %i.ef = load i32, ptr %i.j, align 4, !tbaa !59
  %i.eg = lshr i32 %i.ef, 7
  %i.eh = and i32 %i.eg, 31
  %i.ei = or disjoint i32 %i.ee, %i.eh            ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1.ph, i64 262144
  %i.ek = lshr i32 %i.ee, 6
  %i.el = zext nneg i32 %i.ek to i64              ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.el ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !61
  %i.eo = and i32 %i.ei, 63
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep                    ; 4 uses
  %i.er = and i64 %i.eq, %i.en
  %.not.i = icmp eq i64 %i.er, 0
  br i1 %.not.i, label %bb.s, label %..critedge23_crit_edge.i

..critedge23_crit_edge.i:                         ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.phi.trans.insert.i = zext nneg i32 %i.ei to i64
  %.phi.trans.insert27.i = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.phi.trans.insert.i
  %.pre.i37 = load ptr, ptr %.phi.trans.insert27.i, align 8, !tbaa !84
  br label %.critedge23.i

bb.s:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.1.ph, i64 266240
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.el ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !61
  %i.ev = and i64 %i.eu, %i.eq
  %.not26.i = icmp eq i64 %i.ev, 0                ; 2 uses
  %.pre28.i = zext nneg i32 %i.ei to i64          ; 2 uses
  br i1 %.not26.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre28.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !65 ; 2 uses
  %i.ey = load double, ptr %2, align 8, !tbaa !73
  %i.ez = fadd double %i.ex, %i.ey
  %i.fa = fcmp oeq double %i.ex, %i.ez
  br i1 %i.fa, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5SumOpIdEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.s
  %i.fb = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #24 ; 9 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre28.i ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.fb, i8 0, i64 33792, i1 false)
  %i.fe = load i32, ptr %i.j, align 4, !tbaa !59
  %i.ff = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.fg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.fe, i64 2
  %i.fh = shufflevector <2 x i32> %i.ff, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fi = shufflevector <4 x i32> %i.fh, <4 x i32> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fj = and <4 x i32> %i.fi, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.fj, ptr %i.fd, align 8, !tbaa !59
  br i1 %.not26.i, label %vector.ph76, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 33280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.fk, i8 -1, i64 512, i1 false), !tbaa !61
  br label %vector.ph76

vector.ph76:                                      ; preds = %.thread.i, %bb.u
  %.pre.i.i = load double, ptr %i.fc, align 8, !tbaa !65
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %.pre.i.i, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph76
  %index80 = phi i64 [ 0, %vector.ph76 ], [ %index.next81.3, %vector.body79 ] ; 5 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index80 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x double> %broadcast.splat78, ptr %i.fl, align 8, !tbaa !84
  store <2 x double> %broadcast.splat78, ptr %i.fm, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index80 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store <2 x double> %broadcast.splat78, ptr %i.fo, align 8, !tbaa !84
  store <2 x double> %broadcast.splat78, ptr %i.fp, align 8, !tbaa !84
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index80 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  store <2 x double> %broadcast.splat78, ptr %i.fr, align 8, !tbaa !84
  store <2 x double> %broadcast.splat78, ptr %i.fs, align 8, !tbaa !84
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index80 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 112
  store <2 x double> %broadcast.splat78, ptr %i.fu, align 8, !tbaa !84
  store <2 x double> %broadcast.splat78, ptr %i.fv, align 8, !tbaa !84
  %index.next81.3 = add nuw nsw i64 %index80, 16  ; 2 uses
  %i.fw = icmp eq i64 %index.next81.3, 4096
  br i1 %i.fw, label %.critedge.i38, label %vector.body79, !llvm.loop !423

.critedge.i38:                                    ; preds = %vector.body79
  %i.fx = load i64, ptr %i.em, align 8, !tbaa !61
  %i.fy = or i64 %i.fx, %i.eq
  store i64 %i.fy, ptr %i.em, align 8, !tbaa !61
  %i.fz = xor i64 %i.eq, -1
  %i.ga = load i64, ptr %i.et, align 8, !tbaa !61
  %i.gb = and i64 %i.ga, %i.fz
  store i64 %i.gb, ptr %i.et, align 8, !tbaa !61
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !84
  br label %.critedge23.i

.critedge23.i:                                    ; preds = %.critedge.i38, %..critedge23_crit_edge.i
  %i.gc = phi ptr [ %.pre.i37, %..critedge23_crit_edge.i ], [ %i.fb, %.critedge.i38 ]
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11modifyValueINS0_5tools8valxform5SumOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.gc, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5SumOpIdEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform5SumOpIdEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %.critedge23.i, %bb.t, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11modifyValueINS0_5tools8valxform5SumOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !59     ; 2 uses
  %i.b = shl i32 %i.a, 5
  %i.c = and i32 %i.b, 3840
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.f = shl i32 %i.e, 1
  %i.g = and i32 %i.f, 240
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 2 uses
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 15
  %i.m = or disjoint i32 %i.h, %i.l               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 4 uses
  %i.v = and i64 %i.u, %i.r
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = zext nneg i32 %i.m to i64
  %.phi.trans.insert28 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert28, align 8, !tbaa !84
  br label %.critedge23

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 33280
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = and i64 %i.y, %i.u
  %i.aa = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ab = zext nneg i32 %i.m to i64               ; 2 uses
  br i1 %i.aa, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %i.ae = load double, ptr %2, align 8, !tbaa !73
  %i.af = fadd double %i.ad, %i.ae
  %i.ag = fcmp oeq double %i.ad, %i.af
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE11modifyValueINS0_5tools8valxform5SumOpIdEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.ah = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 19 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.aj = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.thread
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !84
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i8 0, ptr %i.ak, align 4, !tbaa !120
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store atomic i32 0, ptr %i.al seq_cst, align 8
  %i.am = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ah)
          to label %.noexc24 unwind label %bb.d   ; 0 uses

.noexc24:                                         ; preds = %.noexc
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !84 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.critedge, label %vector.ph

vector.ph:                                        ; preds = %.noexc24
  %.pre.i.i.i = load double, ptr %i.ai, align 8, !tbaa !65
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ao = shl nuw nsw i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !65
  %index.next = shl i64 %index, 3
  %i.aq = getelementptr i8, ptr %i.an, i64 %index.next ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.aq, i64 32
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  store <2 x double> %broadcast.splat, ptr %next.gep.1, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !65
  %index.next.1 = shl i64 %index, 3
  %i.as = getelementptr i8, ptr %i.an, i64 %index.next.1 ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %i.as, i64 64
  %i.at = getelementptr i8, ptr %i.as, i64 80
  store <2 x double> %broadcast.splat, ptr %next.gep.2, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.at, align 8, !tbaa !65
  %index.next.2 = shl i64 %index, 3
  %i.au = getelementptr i8, ptr %i.an, i64 %index.next.2 ; 2 uses
  %next.gep.3 = getelementptr i8, ptr %i.au, i64 96
  %i.av = getelementptr i8, ptr %i.au, i64 112
  store <2 x double> %broadcast.splat, ptr %next.gep.3, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.av, align 8, !tbaa !65
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.aw = icmp eq i64 %index.next.3, 512
  br i1 %i.aw, label %.critedge, label %vector.body, !llvm.loop !424

.critedge:                                        ; preds = %vector.body, %.noexc24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ay = sext i1 %i.aa to i64                    ; 8 uses
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 %i.ay, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %i.ay, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i64 %i.ay, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store i64 %i.ay, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store i64 %i.ay, ptr %i.bf, align 8, !tbaa !61
  %i.bg = load i32, ptr %1, align 4, !tbaa !59
  %i.bh = and i32 %i.bg, -8
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !59
  %i.bj = and i32 %i.bi, -8
  %i.bk = load i32, ptr %i.i, align 4, !tbaa !59
  %i.bl = and i32 %i.bk, -8
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  store i32 0, ptr %i.bn, align 4, !tbaa !195
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !61
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE11modifyValueINS0_5tools8valxform6MultOpIiEEEEvRKNS0_4math5CoordERKT_:bb.a
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  store i32 0, ptr %i.bn, align 4, !tbaa !129
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bp = or i64 %i.bo, %i.u
  store i64 %i.bp, ptr %i.q, align 8, !tbaa !61
  %i.bq = xor i64 %i.u, -1
  %i.br = load i64, ptr %i.x, align 8, !tbaa !61
  %i.bs = and i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.x, align 8, !tbaa !61
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !84
  %.pre29 = load i32, ptr %1, align 4, !tbaa !59
  %.pre30 = load i32, ptr %i.d, align 4, !tbaa !59
  %.pre31 = load i32, ptr %i.i, align 4, !tbaa !59
  br label %.critedge23

bb.d:                                             ; preds = %.noexc, %.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 96) #25
  resume { ptr, i32 } %i.bt

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bu = phi i32 [ %i.j, %..critedge23_crit_edge ], [ %.pre31, %.critedge ]
  %i.bv = phi i32 [ %i.e, %..critedge23_crit_edge ], [ %.pre30, %.critedge ]
  %i.bw = phi i32 [ %i.a, %..critedge23_crit_edge ], [ %.pre29, %.critedge ]
  %i.bx = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.ah, %.critedge ] ; 6 uses
  %i.by = shl i32 %i.bw, 6
  %i.bz = and i32 %i.by, 448                      ; 2 uses
  %i.ca = shl i32 %i.bv, 3
  %i.cb = and i32 %i.ca, 56
  %i.cc = and i32 %i.bu, 7
  %i.cd = or disjoint i32 %i.cc, %i.cb            ; 2 uses
  %i.ce = or disjoint i32 %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cg = load atomic i32, ptr %i.cf seq_cst, align 4
  %.not.i.i.i25 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i25, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.critedge23
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bx)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i: ; preds = %bb.e, %.critedge23
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !84
  %.not.i4.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i4.i.i, label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform6MultOpIiEEEEvRKNS0_4math5CoordERKT_.exit, label %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i
  %i.ci = load atomic i32, ptr %i.cf seq_cst, align 8
  %.not.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform6MultOpIiEEEEvRKNS0_4math5CoordERKT_.exit

bb.f:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i
  %i.cj = load atomic i32, ptr %i.cf seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bx)
  br label %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i

_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  %i.cl = zext nneg i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIiLj3EE2atEjE5sZero, ptr %i.cm ; 2 uses
  %i.cn = load i32, ptr %2, align 4, !tbaa !75
  %i.co = load i32, ptr %.0.i.i.i.i, align 4, !tbaa !59
  %i.cp = mul nsw i32 %i.co, %i.cn
  store i32 %i.cp, ptr %.0.i.i.i.i, align 4, !tbaa !59
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cr = zext nneg i32 %i.cd to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = lshr exact i32 %i.bz, 6
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !61
  %i.cx = or i64 %i.cw, %i.cs
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !61
  br label %_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform6MultOpIiEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree8LeafNodeIiLj3EE11modifyValueINS0_5tools8valxform6MultOpIiEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIiLj3EEixEj.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE5emptyEv.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIiLj3EE10loadValuesEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform6MultOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !59
  %i.c = load i32, ptr %i.a, align 8, !tbaa !59
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59   ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59   ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !59
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i = load i64, ptr %i.ba, align 8, !tbaa !61
  %broadcast.splatinsert71 = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat72 = shufflevector <2 x i64> %broadcast.splatinsert71, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index74 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next75.3, %vector.body73 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %broadcast.splat72, ptr %i.bb, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat72, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x i64> %broadcast.splat72, ptr %i.be, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat72, ptr %i.bf, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x i64> %broadcast.splat72, ptr %i.bh, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat72, ptr %i.bi, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index74 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x i64> %broadcast.splat72, ptr %i.bk, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat72, ptr %i.bl, align 8, !tbaa !84
  %index.next75.3 = add nuw nsw i64 %index74, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next75.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, label %vector.body73, !llvm.loop !429

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body73
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.j, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.k, %bb.i
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.k ], [ %.014.i.i.i.i23, %bb.i ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !17

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.ca = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i28, %bb.l ], [ %.19.i.i.i.i28, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !173 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !57
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !61 ; 2 uses
  %i.cu = load i64, ptr %2, align 8, !tbaa !77
  %i.cv = mul nsw i64 %i.cu, %i.ct
  %.not54 = icmp eq i64 %i.ct, %i.cv
  br i1 %.not54, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform6MultOpIlEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread

.thread:                                          ; preds = %bb.p, %bb.q
  %i.cw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !173
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = load i8, ptr %i.cp, align 8, !range !57
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = select i1 %i.cz, i1 %i.db, i1 false
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cw, i8 0, i64 270336, i1 false)
  %i.de = load i32, ptr %i.j, align 4, !tbaa !59
  %i.df = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.dg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.de, i64 2
  %i.dh = shufflevector <2 x i32> %i.df, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dj = and <4 x i32> %i.di, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dj, ptr %i.dd, align 8, !tbaa !59
  br i1 %i.dc, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dk, i8 -1, i64 4096, i1 false), !tbaa !61
  br label %vector.ph

vector.ph:                                        ; preds = %.thread, %bb.r
  %.pre.i32 = load i64, ptr %i.cx, align 8, !tbaa !61
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i32, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.dl, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dm, align 8, !tbaa !84
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.do, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dp, align 8, !tbaa !84
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.dr, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.ds, align 8, !tbaa !84
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.du, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.dv, align 8, !tbaa !84
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dw = icmp eq i64 %index.next.3, 32768
  br i1 %i.dw, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36, label %vector.body, !llvm.loop !430

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cw)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.1.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKlb.exit36 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 5 uses
  %i.dx = load i32, ptr %1, align 4, !tbaa !59
  %i.dy = shl i32 %i.dx, 3
  %i.dz = and i32 %i.dy, 31744
  %i.ea = load i32, ptr %i.e, align 4, !tbaa !59
  %i.eb = lshr i32 %i.ea, 2
  %i.ec = and i32 %i.eb, 992
  %i.ed = or disjoint i32 %i.ec, %i.dz            ; 2 uses
  %i.ee = load i32, ptr %i.j, align 4, !tbaa !59
  %i.ef = lshr i32 %i.ee, 7
  %i.eg = and i32 %i.ef, 31
  %i.eh = or disjoint i32 %i.ed, %i.eg            ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.ph, i64 262144
  %i.ej = lshr i32 %i.ed, 6
  %i.ek = zext nneg i32 %i.ej to i64              ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ek ; 3 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !61
  %i.en = and i32 %i.eh, 63
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo                    ; 4 uses
  %i.eq = and i64 %i.ep, %i.em
  %.not.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i, label %bb.s, label %..critedge23_crit_edge.i

..critedge23_crit_edge.i:                         ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.phi.trans.insert.i = zext nneg i32 %i.eh to i64
  %.phi.trans.insert27.i = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.phi.trans.insert.i
  %.pre.i37 = load ptr, ptr %.phi.trans.insert27.i, align 8, !tbaa !84
  br label %.critedge23.i

bb.s:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %.1.ph, i64 266240
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ek ; 3 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !61
  %i.eu = and i64 %i.et, %i.ep
  %.not26.i = icmp eq i64 %i.eu, 0                ; 2 uses
  %.pre28.i = zext nneg i32 %i.eh to i64          ; 2 uses
  br i1 %.not26.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre28.i
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !61 ; 2 uses
  %i.ex = load i64, ptr %2, align 8, !tbaa !77
  %i.ey = mul nsw i64 %i.ex, %i.ew
  %i.ez = icmp eq i64 %i.ew, %i.ey
  br i1 %i.ez, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform6MultOpIlEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.s
  %i.fa = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #24 ; 9 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre28.i ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.fa, i8 0, i64 33792, i1 false)
  %i.fd = load i32, ptr %i.j, align 4, !tbaa !59
  %i.fe = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.ff = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.fd, i64 2
  %i.fg = shufflevector <2 x i32> %i.fe, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fh = shufflevector <4 x i32> %i.fg, <4 x i32> %i.ff, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fi = and <4 x i32> %i.fh, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.fi, ptr %i.fc, align 8, !tbaa !59
  br i1 %.not26.i, label %vector.ph77, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 33280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.fj, i8 -1, i64 512, i1 false), !tbaa !61
  br label %vector.ph77

vector.ph77:                                      ; preds = %.thread.i, %bb.u
  %.pre.i.i = load i64, ptr %i.fb, align 8, !tbaa !61
  %broadcast.splatinsert78 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 0
  %broadcast.splat79 = shufflevector <2 x i64> %broadcast.splatinsert78, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph77
  %index81 = phi i64 [ 0, %vector.ph77 ], [ %index.next82.3, %vector.body80 ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index81 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x i64> %broadcast.splat79, ptr %i.fk, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat79, ptr %i.fl, align 8, !tbaa !84
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index81 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store <2 x i64> %broadcast.splat79, ptr %i.fn, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat79, ptr %i.fo, align 8, !tbaa !84
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index81 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 80
  store <2 x i64> %broadcast.splat79, ptr %i.fq, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat79, ptr %i.fr, align 8, !tbaa !84
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index81 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 96
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 112
  store <2 x i64> %broadcast.splat79, ptr %i.ft, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat79, ptr %i.fu, align 8, !tbaa !84
  %index.next82.3 = add nuw nsw i64 %index81, 16  ; 2 uses
  %i.fv = icmp eq i64 %index.next82.3, 4096
  br i1 %i.fv, label %.critedge.i38, label %vector.body80, !llvm.loop !431

.critedge.i38:                                    ; preds = %vector.body80
  %i.fw = load i64, ptr %i.el, align 8, !tbaa !61
  %i.fx = or i64 %i.fw, %i.ep
  store i64 %i.fx, ptr %i.el, align 8, !tbaa !61
  %i.fy = xor i64 %i.ep, -1
  %i.fz = load i64, ptr %i.es, align 8, !tbaa !61
  %i.ga = and i64 %i.fz, %i.fy
  store i64 %i.ga, ptr %i.es, align 8, !tbaa !61
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !84
  br label %.critedge23.i

.critedge23.i:                                    ; preds = %.critedge.i38, %..critedge23_crit_edge.i
  %i.gb = phi ptr [ %.pre.i37, %..critedge23_crit_edge.i ], [ %i.fa, %.critedge.i38 ]
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE11modifyValueINS0_5tools8valxform6MultOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.gb, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform6MultOpIlEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform6MultOpIlEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %.critedge23.i, %bb.t, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE11modifyValueINS0_5tools8valxform6MultOpIlEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !59     ; 2 uses
  %i.b = shl i32 %i.a, 5
  %i.c = and i32 %i.b, 3840
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.f = shl i32 %i.e, 1
  %i.g = and i32 %i.f, 240
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 2 uses
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 15
  %i.m = or disjoint i32 %i.h, %i.l               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 4 uses
  %i.v = and i64 %i.u, %i.r
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = zext nneg i32 %i.m to i64
  %.phi.trans.insert28 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert28, align 8, !tbaa !84
  br label %.critedge23

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 33280
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = and i64 %i.y, %i.u
  %i.aa = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ab = zext nneg i32 %i.m to i64               ; 2 uses
  br i1 %i.aa, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.ae = load i64, ptr %2, align 8, !tbaa !77
  %i.af = mul nsw i64 %i.ae, %i.ad
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8LeafNodeIlLj3EE11modifyValueINS0_5tools8valxform6MultOpIlEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.ah = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 19 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.aj = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.thread
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !84
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i8 0, ptr %i.ak, align 4, !tbaa !120
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store atomic i32 0, ptr %i.al seq_cst, align 8
  %i.am = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIlLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ah)
          to label %.noexc24 unwind label %bb.d   ; 0 uses

.noexc24:                                         ; preds = %.noexc
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !84 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.critedge, label %vector.ph

vector.ph:                                        ; preds = %.noexc24
  %.pre.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !61
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ao = shl nuw nsw i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.ap, align 8, !tbaa !61
  %index.next = shl i64 %index, 3
  %i.aq = getelementptr i8, ptr %i.an, i64 %index.next ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.aq, i64 32
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  store <2 x i64> %broadcast.splat, ptr %next.gep.1, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.ar, align 8, !tbaa !61
  %index.next.1 = shl i64 %index, 3
  %i.as = getelementptr i8, ptr %i.an, i64 %index.next.1 ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %i.as, i64 64
  %i.at = getelementptr i8, ptr %i.as, i64 80
  store <2 x i64> %broadcast.splat, ptr %next.gep.2, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.at, align 8, !tbaa !61
  %index.next.2 = shl i64 %index, 3
  %i.au = getelementptr i8, ptr %i.an, i64 %index.next.2 ; 2 uses
  %next.gep.3 = getelementptr i8, ptr %i.au, i64 96
  %i.av = getelementptr i8, ptr %i.au, i64 112
  store <2 x i64> %broadcast.splat, ptr %next.gep.3, align 8, !tbaa !61
  store <2 x i64> %broadcast.splat, ptr %i.av, align 8, !tbaa !61
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.aw = icmp eq i64 %index.next.3, 512
  br i1 %i.aw, label %.critedge, label %vector.body, !llvm.loop !432

.critedge:                                        ; preds = %vector.body, %.noexc24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ay = sext i1 %i.aa to i64                    ; 8 uses
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 %i.ay, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %i.ay, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i64 %i.ay, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store i64 %i.ay, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store i64 %i.ay, ptr %i.bf, align 8, !tbaa !61
  %i.bg = load i32, ptr %1, align 4, !tbaa !59
  %i.bh = and i32 %i.bg, -8
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !59
  %i.bj = and i32 %i.bi, -8
  %i.bk = load i32, ptr %i.i, align 4, !tbaa !59
  %i.bl = and i32 %i.bk, -8
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  store i32 0, ptr %i.bn, align 4, !tbaa !176
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !61
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11modifyValueINS0_5tools8valxform6MultOpIfEEEEvRKNS0_4math5CoordERKT_:bb.a
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  store i32 0, ptr %i.bn, align 4, !tbaa !183
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !61
  %i.bp = or i64 %i.bo, %i.u
  store i64 %i.bp, ptr %i.q, align 8, !tbaa !61
  %i.bq = xor i64 %i.u, -1
  %i.br = load i64, ptr %i.x, align 8, !tbaa !61
  %i.bs = and i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.x, align 8, !tbaa !61
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !84
  %.pre29 = load i32, ptr %1, align 4, !tbaa !59
  %.pre30 = load i32, ptr %i.d, align 4, !tbaa !59
  %.pre31 = load i32, ptr %i.i, align 4, !tbaa !59
  br label %.critedge23

bb.d:                                             ; preds = %.noexc, %.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 96) #25
  resume { ptr, i32 } %i.bt

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bu = phi i32 [ %i.j, %..critedge23_crit_edge ], [ %.pre31, %.critedge ]
  %i.bv = phi i32 [ %i.e, %..critedge23_crit_edge ], [ %.pre30, %.critedge ]
  %i.bw = phi i32 [ %i.a, %..critedge23_crit_edge ], [ %.pre29, %.critedge ]
  %i.bx = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.ah, %.critedge ] ; 6 uses
  %i.by = shl i32 %i.bw, 6
  %i.bz = and i32 %i.by, 448                      ; 2 uses
  %i.ca = shl i32 %i.bv, 3
  %i.cb = and i32 %i.ca, 56
  %i.cc = and i32 %i.bu, 7
  %i.cd = or disjoint i32 %i.cc, %i.cb            ; 2 uses
  %i.ce = or disjoint i32 %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cg = load atomic i32, ptr %i.cf seq_cst, align 4
  %.not.i.i.i25 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i25, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.critedge23
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bx)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i: ; preds = %bb.e, %.critedge23
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !84
  %.not.i4.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i4.i.i, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform6MultOpIfEEEEvRKNS0_4math5CoordERKT_.exit, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i
  %i.ci = load atomic i32, ptr %i.cf seq_cst, align 8
  %.not.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform6MultOpIfEEEEvRKNS0_4math5CoordERKT_.exit

bb.f:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i
  %i.cj = load atomic i32, ptr %i.cf seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bx)
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  %i.cl = zext nneg i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_ZZNK7openvdb5v13_04tree10LeafBufferIfLj3EE2atEjE5sZero, ptr %i.cm ; 2 uses
  %i.cn = load float, ptr %2, align 4, !tbaa !79
  %i.co = load float, ptr %.0.i.i.i.i, align 4, !tbaa !63
  %i.cp = fmul float %i.cn, %i.co
  store float %i.cp, ptr %.0.i.i.i.i, align 4, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cr = zext nneg i32 %i.cd to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = lshr exact i32 %i.bz, 6
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !61
  %i.cx = or i64 %i.cw, %i.cs
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !61
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform6MultOpIfEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11modifyValueINS0_5tools8valxform6MultOpIfEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEixEj.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE5emptyEv.exit.i.i, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11modifyValueINS0_5tools8valxform6MultOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !59
  %i.c = load i32, ptr %i.a, align 8, !tbaa !59
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59   ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59   ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !59
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i = load double, ptr %i.ba, align 8, !tbaa !65
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index73 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next74.3, %vector.body72 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index73 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x double> %broadcast.splat71, ptr %i.bb, align 8, !tbaa !84
  store <2 x double> %broadcast.splat71, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index73 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x double> %broadcast.splat71, ptr %i.be, align 8, !tbaa !84
  store <2 x double> %broadcast.splat71, ptr %i.bf, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index73 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x double> %broadcast.splat71, ptr %i.bh, align 8, !tbaa !84
  store <2 x double> %broadcast.splat71, ptr %i.bi, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index73 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x double> %broadcast.splat71, ptr %i.bk, align 8, !tbaa !84
  store <2 x double> %broadcast.splat71, ptr %i.bl, align 8, !tbaa !84
  %index.next74.3 = add nuw nsw i64 %index73, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next74.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body72, !llvm.loop !434

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body72
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !90  ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.j, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.k, %bb.i
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.k ], [ %.014.i.i.i.i23, %bb.i ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !25

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.ca = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i28, %bb.l ], [ %.19.i.i.i.i28, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !192 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !57
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !65 ; 2 uses
  %i.cu = load double, ptr %2, align 8, !tbaa !81
  %i.cv = fmul double %i.ct, %i.cu
  %i.cw = fcmp une double %i.ct, %i.cv
  br i1 %i.cw, label %.thread, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform6MultOpIdEEEEvRKNS0_4math5CoordERKT_.exit

.thread:                                          ; preds = %bb.p, %bb.q
  %i.cx = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #24 ; 9 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cz = load ptr, ptr %i.cn, align 8, !tbaa !192
  %i.da = icmp eq ptr %i.cz, null
  %i.db = load i8, ptr %i.cp, align 8, !range !57
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = select i1 %i.da, i1 %i.dc, i1 false
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cx, i8 0, i64 270336, i1 false)
  %i.df = load i32, ptr %i.j, align 4, !tbaa !59
  %i.dg = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.dh = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.df, i64 2
  %i.di = shufflevector <2 x i32> %i.dg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> %i.dh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dk = and <4 x i32> %i.dj, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dk, ptr %i.de, align 8, !tbaa !59
  br i1 %i.dd, label %bb.r, label %vector.ph

bb.r:                                             ; preds = %.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dl, i8 -1, i64 4096, i1 false), !tbaa !61
  br label %vector.ph

vector.ph:                                        ; preds = %.thread, %bb.r
  %.pre.i32 = load double, ptr %i.cy, align 8, !tbaa !65
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i32, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dn, align 8, !tbaa !84
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dq, align 8, !tbaa !84
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  store <2 x double> %broadcast.splat, ptr %i.ds, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dt, align 8, !tbaa !84
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dv, align 8, !tbaa !84
  store <2 x double> %broadcast.splat, ptr %i.dw, align 8, !tbaa !84
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dx = icmp eq i64 %index.next.3, 32768
  br i1 %i.dx, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, label %vector.body, !llvm.loop !435

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cx)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.1.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cx, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 5 uses
  %i.dy = load i32, ptr %1, align 4, !tbaa !59
  %i.dz = shl i32 %i.dy, 3
  %i.ea = and i32 %i.dz, 31744
  %i.eb = load i32, ptr %i.e, align 4, !tbaa !59
  %i.ec = lshr i32 %i.eb, 2
  %i.ed = and i32 %i.ec, 992
  %i.ee = or disjoint i32 %i.ed, %i.ea            ; 2 uses
  %i.ef = load i32, ptr %i.j, align 4, !tbaa !59
  %i.eg = lshr i32 %i.ef, 7
  %i.eh = and i32 %i.eg, 31
  %i.ei = or disjoint i32 %i.ee, %i.eh            ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1.ph, i64 262144
  %i.ek = lshr i32 %i.ee, 6
  %i.el = zext nneg i32 %i.ek to i64              ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.el ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !61
  %i.eo = and i32 %i.ei, 63
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep                    ; 4 uses
  %i.er = and i64 %i.eq, %i.en
  %.not.i = icmp eq i64 %i.er, 0
  br i1 %.not.i, label %bb.s, label %..critedge23_crit_edge.i

..critedge23_crit_edge.i:                         ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.phi.trans.insert.i = zext nneg i32 %i.ei to i64
  %.phi.trans.insert27.i = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.phi.trans.insert.i
  %.pre.i37 = load ptr, ptr %.phi.trans.insert27.i, align 8, !tbaa !84
  br label %.critedge23.i

bb.s:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.1.ph, i64 266240
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.el ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !61
  %i.ev = and i64 %i.eu, %i.eq
  %.not26.i = icmp eq i64 %i.ev, 0                ; 2 uses
  %.pre28.i = zext nneg i32 %i.ei to i64          ; 2 uses
  br i1 %.not26.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre28.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !65 ; 2 uses
  %i.ey = load double, ptr %2, align 8, !tbaa !81
  %i.ez = fmul double %i.ex, %i.ey
  %i.fa = fcmp oeq double %i.ex, %i.ez
  br i1 %i.fa, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform6MultOpIdEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.s
  %i.fb = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #24 ; 9 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.1.ph, i64 %.pre28.i ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.fb, i8 0, i64 33792, i1 false)
  %i.fe = load i32, ptr %i.j, align 4, !tbaa !59
  %i.ff = load <2 x i32>, ptr %1, align 4, !tbaa !59
  %i.fg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.fe, i64 2
  %i.fh = shufflevector <2 x i32> %i.ff, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fi = shufflevector <4 x i32> %i.fh, <4 x i32> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fj = and <4 x i32> %i.fi, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.fj, ptr %i.fd, align 8, !tbaa !59
  br i1 %.not26.i, label %vector.ph76, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 33280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.fk, i8 -1, i64 512, i1 false), !tbaa !61
  br label %vector.ph76

vector.ph76:                                      ; preds = %.thread.i, %bb.u
  %.pre.i.i = load double, ptr %i.fc, align 8, !tbaa !65
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %.pre.i.i, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph76
  %index80 = phi i64 [ 0, %vector.ph76 ], [ %index.next81.3, %vector.body79 ] ; 5 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index80 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x double> %broadcast.splat78, ptr %i.fl, align 8, !tbaa !84
  store <2 x double> %broadcast.splat78, ptr %i.fm, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index80 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store <2 x double> %broadcast.splat78, ptr %i.fo, align 8, !tbaa !84
  store <2 x double> %broadcast.splat78, ptr %i.fp, align 8, !tbaa !84
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index80 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  store <2 x double> %broadcast.splat78, ptr %i.fr, align 8, !tbaa !84
  store <2 x double> %broadcast.splat78, ptr %i.fs, align 8, !tbaa !84
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index80 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 112
  store <2 x double> %broadcast.splat78, ptr %i.fu, align 8, !tbaa !84
  store <2 x double> %broadcast.splat78, ptr %i.fv, align 8, !tbaa !84
  %index.next81.3 = add nuw nsw i64 %index80, 16  ; 2 uses
  %i.fw = icmp eq i64 %index.next81.3, 4096
  br i1 %i.fw, label %.critedge.i38, label %vector.body79, !llvm.loop !436

.critedge.i38:                                    ; preds = %vector.body79
  %i.fx = load i64, ptr %i.em, align 8, !tbaa !61
  %i.fy = or i64 %i.fx, %i.eq
  store i64 %i.fy, ptr %i.em, align 8, !tbaa !61
  %i.fz = xor i64 %i.eq, -1
  %i.ga = load i64, ptr %i.et, align 8, !tbaa !61
  %i.gb = and i64 %i.ga, %i.fz
  store i64 %i.gb, ptr %i.et, align 8, !tbaa !61
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !84
  br label %.critedge23.i

.critedge23.i:                                    ; preds = %.critedge.i38, %..critedge23_crit_edge.i
  %i.gc = phi ptr [ %.pre.i37, %..critedge23_crit_edge.i ], [ %i.fb, %.critedge.i38 ]
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11modifyValueINS0_5tools8valxform6MultOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.gc, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform6MultOpIdEEEEvRKNS0_4math5CoordERKT_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11modifyValueINS0_5tools8valxform6MultOpIdEEEEvRKNS0_4math5CoordERKT_.exit: ; preds = %.critedge23.i, %bb.t, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11modifyValueINS0_5tools8valxform6MultOpIdEEEEvRKNS0_4math5CoordERKT_(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !59     ; 2 uses
  %i.b = shl i32 %i.a, 5
  %i.c = and i32 %i.b, 3840
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.f = shl i32 %i.e, 1
  %i.g = and i32 %i.f, 240
  %i.h = or disjoint i32 %i.g, %i.c               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 2 uses
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 15
  %i.m = or disjoint i32 %i.h, %i.l               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.o = lshr i32 %i.h, 6
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 4 uses
  %i.v = and i64 %i.u, %i.r
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %..critedge23_crit_edge

..critedge23_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = zext nneg i32 %i.m to i64
  %.phi.trans.insert28 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert28, align 8, !tbaa !84
  br label %.critedge23

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 33280
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = and i64 %i.y, %i.u
  %i.aa = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ab = zext nneg i32 %i.m to i64               ; 2 uses
  br i1 %i.aa, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %i.ae = load double, ptr %2, align 8, !tbaa !81
  %i.af = fmul double %i.ad, %i.ae
  %i.ag = fcmp oeq double %i.ad, %i.af
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE11modifyValueINS0_5tools8valxform6MultOpIdEEEEvRKNS0_4math5CoordERKT_.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.ah = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 19 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.aj = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.thread
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !84
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i8 0, ptr %i.ak, align 4, !tbaa !120
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store atomic i32 0, ptr %i.al seq_cst, align 8
  %i.am = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ah)
          to label %.noexc24 unwind label %bb.d   ; 0 uses

.noexc24:                                         ; preds = %.noexc
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !84 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.critedge, label %vector.ph

vector.ph:                                        ; preds = %.noexc24
  %.pre.i.i.i = load double, ptr %i.ai, align 8, !tbaa !65
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ao = shl nuw nsw i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !65
  %index.next = shl i64 %index, 3
  %i.aq = getelementptr i8, ptr %i.an, i64 %index.next ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.aq, i64 32
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  store <2 x double> %broadcast.splat, ptr %next.gep.1, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !65
  %index.next.1 = shl i64 %index, 3
  %i.as = getelementptr i8, ptr %i.an, i64 %index.next.1 ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %i.as, i64 64
  %i.at = getelementptr i8, ptr %i.as, i64 80
  store <2 x double> %broadcast.splat, ptr %next.gep.2, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.at, align 8, !tbaa !65
  %index.next.2 = shl i64 %index, 3
  %i.au = getelementptr i8, ptr %i.an, i64 %index.next.2 ; 2 uses
  %next.gep.3 = getelementptr i8, ptr %i.au, i64 96
  %i.av = getelementptr i8, ptr %i.au, i64 112
  store <2 x double> %broadcast.splat, ptr %next.gep.3, align 8, !tbaa !65
  store <2 x double> %broadcast.splat, ptr %i.av, align 8, !tbaa !65
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.aw = icmp eq i64 %index.next.3, 512
  br i1 %i.aw, label %.critedge, label %vector.body, !llvm.loop !437

.critedge:                                        ; preds = %vector.body, %.noexc24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ay = sext i1 %i.aa to i64                    ; 8 uses
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 %i.ay, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %i.ay, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i64 %i.ay, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store i64 %i.ay, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store i64 %i.ay, ptr %i.bf, align 8, !tbaa !61
  %i.bg = load i32, ptr %1, align 4, !tbaa !59
  %i.bh = and i32 %i.bg, -8
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !59
  %i.bj = and i32 %i.bi, -8
  %i.bk = load i32, ptr %i.i, align 4, !tbaa !59
  %i.bl = and i32 %i.bk, -8
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  store i32 0, ptr %i.bn, align 4, !tbaa !195
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !61
end_hunk_7
