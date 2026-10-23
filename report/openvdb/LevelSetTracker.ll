Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetTracker?download=true
inline.NumInlined: 22995
inline.NumDeleted: 7674
loop-unroll.NumCompletelyUnrolled: 180
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 478
begin_hunk_0_@_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE18getBackgroundValueEv:bb.a

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !244    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !190
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.d, label %bb.d, label %bb.n

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.j = load ptr, ptr %1, align 8, !tbaa !171
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1232) %1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7openvdb5v13_08Metadata14createMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.103") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.l

_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e
  %i.m = load <2 x ptr>, ptr %3, align 16, !tbaa !462
  %i.n = load ptr, ptr %3, align 16, !tbaa !638   ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.m, ptr %0, align 8, !tbaa !462
  %.pre = load ptr, ptr %4, align 8, !tbaa !244   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %.pre, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !190
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !171
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !241, !alias.scope !2469
  store i32 1819242338, ptr %i.v, align 8, !alias.scope !2469
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4, ptr %i.w, align 8, !tbaa !243, !alias.scope !2469
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 0, ptr %i.x, align 4, !tbaa !190, !alias.scope !2469
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !243  ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4
  %.pre32 = load ptr, ptr %5, align 8, !tbaa !244 ; 3 uses
  br i1 %i.aa, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %.pre32, align 1
  %i.ac = load i32, ptr %i.v, align 1
  %i.ad = icmp ne i32 %i.ab, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.f, %bb.g
  %i.ag = phi i1 [ false, %bb.f ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %.pre32, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.aj = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !190
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.pre32, i64 noundef %i.al) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.ag, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !262, !range !449, !noundef !447
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %i.an, ptr %i.ao, align 8, !tbaa !262
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.j:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !244   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.j
  %i.au = load i64, ptr %i.as, align 8, !tbaa !190
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.aq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.o

bb.k:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.l:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !244   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.l
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !190
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.k
  %.pn9 = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.ax, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  ret void

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn11.pn = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %.pn9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE19evalLeafBoundingBoxERNS0_4math9CoordBBoxE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  store i64 9223372034707292159, ptr %1, align 4
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 2147483647, ptr %.sroa.47.0..sroa_idx.i, align 4, !tbaa !190
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store i64 -9223372034707292160, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !779
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not5.i.i.i, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !449
  br label %bb.b

bb.b:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.q, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i ] ; 2 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.r, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !642
  %2 = icmp ne ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 57
  %i.l = load i8, ptr %i.k, align 1, !range !449
  %3 = trunc nuw i8 %i.l to i1
  %.not3.i.i.i.i = select i1 %2, i1 true, i1 %3
  br i1 %.not3.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.i.i.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.i.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !262, !range !449, !noundef !447
  %i.o = icmp eq i8 %i.n, %i.h
  %i.p = zext i1 %i.o to i64
  %spec.select.i.i.i = add i64 %.07.i.i.i, %i.p
  br label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i: ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.i.i.i, %bb.b
  %i.q = phi i64 [ %.07.i.i.i, %bb.b ], [ %spec.select.i.i.i, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.i.i.i ] ; 2 uses
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.06.i.i.i) #32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.f
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE5emptyEv.exit, label %bb.b, !llvm.loop !56

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE5emptyEv.exit: ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i
  %i.s = icmp eq i64 %i.c, %i.q
  br i1 %i.s, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE5emptyEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.05.012.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.at, %bb.g ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !283  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(270352) %i.w, ptr noundef nonnull align 4 dereferenceable(24) %1, i1 noundef zeroext false)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 57
  %i.y = load i8, ptr %i.x, align 1, !range !449
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.u, align 8, !tbaa !169
  %i.ab = load i32, ptr %1, align 4, !tbaa !169
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ab)
  store i32 %i.ac, ptr %1, align 4, !tbaa !169
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !169
  %i.af = load i32, ptr %i.t, align 4, !tbaa !169
  %i.ag = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.af)
  store i32 %i.ag, ptr %i.t, align 4, !tbaa !169
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 40 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !169
  %i.aj = load i32, ptr %.sroa.47.0..sroa_idx.i, align 4, !tbaa !169
  %i.ak = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.aj)
  store i32 %i.ak, ptr %.sroa.47.0..sroa_idx.i, align 4, !tbaa !169
  %i.al = load i32, ptr %i.ah, align 8, !tbaa !169
  %i.am = add nsw i32 %i.al, 4095
  %i.an = load <2 x i32>, ptr %i.u, align 8, !tbaa !169
  %i.ao = add nsw <2 x i32> %i.an, splat (i32 4095)
  %i.ap = load <2 x i32>, ptr %i.a, align 4, !tbaa !169
  %i.aq = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ap, <2 x i32> %i.ao)
  store <2 x i32> %i.aq, ptr %i.a, align 4, !tbaa !169
  %i.ar = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !169
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.am)
  store i32 %i.as, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !169
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.012.i) #32 ; 2 uses
  %.not10.i = icmp eq ptr %i.at, %i.f
  br i1 %.not10.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit, label %bb.c, !llvm.loop !57

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit: ; preds = %bb.g
  %.pre = load i32, ptr %1, align 4, !tbaa !169
  %.pre5 = load i32, ptr %i.a, align 4, !tbaa !169
  %i.au = icmp sgt i32 %.pre, %.pre5
  br i1 %i.au, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !169
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !169
  %i.az = icmp sgt i32 %i.aw, %i.ay
  br i1 %i.az, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr %.sroa.47.0..sroa_idx.i, align 4, !tbaa !169
  %i.bb = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !169
  %i.bc = icmp sle i32 %i.ba, %i.bb
  br label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit

_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit:   ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE5emptyEv.exit, %bb.a, %bb.i, %bb.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit
  %.0 = phi i1 [ false, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE5emptyEv.exit ], [ false, %bb.h ], [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit ], [ %i.bc, %bb.i ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE11evalLeafDimERNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::CoordBBox", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 9223372034707292159, ptr %2, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 2147483647, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i64 -9223372034707292160, ptr %i.a, align 4
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 -2147483648, ptr %.sroa.2.0..sroa_idx.i, align 4
  %i.b = load ptr, ptr %0, align 8, !tbaa !171
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(24) %2)
  %i.f = load i32, ptr %2, align 8, !tbaa !169    ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !169  ; 2 uses
  %i.h = icmp sgt i32 %i.f, %i.g
  br i1 %i.h, label %_ZNK7openvdb5v13_04math9CoordBBox7extentsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !169  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !169  ; 2 uses
  %i.m = icmp sgt i32 %i.j, %i.l
  br i1 %i.m, label %_ZNK7openvdb5v13_04math9CoordBBox7extentsEv.exit, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i

_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i: ; preds = %bb.b
  %i.n = load i32, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !169 ; 2 uses
  %i.o = load i32, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !169 ; 2 uses
  %i.p = icmp sgt i32 %i.n, %i.o
  br i1 %i.p, label %_ZNK7openvdb5v13_04math9CoordBBox7extentsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i
  %reass.sub = sub i32 %i.g, %i.f
  %i.q = add i32 %reass.sub, 1
  %reass.sub5 = sub i32 %i.l, %i.j
  %i.r = add i32 %reass.sub5, 1
  %reass.sub6 = sub i32 %i.o, %i.n
  %i.s = add i32 %reass.sub6, 1
  %i.t = zext i32 %i.r to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = zext i32 %i.q to i64
  %i.w = or disjoint i64 %i.u, %i.v
  br label %_ZNK7openvdb5v13_04math9CoordBBox7extentsEv.exit

_ZNK7openvdb5v13_04math9CoordBBox7extentsEv.exit: ; preds = %bb.a, %bb.b, %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i, %bb.c
  %.sroa.4.0.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0.i.i = phi i64 [ %i.w, %bb.c ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.3.0.i.i, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sroa.4.0.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE26evalActiveVoxelBoundingBoxERNS0_4math9CoordBBoxE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  store i64 9223372034707292159, ptr %1, align 4
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 2147483647, ptr %.sroa.47.0..sroa_idx.i, align 4, !tbaa !190
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store i64 -9223372034707292160, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  store i32 -2147483648, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !779
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not5.i.i.i, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !449
  br label %bb.b

bb.b:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.q, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i ] ; 2 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.r, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !642
  %2 = icmp ne ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 57
  %i.l = load i8, ptr %i.k, align 1, !range !449
  %3 = trunc nuw i8 %i.l to i1
  %.not3.i.i.i.i = select i1 %2, i1 true, i1 %3
  br i1 %.not3.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.i.i.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.i.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !262, !range !449, !noundef !447
  %i.o = icmp eq i8 %i.n, %i.h
  %i.p = zext i1 %i.o to i64
  %spec.select.i.i.i = add i64 %.07.i.i.i, %i.p
  br label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i: ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.i.i.i, %bb.b
  %i.q = phi i64 [ %.07.i.i.i, %bb.b ], [ %spec.select.i.i.i, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.i.i.i ] ; 2 uses
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.06.i.i.i) #32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.f
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE5emptyEv.exit, label %bb.b, !llvm.loop !56

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE5emptyEv.exit: ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit.thread.i.i.i
  %i.s = icmp eq i64 %i.c, %i.q
  br i1 %i.s, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE5emptyEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.05.012.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.at, %bb.g ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !283  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(270352) %i.w, ptr noundef nonnull align 4 dereferenceable(24) %1, i1 noundef zeroext true)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 57
  %i.y = load i8, ptr %i.x, align 1, !range !449
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.u, align 8, !tbaa !169
  %i.ab = load i32, ptr %1, align 4, !tbaa !169
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ab)
  store i32 %i.ac, ptr %1, align 4, !tbaa !169
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !169
  %i.af = load i32, ptr %i.t, align 4, !tbaa !169
  %i.ag = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.af)
  store i32 %i.ag, ptr %i.t, align 4, !tbaa !169
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 40 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !169
  %i.aj = load i32, ptr %.sroa.47.0..sroa_idx.i, align 4, !tbaa !169
  %i.ak = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.aj)
  store i32 %i.ak, ptr %.sroa.47.0..sroa_idx.i, align 4, !tbaa !169
  %i.al = load i32, ptr %i.ah, align 8, !tbaa !169
  %i.am = add nsw i32 %i.al, 4095
  %i.an = load <2 x i32>, ptr %i.u, align 8, !tbaa !169
  %i.ao = add nsw <2 x i32> %i.an, splat (i32 4095)
  %i.ap = load <2 x i32>, ptr %i.a, align 4, !tbaa !169
  %i.aq = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ap, <2 x i32> %i.ao)
  store <2 x i32> %i.aq, ptr %i.a, align 4, !tbaa !169
  %i.ar = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !169
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.am)
  store i32 %i.as, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !169
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.012.i) #32 ; 2 uses
  %.not10.i = icmp eq ptr %i.at, %i.f
  br i1 %.not10.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit, label %bb.c, !llvm.loop !57

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit: ; preds = %bb.g
  %.pre = load i32, ptr %1, align 4, !tbaa !169
  %.pre5 = load i32, ptr %i.a, align 4, !tbaa !169
  %i.au = icmp sgt i32 %.pre, %.pre5
  br i1 %i.au, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !169
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !169
  %i.az = icmp sgt i32 %i.aw, %i.ay
  br i1 %i.az, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr %.sroa.47.0..sroa_idx.i, align 4, !tbaa !169
  %i.bb = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !169
  %i.bc = icmp sle i32 %i.ba, %i.bb
  br label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit

_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit:   ; preds = %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE5emptyEv.exit, %bb.a, %bb.i, %bb.h, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit
  %.0 = phi i1 [ false, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE5emptyEv.exit ], [ false, %bb.h ], [ false, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb.exit ], [ %i.bc, %bb.i ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE18evalActiveVoxelDimERNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::CoordBBox", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 9223372034707292159, ptr %2, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 2147483647, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i64 -9223372034707292160, ptr %i.a, align 4
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 -2147483648, ptr %.sroa.2.0..sroa_idx.i, align 4
  %i.b = load ptr, ptr %0, align 8, !tbaa !171
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(24) %2)
  %i.f = load i32, ptr %2, align 8, !tbaa !169    ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !169  ; 2 uses
  %i.h = icmp sgt i32 %i.f, %i.g
  br i1 %i.h, label %_ZNK7openvdb5v13_04math9CoordBBox7extentsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !169  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !169  ; 2 uses
  %i.m = icmp sgt i32 %i.j, %i.l
  br i1 %i.m, label %_ZNK7openvdb5v13_04math9CoordBBox7extentsEv.exit, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i

_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i: ; preds = %bb.b
  %i.n = load i32, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !169 ; 2 uses
  %i.o = load i32, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !169 ; 2 uses
  %i.p = icmp sgt i32 %i.n, %i.o
  br i1 %i.p, label %_ZNK7openvdb5v13_04math9CoordBBox7extentsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i
  %reass.sub = sub i32 %i.g, %i.f
  %i.q = add i32 %reass.sub, 1
  %reass.sub5 = sub i32 %i.l, %i.j
  %i.r = add i32 %reass.sub5, 1
  %reass.sub6 = sub i32 %i.o, %i.n
  %i.s = add i32 %reass.sub6, 1
  %i.t = zext i32 %i.r to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = zext i32 %i.q to i64
  %i.w = or disjoint i64 %i.u, %i.v
  br label %_ZNK7openvdb5v13_04math9CoordBBox7extentsEv.exit

_ZNK7openvdb5v13_04math9CoordBBox7extentsEv.exit: ; preds = %bb.a, %bb.b, %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i, %bb.c
  %.sroa.4.0.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0.i.i = phi i64 [ %i.w, %bb.c ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.3.0.i.i, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sroa.4.0.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEE13getIndexRangeERNS0_4math9CoordBBoxE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !779
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11getMinIndexEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !190
  br label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11getMinIndexEv.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11getMinIndexEv.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.4.0.i.i = phi i32 [ %.sroa.4.0.copyload.i.i, %bb.b ], [ 0, %bb.a ]
  %.sroa.01.sroa.0.0.insert.insert.i.i = phi i64 [ %.sroa.01.0.copyload.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.01.sroa.0.0.insert.insert.i.i, ptr %1, align 4
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sroa.4.0.i.i, ptr %.sroa.47.0..sroa_idx.i, align 4, !tbaa !190
  %i.g = load i64, ptr %i.a, align 8, !tbaa !779
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13getIndexRangeERNS0_4math9CoordBBoxE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11getMinIndexEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.i) #32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 4, !tbaa !169
  %i.m = add nsw i32 %i.l, 4095
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !169
  %i.p = add nsw i32 %i.o, 4095
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i32, ptr %i.q, align 4, !tbaa !169
  %i.s = add nsw i32 %i.r, 4095
  %i.t = zext i32 %i.p to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = zext i32 %i.m to i64
  %i.w = or disjoint i64 %i.u, %i.v
  br label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE13getIndexRangeERNS0_4math9CoordBBoxE.exit
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceIN7openvdb5v13_04tree8NodeListIKNSB_8LeafNodeINSA_9ValueMaskELj3EEEE9NodeRangeENSH_11NodeReducerINSA_5tools14count_internal18ActiveVoxelCountOpINSB_4TreeINSB_8RootNodeINSB_12InternalNodeINSP_ISF_Lj4EEELj5EEEEEEEEENSH_11OpWithIndexEEEKNS1_16auto_partitionerEEESI_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  store ptr %i.dd, ptr %i.cs, align 8, !tbaa !1131
  %i.dl = load ptr, ptr %3, align 8, !tbaa !446
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(137) %i.cm, ptr noundef nonnull align 8 dereferenceable(128) %i.dl), !inline_history !2895
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dm = add i8 %i.ch, -1
  %i.dn = add nuw nsw i8 %i.ag, 1
  %i.do = and i8 %i.dn, 7
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.j:                                             ; preds = %bb.i
  %i.dp = zext i8 %i.bt to i64                    ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !190
  %i.ds = icmp ult i8 %i.dr, %i.cf
  br i1 %i.ds, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit: ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.dp ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !1088
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !1086
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !1087
  %i.dz = sub i64 %i.dw, %i.dy
  %i.ea = icmp ult i64 %i.dv, %i.dz
  br i1 %i.ea, label %thread-pre-split26, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.j, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit
  %i.eb = phi i8 [ %i.cd, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bt, %bb.j ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.ec = phi i8 [ %i.ce, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bs, %bb.j ], [ %i.bs, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.dp, %bb.j ], [ %i.dp, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.pre-phi ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !1087 ; 2 uses
  %i.eg = load i64, ptr %i.ed, align 8, !tbaa !1086 ; 2 uses
  %i.eh = icmp ult i64 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.ei = load ptr, ptr %i.ac, align 32, !tbaa !1130
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1084 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1137, !nonnull !447, !align !448
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1079
  %.promoted.i.i.i.i.i.i16 = load i64, ptr %i.ek, align 8, !tbaa !813
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i15
  %i.ep = phi i64 [ %.promoted.i.i.i.i.i.i16, %.lr.ph.i.i.i.i.i.i15 ], [ %op.rdx67, %bb.k ]
  %.sroa.5.05.i.i.i.i.i.i17 = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i15 ], [ %i.ev, %bb.k ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.5.05.i.i.i.i.i.i17
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !960
  %i.es = load <8 x i64>, ptr %i.er, align 8, !tbaa !345
  %i.et = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.es)
  %i.eu = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.et)
  %op.rdx67 = add i64 %i.eu, %i.ep                ; 2 uses
  store i64 %op.rdx67, ptr %i.ek, align 8, !tbaa !813
  %i.ev = add nuw i64 %.sroa.5.05.i.i.i.i.i.i17, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i18 = icmp eq i64 %i.ev, %i.eg
  br i1 %exitcond.not.i.i.i.i.i.i18, label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19, label %bb.k, !llvm.loop !76

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19: ; preds = %bb.k, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit.thread
  %i.ew = add i8 %i.ec, -1
  %i.ex = add nuw i8 %i.eb, 7
  %i.ey = and i8 %i.ex, 7
  br label %thread-pre-split26

thread-pre-split26:                               ; preds = %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19
  %i.ez = phi i8 [ %i.ew, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19 ], [ %i.bs, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.fa = phi i8 [ %i.ey, %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit19 ], [ %i.bt, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EE12is_divisibleEh.exit ]
  %i.fb = icmp eq i8 %i.ez, 0
  br i1 %i.fb, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit25, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split26
  %i.fc = phi i8 [ %i.do, %.noexc ], [ %i.ag, %thread-pre-split26 ]
  %i.fd = phi i8 [ %i.dm, %.noexc ], [ %i.ez, %thread-pre-split26 ]
  %i.fe = phi i8 [ %i.ci, %.noexc ], [ %i.fa, %thread-pre-split26 ]
  %i.ff = load ptr, ptr %3, align 8, !tbaa !446   ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 15
  %i.fh = load atomic i8, ptr %i.fg monotonic, align 1
  %i.fi = icmp eq i8 %i.fh, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  %.0.i.i = select i1 %i.fi, ptr %i.fk, ptr %i.ff
  %i.fl = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.fl, label %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit25, label %bb.f, !llvm.loop !2896

_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit25: ; preds = %thread-pre-split26, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit

_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeENSB_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSJ_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEKNS1_16auto_partitionerEE8run_bodyERSC_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE9NodeRangeELh8EED2Ev.exit25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS6_8LeafNodeINS5_9ValueMaskELj3EEEE11NodeReducerINS5_5tools14count_internal18ActiveVoxelCountOpINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSJ_ISA_Lj4EEELj5EEEEEEEEENSC_11OpWithIndexEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 -1 seq_cst, align 4
  %i.c = add i32 %i.b, -1
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.e, %bb.f ], [ %0, %bb.a ]  ; 9 uses
  %i.e = load ptr, ptr %.019, align 8, !tbaa !435 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1135, !range !449, !noundef !447
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !446    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.k = load atomic i8, ptr %i.j monotonic, align 1
  %i.l = icmp eq i8 %i.k, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %.0.i.i.i = select i1 %i.l, ptr %i.n, ptr %i.i
  %i.o = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i)
  br i1 %i.o, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2897, !nonnull !447, !align !448
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1084 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1084
  %i.v = load i64, ptr %i.u, align 8, !tbaa !813
  %i.w = load i64, ptr %i.s, align 8, !tbaa !813
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.s, align 8, !tbaa !813
  br label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit

_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !431
  %i.aa = load i8, ptr %i.f, align 8, !tbaa !1135, !range !449, !noundef !447
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !961 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 8) #31
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i, %bb.e, %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeINS4_9ValueMaskELj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ae = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull %.019, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = atomicrmw add ptr %i.af, i32 -1 seq_cst, align 4
  %i.ah = add i32 %i.ag, -1
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.019, i64 24
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.ak, 1
  br i1 %.not.i.i, label %bb.h, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.am = ptrtoint ptr %i.al to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.am)
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.f, %bb.a, %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree18DynamicNodeManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELj3EE13reduceTopDownINS0_5tools14count_internal20InactiveVoxelCountOpISC_EEEEvRT_bmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.openvdb::v13_0::tree::ReduceFilterOp.779", align 8 ; 11 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::ReduceFilterOp.779", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1038, !nonnull !447, !align !448 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %.not3.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not3.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.2.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !642
  %7 = icmp ne ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i.i, i64 57
  %i.h = load i8, ptr %i.g, align 1, !range !449
  %8 = trunc nuw i8 %i.h to i1
  %.not2.i.i.i.i = select i1 %7, i1 true, i1 %8
  br i1 %.not2.i.i.i.i, label %bb.b, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i.i) #32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2898

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i, %bb.a
  %.sroa.2.1.i.i = phi ptr [ %i.c, %bb.a ], [ %.sroa.2.0.i.i, %.lr.ph.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %.not10.i = icmp eq ptr %.sroa.2.1.i.i, %i.d
  br i1 %.not10.i, label %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i
  %.promoted.i = load i64, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !262, !range !449, !noundef !447
  br label %bb.c

bb.c:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i, %.lr.ph.i
  %.sroa.5.011.i = phi ptr [ %.sroa.2.1.i.i, %.lr.ph.i ], [ %.sroa.5.3.i, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i ] ; 2 uses
  %i.l = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.5.011.i, i64 56
  %i.n = load i8, ptr %i.m, align 1, !tbaa !262, !range !449, !noundef !447
  %i.o = icmp eq i8 %i.n, %i.k
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %i.l, 68719476736                ; 2 uses
  store i64 %i.p, ptr %1, align 8, !tbaa !823
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi i64 [ %i.p, %bb.d ], [ %i.l, %bb.c ]
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.011.i) #32 ; 3 uses
  %.not3.i.i.i3.i = icmp eq ptr %i.r, %i.d
  br i1 %.not3.i.i.i3.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i, label %.lr.ph.i.i.i4.i

.lr.ph.i.i.i4.i:                                  ; preds = %bb.e, %bb.f
  %.sroa.5.2.i = phi ptr [ %i.w, %bb.f ], [ %i.r, %bb.e ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !642
  %9 = icmp ne ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.5.2.i, i64 57
  %i.v = load i8, ptr %i.u, align 1, !range !449
  %10 = trunc nuw i8 %i.v to i1
  %.not2.i.i.i5.i = select i1 %9, i1 true, i1 %10
  br i1 %.not2.i.i.i5.i, label %bb.f, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i4.i
  %i.w = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.5.2.i) #32 ; 3 uses
  %.not.i.i.i6.i = icmp eq ptr %i.w, %i.d
  br i1 %.not.i.i.i6.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i, label %.lr.ph.i.i.i4.i, !llvm.loop !2898

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i4.i, %bb.e
  %.sroa.5.3.i = phi ptr [ %i.r, %bb.e ], [ %i.w, %bb.f ], [ %.sroa.5.2.i, %.lr.ph.i.i.i4.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.5.3.i, %i.d
  br i1 %.not.i, label %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit, label %bb.c, !llvm.loop !2899

_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit: ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ValueIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_12ValueOffPredEKbEppEv.exit.i, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE14cbeginValueOffEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.y = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16initRootChildrenIKNS1_8RootNodeIS8_EEEEbRT_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(68) %i.a)
  br i1 %i.y, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit, label %bb.s

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit: ; preds = %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.z = load i64, ptr %i.x, align 8, !tbaa !1039 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !1004
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.aa, align 8, !tbaa !1139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2904)
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #29 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.z, i1 false), !noalias !2904
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !796, !alias.scope !2904
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !1140
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %2, i64 noundef %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.af = xor i1 %2, true                         ; 2 uses
  %i.ag = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS7_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISB_EEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %i.af)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.ag, label %bb.j, label %bb.r

bb.i:                                             ; preds = %bb.g, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEC2ERSG_m.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !1065 ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !1004
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.aj, align 8, !tbaa !1139
  call void @llvm.experimental.noalias.scope.decl(metadata !2905)
  %i.ak = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #29
          to label %bb.l unwind label %bb.k       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %i.ai, i1 false), !noalias !2905
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !796, !alias.scope !2905
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !1140
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS7_Lj5EEEEEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %2, i64 noundef %4)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS5_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS9_ISA_Lj5EEEEEEEEEEEEEbRT_RKT0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.af)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.ap, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #23
  br label %.body

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE15reduceWithIndexINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !796 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i22, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #31
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %bb.q
  %i.as = load ptr, ptr %6, align 8, !tbaa !1012  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i1.i, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i23

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i23: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 8) #31
  br label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !796 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.at, null
  br i1 %.not.i.i25, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i26

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i26: ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.at) #31
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i26, %bb.r
  %i.au = load ptr, ptr %5, align 8, !tbaa !1012  ; 2 uses
  %.not.i1.i28 = icmp eq ptr %i.au, null
  br i1 %.not.i1.i28, label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i29

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i29: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 8) #31
  br label %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31

_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i27, %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEclERKSD_m.exit, %_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev.exit31
  ret void

.body:                                            ; preds = %bb.k, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.al, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ah, %bb.i ]
  call void @_ZN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15reduceWithIndexINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEEEEvRT_bm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>, 5>>::NodeReducer.782", align 8 ; 9 uses
  %6 = alloca %"class.openvdb::v13_0::tree::NodeList<const openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>, 5>>::NodeRange", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr null, ptr %5, align 8, !tbaa !1143
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !1150
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2908)
  %i.b = load i64, ptr %0, align 8, !tbaa !1039, !noalias !2908
  store i64 %i.b, ptr %6, align 8, !tbaa !1060, !alias.scope !2908
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !1061, !alias.scope !2908
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.d, align 8, !tbaa !1062, !alias.scope !2908
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.e, align 8, !tbaa !1063, !alias.scope !2908
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEE3runERKSF_RSS_RSU_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEEclERKNSA_9NodeRangeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb.exit unwind label %bb.e

_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb.exit: ; preds = %.noexc, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.f = load ptr, ptr %5, align 8, !tbaa !1151   ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEE3runERKNSA_9NodeRangeEb.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !796  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.h) #31
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.d
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !1012 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 8) #31
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEEEclEPSI_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEclEPSG_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE5pruneERKb:bb.a
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %exitcond.i.4 = icmp eq i64 %indvars.iv.next.i.4, 4096
  br i1 %exitcond.i.4, label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE10isConstantERbS7_RKb.exit, label %bb.o, !llvm.loop !3402

bb.o:                                             ; preds = %bb.n, %bb.i
  %indvars.iv.i = phi i64 [ 1, %bb.i ], [ %indvars.iv.next.i.4, %bb.n ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !262, !range !449, !noundef !447
  %i.at = icmp eq i8 %i.as, %i.aa
  br i1 %i.at, label %bb.j, label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE10isConstantERbS7_RKb.exit.thread

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE10isConstantERbS7_RKb.exit: ; preds = %bb.n
  %i.au = call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.w), !noalias !3407 ; 2 uses
  %.not4.i = icmp eq i32 %i.au, 4096
  br i1 %.not4.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE10isConstantERbS7_RKb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit.i
  %.sroa.3.05.i = phi i32 [ %.118.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit.i ], [ %i.au, %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE10isConstantERbS7_RKb.exit ] ; 2 uses
  %i.av = zext i32 %.sroa.3.05.i to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !190 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 80) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %i.az = add i32 %.sroa.3.05.i, 1                ; 4 uses
  %i.ba = lshr i32 %i.az, 6                       ; 3 uses
  %i.bb = icmp ugt i32 %i.az, 4095
  br i1 %i.bb, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = and i32 %i.az, 63
  %i.bd = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !345 ; 2 uses
  %i.bg = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bj = shl nsw i64 -1, %i.bg
  %i.bk = and i64 %i.bf, %i.bj                    ; 2 uses
  %.not2226.i.i.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not2226.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.s
  %exitcond.not.i.i.i.i.i55 = icmp eq i32 %i.ba, 63
  br i1 %exitcond.not.i.i.i.i.i55, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EED2Ev.exit, label %.lr.ph57

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph57
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EED2Ev.exit, label %.lr.ph57, !llvm.loop !17

.lr.ph57:                                         ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i56 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bd, %.lr.ph.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i56, 1 ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !345 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !17

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph57
  %i.bn = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.s
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.ba, %bb.s ], [ %i.bn, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.bk, %bb.s ], [ %i.bm, %.critedge.loopexit.i.i.i.i.i ]
  %i.bo = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.bp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = or disjoint i32 %i.bo, %i.bq
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.r
  %.118.i.i.i.i.i = phi i32 [ %i.br, %.critedge.i.i.i.i.i ], [ %i.az, %bb.r ] ; 2 uses
  %.not.i = icmp eq i32 %.118.i.i.i.i.i, 4096
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EED2Ev.exit, label %.lr.ph.i

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EED2Ev.exit: ; preds = %bb.q, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit.i, %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE10isConstantERbS7_RKb.exit
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef 33808) #31
  %i.bs = and i32 %.sroa.3.021, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt                    ; 2 uses
  %i.bv = xor i64 %i.bu, -1                       ; 2 uses
  %i.bw = lshr i32 %.sroa.3.021, 6
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !345
  %i.ca = and i64 %i.bz, %i.bv
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !345
  %i.cb = load i8, ptr %i.a, align 1, !tbaa !262, !range !449, !noundef !447
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bx ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !345 ; 2 uses
  %i.cf = or i64 %i.ce, %i.bu
  %i.cg = and i64 %i.ce, %i.bv
  %.sink = select i1 %i.cc, i64 %i.cf, i64 %i.cg
  store i64 %.sink, ptr %i.cd, align 8, !tbaa !345
  store i8 %i.aa, ptr %i.u, align 8, !tbaa !190
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE10isConstantERbS7_RKb.exit.thread

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE10isConstantERbS7_RKb.exit.thread: ; preds = %bb.o, %bb.j, %bb.k, %bb.l, %bb.m, %bb.h, %bb.g, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EED2Ev.exit
  %i.ch = add i32 %.sroa.3.021, 1                 ; 4 uses
  %i.ci = lshr i32 %i.ch, 6                       ; 3 uses
  %i.cj = icmp ugt i32 %i.ch, 32767
  br i1 %i.cj, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE10isConstantERbS7_RKb.exit.thread
  %i.ck = and i32 %i.ch, 63
  %i.cl = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !345 ; 2 uses
  %i.co = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cn, %i.cp
  %.not.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i, label %bb.u, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit

bb.u:                                             ; preds = %bb.t
  %i.cr = shl nsw i64 -1, %i.co
  %i.cs = and i64 %i.cn, %i.cr                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.u
  %exitcond.not.i.i.i.i58 = icmp eq i32 %i.ci, 511
  br i1 %exitcond.not.i.i.i.i58, label %._crit_edge, label %.lr.ph60

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph60
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph60, !llvm.loop !16

.lr.ph60:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i59 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cl, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i59, 1 ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !345 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !16

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph60
  %i.cv = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.u
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ci, %bb.u ], [ %i.cv, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.cs, %bb.u ], [ %i.cu, %.critedge.loopexit.i.i.i.i ]
  %i.cw = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.cx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = or disjoint i32 %i.cw, %i.cy
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.t, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.cz, %.critedge.i.i.i.i ], [ %i.ch, %bb.t ] ; 2 uses
  %.not = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !3405
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(68) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::set", align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !777
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !276
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !778
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !779
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !275  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.g, %i.h
  br i1 %.not15, label %._crit_edge21, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !275 ; 2 uses
  %.not1417 = icmp eq ptr %.pre, %i.a
  br i1 %.not1417, label %._crit_edge21, label %.lr.ph20

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
  %.sroa.010.016 = phi ptr [ %i.g, %.lr.ph ], [ %i.t, %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !642
  %2 = icmp ne ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 57
  %i.m = load i8, ptr %i.l, align 1, !range !449
  %3 = trunc nuw i8 %i.m to i1
  %.not3.i = select i1 %2, i1 true, i1 %3
  br i1 %.not3.i, label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !262, !range !449, !noundef !447
  %i.p = load i8, ptr %i.i, align 8, !tbaa !262, !range !449, !noundef !447
  %i.q = icmp eq i8 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 32
  %i.s = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.r)
          to label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit: ; preds = %bb.b, %bb.c, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEE.exit
  %i.t = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.016) #32 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3408

._crit_edge21:                                    ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE5eraseERSH_.exit, %bb.a, %._crit_edge
  %i.u = load i64, ptr %i.e, align 8, !tbaa !779
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !276
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.v)
          to label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %._crit_edge21
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #30
  unreachable

_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %._crit_edge21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i64 %i.u

.lr.ph20:                                         ; preds = %._crit_edge, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE5eraseERSH_.exit
  %.sroa.04.018 = phi ptr [ %i.aa, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE5eraseERSH_.exit ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.018, i64 32
  %i.z = invoke noundef i64 @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE5eraseERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.y)
          to label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE5eraseERSH_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE5eraseERSH_.exit: ; preds = %.lr.ph20
  %i.aa = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.018) #32 ; 2 uses
  %.not14 = icmp eq ptr %i.aa, %i.a
  br i1 %.not14, label %._crit_edge21, label %.lr.ph20, !llvm.loop !3409

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph20, %bb.c
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp29
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE5pruneERKb(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32768 ; 4 uses
  %i.b = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.a), !noalias !3413 ; 2 uses
  %.not16 = icmp eq i32 %i.b, 4096
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 33280
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE10isConstantERbS5_b.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit
  %.sroa.3.017 = phi i32 [ %i.b, %.lr.ph ], [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit ] ; 4 uses
  %i.d = zext i32 %.sroa.3.017 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !190  ; 4 uses
  %.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.g = load i64, ptr %.0.ptr.6.i.i, align 8
  %i.h = load i64, ptr %i.f, align 8, !tbaa !345  ; 2 uses
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = shufflevector <2 x i64> %i.i, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.k = add <2 x i64> %i.j, <i64 0, i64 1>
  %i.l = shufflevector <2 x i64> %i.k, <2 x i64> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.m = load <6 x i64>, ptr %.0.ptr.i.i, align 8
  %i.n = insertelement <8 x i64> <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 2>, i64 %i.g, i64 6
  %i.o = shufflevector <6 x i64> %i.m, <6 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.p = shufflevector <8 x i64> %i.o, <8 x i64> %i.n, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.q = icmp eq <8 x i64> %i.l, %i.p
  %i.r = icmp ult <8 x i64> %i.l, %i.p
  %i.s = shufflevector <8 x i1> %i.q, <8 x i1> %i.r, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  %i.t = freeze <8 x i1> %i.s
  %i.u = bitcast <8 x i1> %i.t to i8
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit, label %_ZNK7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE10isConstantERbS5_b.exit

_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit: ; preds = %bb.b
  %i.w = icmp eq i64 %i.h, -1                     ; 2 uses
  %i.x = zext i1 %i.w to i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 80) #31
  %i.y = and i32 %.sroa.3.017, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z                     ; 2 uses
  %i.ab = xor i64 %i.aa, -1                       ; 2 uses
  %i.ac = lshr i32 %.sroa.3.017, 6
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !345
  %i.ag = and i64 %i.af, %i.ab
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !345
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ad ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !345 ; 2 uses
  %i.aj = or i64 %i.ai, %i.aa
  %i.ak = and i64 %i.ai, %i.ab
  %.sink = select i1 %i.w, i64 %i.aj, i64 %i.ak
  store i64 %.sink, ptr %i.ah, align 8, !tbaa !345
  store i8 %i.x, ptr %i.e, align 8, !tbaa !190
  br label %_ZNK7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE10isConstantERbS5_b.exit

_ZNK7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE10isConstantERbS5_b.exit: ; preds = %bb.b, %_ZN7openvdb5v13_04util8NodeMaskILj4EE3setEjb.exit
  %i.al = add i32 %.sroa.3.017, 1                 ; 4 uses
  %i.am = lshr i32 %i.al, 6                       ; 3 uses
  %i.an = icmp ugt i32 %i.al, 4095
  br i1 %i.an, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EE10isConstantERbS5_b.exit
  %i.ao = and i32 %i.al, 63
  %i.ap = zext nneg i32 %i.am to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !345 ; 2 uses
  %i.as = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit

bb.d:                                             ; preds = %bb.c
  %i.av = shl nsw i64 -1, %i.as
  %i.aw = and i64 %i.ar, %i.av                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %exitcond.not.i.i.i.i25 = icmp eq i32 %i.am, 63
  br i1 %exitcond.not.i.i.i.i25, label %._crit_edge, label %.lr.ph27

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph27
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph27, !llvm.loop !17

.lr.ph27:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i26 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i26, 1 ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i.i
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !345 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !17

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph27
  %i.az = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.am, %bb.d ], [ %i.az, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.aw, %bb.d ], [ %i.ay, %.critedge.loopexit.i.i.i.i ]
  %i.ba = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEppEv.exit: ; preds = %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bd, %.critedge.i.i.i.i ], [ %i.al, %bb.c ] ; 2 uses
  %.not = icmp eq i32 %.118.i.i.i.i, 4096
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3412
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE5isOffEv(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !345
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  %or.cond8 = select i1 %or.cond, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  %or.cond11 = select i1 %or.cond8, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  %or.cond14 = select i1 %or.cond11, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, 0
  %or.cond17 = select i1 %or.cond14, i1 %i.q, i1 false
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE13rehash_bucketEPNS1_13hash_map_baseISQ_NSJ_13spin_rw_mutexEE6bucketEm:bb.a
bb.i:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i.i
  %i.bi = call noundef i32 @sched_yield() #23     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, !llvm.loop !29

bb.j:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit.thread, %bb.b
  %i.bj = load ptr, ptr %.02743, align 8, !tbaa !270 ; 3 uses
  %i.bk = icmp eq ptr %.02544, null
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !1425
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store atomic ptr %i.bj, ptr %i.bm monotonic, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr %i.bj, ptr %.02544, align 8, !tbaa !270
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = load atomic ptr, ptr %i.a monotonic, align 8
  store ptr %i.bn, ptr %.02743, align 8, !tbaa !270
  store atomic ptr %.02743, ptr %i.a monotonic, align 8
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bo = load ptr, ptr %.02743, align 8, !tbaa !270
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %bb.m, %bb.n
  %.229 = phi ptr [ %i.bo, %bb.n ], [ %i.bj, %bb.m ] ; 2 uses
  %.2 = phi ptr [ %.02743, %bb.n ], [ %.02544, %bb.m ]
  %i.bp = icmp ugt ptr %.229, inttoptr (i64 63 to ptr)
  br i1 %i.bp, label %.lr.ph.backedge, label %._crit_edge

.lr.ph.backedge:                                  ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %.loopexit
  %.02544.be = phi ptr [ %.2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ null, %.loopexit ]
  %.02743.be = phi ptr [ %.229, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ %i.o, %.loopexit ]
  br label %.lr.ph, !llvm.loop !3633

._crit_edge:                                      ; preds = %.loopexit, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.a
  %i.bq = load ptr, ptr %3, align 8, !tbaa !605   ; 3 uses
  %.not.i30 = icmp eq ptr %i.bq, null
  br i1 %.not.i30, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  store ptr null, ptr %3, align 8, !tbaa !605
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !606, !range !449, !noundef !447
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = atomicrmw and ptr %i.bq, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31

bb.q:                                             ; preds = %bb.o
  %i.bv = atomicrmw add ptr %i.bq, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit31: ; preds = %._crit_edge, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE18topologyDifferenceIS8_EEvRKNS2_IT_EE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::blocked_range.561", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>, 5>::TopologyDifference", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %6 = alloca %"class.tbb::detail::d1::blocked_range.561", align 8 ; 6 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>, 5>::TopologyDifference", align 8 ; 7 uses
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE24enforceSameConfigurationIS8_EEvRKNS2_IT_EE(ptr noundef nonnull align 8 dereferenceable(68) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not5259 = icmp eq ptr %i.b, %i.c
  br i1 %.not5259, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.045.060 = phi ptr [ %i.b, %.lr.ph ], [ %i.it, %.critedge ] ; 6 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !276  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not12.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE4findERSH_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.045.060, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !169  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.045.060, i64 36
  %i.t = load i32, ptr %i.s, align 4              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.045.060, i64 40
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i ] ; 7 uses
  %.0813.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !169  ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.r
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp sgt i32 %i.x, %i.r
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !169 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.t
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp sgt i32 %i.ab, %i.t
  br i1 %i.ad, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 40
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !169
  %i.ag = icmp slt i32 %i.af, %i.v
  br i1 %i.ag, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %bb.e, %bb.c
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %bb.f, %bb.d
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i ], [ 16, %bb.f ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0813.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i ], [ %.014.i.i.i, %bb.f ], [ %.014.i.i.i, %bb.d ], [ %.014.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !585 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.c, !llvm.loop !55

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.ai, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE4findERSH_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !169 ; 2 uses
  %i.al = icmp slt i32 %i.r, %i.ak
  br i1 %i.al, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE4findERSH_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp sgt i32 %i.r, %i.ak
  br i1 %i.am, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread7.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !169 ; 2 uses
  %i.ap = icmp slt i32 %i.t, %i.ao
  br i1 %i.ap, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE4findERSH_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp sgt i32 %i.t, %i.ao
  br i1 %i.aq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread7.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i: ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !169
  %i.at = icmp slt i32 %i.v, %i.as
  br i1 %i.at, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE4findERSH_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread7.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread7.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i, %bb.j, %bb.h
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE4findERSH_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE4findERSH_.exit: ; preds = %bb.b, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.g, %bb.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread7.i.i
  %.sroa.0.0.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread7.i.i ], [ %i.e, %bb.b ], [ %i.e, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ %i.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i ], [ %i.e, %bb.g ], [ %i.e, %bb.i ] ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.045.060, i64 48 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !642 ; 2 uses
  %.not53 = icmp eq ptr %i.av, null
  br i1 %.not53, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE4findERSH_.exit
  %i.aw = icmp eq ptr %.sroa.0.0.i.i, %i.e
  br i1 %i.aw, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !642 ; 2 uses
  %8 = icmp ne ptr %i.ay, null                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 57
  %i.ba = load i8, ptr %i.az, align 1, !range !449
  %9 = trunc nuw i8 %i.ba to i1                   ; 2 uses
  %.not57 = select i1 %8, i1 true, i1 %9
  br i1 %.not57, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  br i1 %8, label %vector.memcheck85, label %bb.n

vector.memcheck85:                                ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.av, ptr %7, align 8, !tbaa !1427
  store ptr %i.ay, ptr %i.g, align 8, !tbaa !1428
  store ptr %i.f, ptr %i.h, align 8, !tbaa !796
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 32768, ptr %6, align 8, !tbaa !798
  store i32 0, ptr %i.i, align 4, !tbaa !799
  store i64 1, ptr %i.j, align 8, !tbaa !800
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISD_EEKNS1_16auto_partitionerEE3runERKS4_RKSF_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !1428 ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 262144 ; 6 uses
  %i.bd = load ptr, ptr %7, align 8, !tbaa !1427  ; 4 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 262144 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 266240 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 266240 ; 4 uses
  %scevgep86 = getelementptr i8, ptr %i.bb, i64 270336
  %scevgep87 = getelementptr i8, ptr %i.bd, i64 270336
  %bound088 = icmp ult ptr %i.bc, %scevgep87
  %bound189 = icmp ult ptr %i.be, %scevgep86
  %found.conflict90 = and i1 %bound088, %bound189
  br i1 %found.conflict90, label %scalar.ph91, label %vector.body93

vector.body93:                                    ; preds = %vector.memcheck85, %vector.body93
  %index94 = phi i64 [ %index.next107, %vector.body93 ], [ 0, %vector.memcheck85 ] ; 2 uses
  %i.bh = shl i64 %index94, 3                     ; 4 uses
  %next.gep95.a = getelementptr i8, ptr %i.bg, i64 %i.bh ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.bf, i64 %i.bh ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.be, i64 %i.bh ; 2 uses
  %next.gep98 = getelementptr i8, ptr %i.bc, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep98, i64 16 ; 2 uses
  %wide.load99.a = load <2 x i64>, ptr %next.gep98, align 8, !tbaa !345, !alias.scope !3655, !noalias !3656
  %wide.load100.a = load <2 x i64>, ptr %i.bi, align 8, !tbaa !345, !alias.scope !3655, !noalias !3656
  %i.bj = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load101.a = load <2 x i64>, ptr %next.gep97, align 8, !tbaa !345, !alias.scope !3656 ; 2 uses
  %wide.load102.a = load <2 x i64>, ptr %i.bj, align 8, !tbaa !345, !alias.scope !3656 ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep96, i64 16
  %wide.load103.a = load <2 x i64>, ptr %next.gep96, align 8, !tbaa !345, !alias.scope !3656
  %wide.load104 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !345, !alias.scope !3656
  %i.bl = xor <2 x i64> %wide.load103.a, splat (i64 -1)
  %i.bm = xor <2 x i64> %wide.load104, splat (i64 -1)
  %i.bn = or <2 x i64> %wide.load101.a, %i.bl
  %i.bo = or <2 x i64> %wide.load102.a, %i.bm
  %i.bp = and <2 x i64> %i.bn, %wide.load99.a
  %i.bq = and <2 x i64> %i.bo, %wide.load100.a
  %i.br = getelementptr i8, ptr %next.gep95.a, i64 16
  %wide.load105 = load <2 x i64>, ptr %next.gep95.a, align 8, !tbaa !345, !alias.scope !3655, !noalias !3656
  %wide.load106 = load <2 x i64>, ptr %i.br, align 8, !tbaa !345, !alias.scope !3655, !noalias !3656
  %i.bs = and <2 x i64> %wide.load105, %wide.load101.a
  %i.bt = and <2 x i64> %wide.load106, %wide.load102.a
  %i.bu = or <2 x i64> %i.bp, %i.bs
  %i.bv = or <2 x i64> %i.bq, %i.bt
  store <2 x i64> %i.bu, ptr %next.gep98, align 8, !tbaa !345, !alias.scope !3655, !noalias !3656
  store <2 x i64> %i.bv, ptr %i.bi, align 8, !tbaa !345, !alias.scope !3655, !noalias !3656
  %index.next107 = add nuw i64 %index94, 4        ; 2 uses
  %i.bw = icmp eq i64 %index.next107, 512
  br i1 %i.bw, label %vector.memcheck.a, label %vector.body93, !llvm.loop !3637

scalar.ph91:                                      ; preds = %vector.memcheck85, %scalar.ph91
  %.021.i.i.i = phi i32 [ %i.ck, %scalar.ph91 ], [ 512, %vector.memcheck85 ]
  %.01320.i.i.i = phi ptr [ %i.cx, %scalar.ph91 ], [ %i.bg, %vector.memcheck85 ] ; 3 uses
  %.01419.i.i.i = phi ptr [ %i.cw, %scalar.ph91 ], [ %i.bf, %vector.memcheck85 ] ; 3 uses
  %.01518.i.i.i = phi ptr [ %i.cv, %scalar.ph91 ], [ %i.be, %vector.memcheck85 ] ; 3 uses
  %.01617.i.i.i = phi ptr [ %i.cu, %scalar.ph91 ], [ %i.bc, %vector.memcheck85 ] ; 4 uses
  %i.bx = load i64, ptr %.01617.i.i.i, align 8, !tbaa !345
  %i.by = load i64, ptr %.01518.i.i.i, align 8, !tbaa !345 ; 2 uses
  %i.bz = load i64, ptr %.01419.i.i.i, align 8, !tbaa !345
  %i.ca = xor i64 %i.bz, -1
  %i.cb = or i64 %i.by, %i.ca
  %i.cc = and i64 %i.cb, %i.bx
  %i.cd = load i64, ptr %.01320.i.i.i, align 8, !tbaa !345
  %i.ce = and i64 %i.cd, %i.by
  %i.cf = or i64 %i.cc, %i.ce
  store i64 %i.cf, ptr %.01617.i.i.i, align 8, !tbaa !345
  %i.cg = getelementptr inbounds nuw i8, ptr %.01617.i.i.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01518.i.i.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.01419.i.i.i, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 8
  %i.ck = add nsw i32 %.021.i.i.i, -2             ; 2 uses
  %i.cl = load i64, ptr %i.cg, align 8, !tbaa !345
  %i.cm = load i64, ptr %i.ch, align 8, !tbaa !345 ; 2 uses
  %i.cn = load i64, ptr %i.ci, align 8, !tbaa !345
  %i.co = xor i64 %i.cn, -1
  %i.cp = or i64 %i.cm, %i.co
  %i.cq = and i64 %i.cp, %i.cl
  %i.cr = load i64, ptr %i.cj, align 8, !tbaa !345
  %i.cs = and i64 %i.cr, %i.cm
  %i.ct = or i64 %i.cq, %i.cs
  store i64 %i.ct, ptr %i.cg, align 8, !tbaa !345
  %i.cu = getelementptr inbounds nuw i8, ptr %.01617.i.i.i, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %.01518.i.i.i, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.01419.i.i.i, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 16
  %.not.i.i.i10.1 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i10.1, label %vector.memcheck.a, label %scalar.ph91, !llvm.loop !3638

vector.memcheck.a:                                ; preds = %vector.body93, %scalar.ph91
  %scevgep.a = getelementptr i8, ptr %i.bb, i64 270336
  %scevgep77 = getelementptr i8, ptr %i.bd, i64 270336
  %bound0.a = icmp ult ptr %i.bc, %scevgep77
  %bound1.a = icmp ult ptr %i.bf, %scevgep.a
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  br i1 %found.conflict.a, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i, label %vector.body.a

vector.body.a:                                    ; preds = %vector.memcheck.a, %vector.body.a
  %index.a = phi i64 [ %index.next.a, %vector.body.a ], [ 0, %vector.memcheck.a ] ; 2 uses
  %i.cy = shl i64 %index.a, 3                     ; 3 uses
  %next.gep.a = getelementptr i8, ptr %i.bf, i64 %i.cy ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.bc, i64 %i.cy ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.bg, i64 %i.cy ; 3 uses
  %i.cz = getelementptr i8, ptr %next.gep.a, i64 16
  %wide.load.a = load <2 x i64>, ptr %next.gep.a, align 8, !tbaa !345, !alias.scope !3657
  %wide.load80.a = load <2 x i64>, ptr %i.cz, align 8, !tbaa !345, !alias.scope !3657
  %i.da = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load81.a = load <2 x i64>, ptr %next.gep78, align 8, !tbaa !345, !alias.scope !3658, !noalias !3657
  %wide.load82 = load <2 x i64>, ptr %i.da, align 8, !tbaa !345, !alias.scope !3658, !noalias !3657
  %i.db = or <2 x i64> %wide.load81.a, %wide.load.a
  %i.dc = or <2 x i64> %wide.load82, %wide.load80.a
  %i.dd = xor <2 x i64> %i.db, splat (i64 -1)
  %i.de = xor <2 x i64> %i.dc, splat (i64 -1)
  %i.df = getelementptr i8, ptr %next.gep79, i64 16 ; 2 uses
  %wide.load83 = load <2 x i64>, ptr %next.gep79, align 8, !tbaa !345, !alias.scope !3658, !noalias !3657
  %wide.load84 = load <2 x i64>, ptr %i.df, align 8, !tbaa !345, !alias.scope !3658, !noalias !3657
  %i.dg = and <2 x i64> %wide.load83, %i.dd
  %i.dh = and <2 x i64> %wide.load84, %i.de
  store <2 x i64> %i.dg, ptr %next.gep79, align 8, !tbaa !345, !alias.scope !3658, !noalias !3657
  store <2 x i64> %i.dh, ptr %i.df, align 8, !tbaa !345, !alias.scope !3658, !noalias !3657
  %index.next.a = add nuw i64 %index.a, 4         ; 2 uses
  %i.di = icmp eq i64 %index.next.a, 512
  br i1 %i.di, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18topologyDifferenceIS6_EEvRKNS2_IT_Lj5EEERKb.exit, label %vector.body.a, !llvm.loop !3642

_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i: ; preds = %vector.memcheck.a, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i
  %.020.i.i.i = phi i32 [ %i.ds, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i ], [ 512, %vector.memcheck.a ]
  %.01419.i7.i.i = phi ptr [ %i.eb, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i ], [ %i.bf, %vector.memcheck.a ] ; 3 uses
  %.01518.i8.i.i = phi ptr [ %i.ea, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i ], [ %i.bc, %vector.memcheck.a ] ; 3 uses
  %.01617.i9.i.i = phi ptr [ %i.dz, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i ], [ %i.bg, %vector.memcheck.a ] ; 4 uses
  %i.dj = load i64, ptr %.01419.i7.i.i, align 8, !tbaa !345
  %i.dk = load i64, ptr %.01518.i8.i.i, align 8, !tbaa !345
  %i.dl = or i64 %i.dk, %i.dj
  %i.dm = xor i64 %i.dl, -1
  %i.dn = load i64, ptr %.01617.i9.i.i, align 8, !tbaa !345
  %i.do = and i64 %i.dn, %i.dm
  store i64 %i.do, ptr %.01617.i9.i.i, align 8, !tbaa !345
  %i.dp = getelementptr inbounds nuw i8, ptr %.01617.i9.i.i, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.01518.i8.i.i, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.01419.i7.i.i, i64 8
  %i.ds = add nsw i32 %.020.i.i.i, -2             ; 2 uses
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !345
  %i.du = load i64, ptr %i.dq, align 8, !tbaa !345
  %i.dv = or i64 %i.du, %i.dt
  %i.dw = xor i64 %i.dv, -1
  %i.dx = load i64, ptr %i.dp, align 8, !tbaa !345
  %i.dy = and i64 %i.dx, %i.dw
  store i64 %i.dy, ptr %i.dp, align 8, !tbaa !345
  %i.dz = getelementptr inbounds nuw i8, ptr %.01617.i9.i.i, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.01518.i8.i.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.01419.i7.i.i, i64 16
  %.not.i10.i.i.1 = icmp eq i32 %i.ds, 0
  br i1 %.not.i10.i.i.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18topologyDifferenceIS6_EEvRKNS2_IT_Lj5EEERKb.exit, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i, !llvm.loop !3643

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18topologyDifferenceIS6_EEvRKNS2_IT_Lj5EEERKb.exit: ; preds = %vector.body.a, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.critedge

bb.n:                                             ; preds = %bb.m
  br i1 %9, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ec = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #29 ; 13 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 56
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.ec, i8 0, i64 270336, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !169
  %i.ei = load <2 x i32>, ptr %i.ed, align 8, !tbaa !169
  %i.ej = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.eh, i64 2
  %i.ek = shufflevector <2 x i32> %i.ei, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.el = shufflevector <4 x i32> %i.ek, <4 x i32> %i.ej, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.em = and <4 x i32> %i.el, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.em, ptr %i.ef, align 8, !tbaa !169
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 266240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.en, i8 -1, i64 4096, i1 false), !tbaa !345
  %.pre.i = load i8, ptr %i.ee, align 8, !tbaa !262, !range !449 ; 8 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i.7, %bb.p ] ; 9 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i
  store i8 %.pre.i, ptr %i.eo, align 8, !tbaa !190
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i8 %.pre.i, ptr %i.eq, align 8, !tbaa !190
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i8 %.pre.i, ptr %i.es, align 8, !tbaa !190
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i8 %.pre.i, ptr %i.eu, align 8, !tbaa !190
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  store i8 %.pre.i, ptr %i.ew, align 8, !tbaa !190
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i8 %.pre.i, ptr %i.ey, align 8, !tbaa !190
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  store i8 %.pre.i, ptr %i.fa, align 8, !tbaa !190
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  store i8 %.pre.i, ptr %i.fc, align 8, !tbaa !190
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 32768
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKbb.exit, label %bb.p, !llvm.loop !118

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKbb.exit: ; preds = %bb.p
  %i.fd = load ptr, ptr %i.au, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.fd, ptr %4, align 8, !tbaa !1427
  store ptr %i.ec, ptr %i.k, align 8, !tbaa !1428
  store ptr %i.f, ptr %i.l, align 8, !tbaa !796
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 32768, ptr %3, align 8, !tbaa !798
  store i32 0, ptr %i.m, align 4, !tbaa !799
  store i64 1, ptr %i.n, align 8, !tbaa !800
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISD_EEKNS1_16auto_partitionerEE3runERKS4_RKSF_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.fe = load ptr, ptr %i.k, align 8, !tbaa !1428 ; 4 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 262144 ; 6 uses
  %i.fg = load ptr, ptr %4, align 8, !tbaa !1427  ; 4 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 262144 ; 3 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 266240 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 266240 ; 4 uses
  %scevgep131 = getelementptr i8, ptr %i.fe, i64 270336
  %scevgep132 = getelementptr i8, ptr %i.fg, i64 270336
  %bound0133 = icmp ult ptr %i.ff, %scevgep132
  %bound1134 = icmp ult ptr %i.fh, %scevgep131
  %found.conflict135 = and i1 %bound0133, %bound1134
  br i1 %found.conflict135, label %scalar.ph136, label %vector.body138

vector.body138:                                   ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKbb.exit, %vector.body138
  %index139 = phi i64 [ %index.next152, %vector.body138 ], [ 0, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKbb.exit ] ; 2 uses
  %i.fk = shl i64 %index139, 3                    ; 4 uses
  %next.gep140 = getelementptr i8, ptr %i.fj, i64 %i.fk ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.fi, i64 %i.fk ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.fh, i64 %i.fk ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.ff, i64 %i.fk ; 3 uses
  %i.fl = getelementptr i8, ptr %next.gep143, i64 16 ; 2 uses
  %wide.load144 = load <2 x i64>, ptr %next.gep143, align 8, !tbaa !345, !alias.scope !3659, !noalias !3660
  %wide.load145 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !345, !alias.scope !3659, !noalias !3660
  %i.fm = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load146 = load <2 x i64>, ptr %next.gep142, align 8, !tbaa !345, !alias.scope !3660 ; 2 uses
  %wide.load147 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !345, !alias.scope !3660 ; 2 uses
  %i.fn = getelementptr i8, ptr %next.gep141, i64 16
  %wide.load148 = load <2 x i64>, ptr %next.gep141, align 8, !tbaa !345, !alias.scope !3660
  %wide.load149 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !345, !alias.scope !3660
  %i.fo = xor <2 x i64> %wide.load148, splat (i64 -1)
  %i.fp = xor <2 x i64> %wide.load149, splat (i64 -1)
  %i.fq = or <2 x i64> %wide.load146, %i.fo
  %i.fr = or <2 x i64> %wide.load147, %i.fp
  %i.fs = and <2 x i64> %i.fq, %wide.load144
  %i.ft = and <2 x i64> %i.fr, %wide.load145
  %i.fu = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load150 = load <2 x i64>, ptr %next.gep140, align 8, !tbaa !345, !alias.scope !3659, !noalias !3660
  %wide.load151 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !345, !alias.scope !3659, !noalias !3660
  %i.fv = and <2 x i64> %wide.load150, %wide.load146
  %i.fw = and <2 x i64> %wide.load151, %wide.load147
  %i.fx = or <2 x i64> %i.fs, %i.fv
  %i.fy = or <2 x i64> %i.ft, %i.fw
  store <2 x i64> %i.fx, ptr %next.gep143, align 8, !tbaa !345, !alias.scope !3659, !noalias !3660
  store <2 x i64> %i.fy, ptr %i.fl, align 8, !tbaa !345, !alias.scope !3659, !noalias !3660
  %index.next152 = add nuw i64 %index139, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next152, 512
  br i1 %i.fz, label %vector.memcheck109, label %vector.body138, !llvm.loop !3647

scalar.ph136:                                     ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKbb.exit, %scalar.ph136
  %.021.i.i.i11 = phi i32 [ %i.gn, %scalar.ph136 ], [ 512, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKbb.exit ]
  %.01320.i.i.i12 = phi ptr [ %i.ha, %scalar.ph136 ], [ %i.fj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKbb.exit ] ; 3 uses
  %.01419.i.i.i13 = phi ptr [ %i.gz, %scalar.ph136 ], [ %i.fi, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKbb.exit ] ; 3 uses
  %.01518.i.i.i14 = phi ptr [ %i.gy, %scalar.ph136 ], [ %i.fh, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKbb.exit ] ; 3 uses
  %.01617.i.i.i15 = phi ptr [ %i.gx, %scalar.ph136 ], [ %i.ff, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKbb.exit ] ; 4 uses
  %i.ga = load i64, ptr %.01617.i.i.i15, align 8, !tbaa !345
  %i.gb = load i64, ptr %.01518.i.i.i14, align 8, !tbaa !345 ; 2 uses
  %i.gc = load i64, ptr %.01419.i.i.i13, align 8, !tbaa !345
  %i.gd = xor i64 %i.gc, -1
  %i.ge = or i64 %i.gb, %i.gd
  %i.gf = and i64 %i.ge, %i.ga
  %i.gg = load i64, ptr %.01320.i.i.i12, align 8, !tbaa !345
  %i.gh = and i64 %i.gg, %i.gb
  %i.gi = or i64 %i.gf, %i.gh
  store i64 %i.gi, ptr %.01617.i.i.i15, align 8, !tbaa !345
  %i.gj = getelementptr inbounds nuw i8, ptr %.01617.i.i.i15, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.01518.i.i.i14, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.01419.i.i.i13, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.01320.i.i.i12, i64 8
  %i.gn = add nsw i32 %.021.i.i.i11, -2           ; 2 uses
  %i.go = load i64, ptr %i.gj, align 8, !tbaa !345
  %i.gp = load i64, ptr %i.gk, align 8, !tbaa !345 ; 2 uses
  %i.gq = load i64, ptr %i.gl, align 8, !tbaa !345
  %i.gr = xor i64 %i.gq, -1
  %i.gs = or i64 %i.gp, %i.gr
  %i.gt = and i64 %i.gs, %i.go
  %i.gu = load i64, ptr %i.gm, align 8, !tbaa !345
  %i.gv = and i64 %i.gu, %i.gp
  %i.gw = or i64 %i.gt, %i.gv
  store i64 %i.gw, ptr %i.gj, align 8, !tbaa !345
  %i.gx = getelementptr inbounds nuw i8, ptr %.01617.i.i.i15, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %.01518.i.i.i14, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %.01419.i.i.i13, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %.01320.i.i.i12, i64 16
  %.not.i.i.i16.1 = icmp eq i32 %i.gn, 0
  br i1 %.not.i.i.i16.1, label %vector.memcheck109, label %scalar.ph136, !llvm.loop !3648

vector.memcheck109:                               ; preds = %vector.body138, %scalar.ph136
  %scevgep110 = getelementptr i8, ptr %i.fe, i64 270336
  %scevgep111 = getelementptr i8, ptr %i.fg, i64 270336
  %bound0112 = icmp ult ptr %i.ff, %scevgep111
  %bound1113 = icmp ult ptr %i.fi, %scevgep110
  %found.conflict114 = and i1 %bound0112, %bound1113
  br i1 %found.conflict114, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i17, label %vector.body117

vector.body117:                                   ; preds = %vector.memcheck109, %vector.body117
  %index118 = phi i64 [ %index.next128, %vector.body117 ], [ 0, %vector.memcheck109 ] ; 2 uses
  %i.hb = shl i64 %index118, 3                    ; 3 uses
  %next.gep119 = getelementptr i8, ptr %i.fi, i64 %i.hb ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.ff, i64 %i.hb ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.fj, i64 %i.hb ; 3 uses
  %i.hc = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load122 = load <2 x i64>, ptr %next.gep119, align 8, !tbaa !345, !alias.scope !3661
  %wide.load123 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !345, !alias.scope !3661
  %i.hd = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load124 = load <2 x i64>, ptr %next.gep120, align 8, !tbaa !345, !alias.scope !3662, !noalias !3661
  %wide.load125 = load <2 x i64>, ptr %i.hd, align 8, !tbaa !345, !alias.scope !3662, !noalias !3661
  %i.he = or <2 x i64> %wide.load124, %wide.load122
  %i.hf = or <2 x i64> %wide.load125, %wide.load123
  %i.hg = xor <2 x i64> %i.he, splat (i64 -1)
  %i.hh = xor <2 x i64> %i.hf, splat (i64 -1)
  %i.hi = getelementptr i8, ptr %next.gep121, i64 16 ; 2 uses
  %wide.load126 = load <2 x i64>, ptr %next.gep121, align 8, !tbaa !345, !alias.scope !3662, !noalias !3661
  %wide.load127 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !345, !alias.scope !3662, !noalias !3661
  %i.hj = and <2 x i64> %wide.load126, %i.hg
  %i.hk = and <2 x i64> %wide.load127, %i.hh
  store <2 x i64> %i.hj, ptr %next.gep121, align 8, !tbaa !345, !alias.scope !3662, !noalias !3661
  store <2 x i64> %i.hk, ptr %i.hi, align 8, !tbaa !345, !alias.scope !3662, !noalias !3661
  %index.next128 = add nuw i64 %index118, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next128, 512
  br i1 %i.hl, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18topologyDifferenceIS6_EEvRKNS2_IT_Lj5EEERKb.exit23, label %vector.body117, !llvm.loop !3652

_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i17: ; preds = %vector.memcheck109, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i17
  %.020.i.i.i18 = phi i32 [ %i.hv, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i17 ], [ 512, %vector.memcheck109 ]
  %.01419.i7.i.i19 = phi ptr [ %i.ie, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i17 ], [ %i.fi, %vector.memcheck109 ] ; 3 uses
  %.01518.i8.i.i20 = phi ptr [ %i.id, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i17 ], [ %i.ff, %vector.memcheck109 ] ; 3 uses
  %.01617.i9.i.i21 = phi ptr [ %i.ic, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i17 ], [ %i.fj, %vector.memcheck109 ] ; 4 uses
  %i.hm = load i64, ptr %.01419.i7.i.i19, align 8, !tbaa !345
  %i.hn = load i64, ptr %.01518.i8.i.i20, align 8, !tbaa !345
  %i.ho = or i64 %i.hn, %i.hm
  %i.hp = xor i64 %i.ho, -1
  %i.hq = load i64, ptr %.01617.i9.i.i21, align 8, !tbaa !345
  %i.hr = and i64 %i.hq, %i.hp
  store i64 %i.hr, ptr %.01617.i9.i.i21, align 8, !tbaa !345
  %i.hs = getelementptr inbounds nuw i8, ptr %.01617.i9.i.i21, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.01518.i8.i.i20, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %.01419.i7.i.i19, i64 8
  %i.hv = add nsw i32 %.020.i.i.i18, -2           ; 2 uses
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !345
  %i.hx = load i64, ptr %i.ht, align 8, !tbaa !345
  %i.hy = or i64 %i.hx, %i.hw
  %i.hz = xor i64 %i.hy, -1
  %i.ia = load i64, ptr %i.hs, align 8, !tbaa !345
  %i.ib = and i64 %i.ia, %i.hz
  store i64 %i.ib, ptr %i.hs, align 8, !tbaa !345
  %i.ic = getelementptr inbounds nuw i8, ptr %.01617.i9.i.i21, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %.01518.i8.i.i20, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %.01419.i7.i.i19, i64 16
  %.not.i10.i.i22.1 = icmp eq i32 %i.hv, 0
  br i1 %.not.i10.i.i22.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18topologyDifferenceIS6_EEvRKNS2_IT_Lj5EEERKb.exit23, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i17, !llvm.loop !3653

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18topologyDifferenceIS6_EEvRKNS2_IT_Lj5EEERKb.exit23: ; preds = %vector.body117, %_ZN7openvdb5v13_04util8NodeMaskILj5EE7foreachINS0_4tree12InternalNodeINS6_INS5_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18TopologyDifferenceISB_E1AEEERKS3_SG_SG_SG_RKT_.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.if = load ptr, ptr %i.ax, align 8, !tbaa !642 ; 3 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEERS8_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18topologyDifferenceIS6_EEvRKNS2_IT_Lj5EEERKb.exit23
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EED2Ev(ptr noundef nonnull align 8 dead_on_return(270352) dereferenceable(270352) %i.if) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef 270352) #31
  br label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEERS8_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEERS8_.exit: ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18topologyDifferenceIS6_EEvRKNS2_IT_Lj5EEERKb.exit23, %bb.q
  store ptr %i.ec, ptr %i.ax, align 8, !tbaa !642
  br label %.critedge

bb.r:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE4findERSH_.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.045.060, i64 57
  %i.ii = load i8, ptr %i.ih, align 1, !range !449
  %10 = trunc nuw i8 %i.ii to i1
  %11 = icmp ne ptr %.sroa.0.0.i.i, %i.e
  %or.cond.not = select i1 %10, i1 %11, i1 false
  br i1 %or.cond.not, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !642 ; 3 uses
  %12 = icmp ne ptr %i.ik, null                   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 57
  %i.im = load i8, ptr %i.il, align 1, !range !449
  %13 = trunc nuw i8 %i.im to i1                  ; 2 uses
  %.not55 = select i1 %12, i1 true, i1 %13
  br i1 %.not55, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  br i1 %12, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE7setTileERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEERKNS9_4TileE.exit, label %bb.u

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE7setTileERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEERKNS9_4TileE.exit: ; preds = %bb.t
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EED2Ev(ptr noundef nonnull align 8 dead_on_return(270352) dereferenceable(270352) %i.ik) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 270352) #31
  store ptr null, ptr %i.ij, align 8, !tbaa !642
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 56
  store i16 0, ptr %i.in, align 8, !tbaa !262
  %i.io = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 64) #31
  %i.ip = load i64, ptr %i.o, align 8, !tbaa !779
  %i.iq = add i64 %i.ip, -1
  store i64 %i.iq, ptr %i.o, align 8, !tbaa !779
  br label %.critedge

bb.u:                                             ; preds = %bb.t
  br i1 %13, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE7setTileERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEERKNS9_4TileE.exit24, label %.critedge

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE7setTileERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEERKNS9_4TileE.exit24: ; preds = %bb.u
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 56 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !262, !range !449, !noundef !447
  %.sroa.0.0.insert.ext = zext nneg i8 %i.is to i16
  store i16 %.sroa.0.0.insert.ext, ptr %i.ir, align 8, !tbaa !262
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.r, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE7setTileERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEERKNS9_4TileE.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE7setTileERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEERKNS9_4TileE.exit24, %bb.u, %bb.s, %bb.l, %bb.n, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEERS8_.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE18topologyDifferenceIS6_EEvRKNS2_IT_Lj5EEERKb.exit
  %i.it = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.045.060) #32 ; 2 uses
  %.not52 = icmp eq ptr %i.it, %i.c
  br i1 %.not52, label %._crit_edge, label %bb.b, !llvm.loop !3654
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE24enforceSameConfigurationIS8_EEvRKNS2_IT_EE(ptr noundef nonnull align 8 dereferenceable(68) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i:
  %1 = alloca %"class.std::vector.550", align 8   ; 14 uses
  %2 = alloca %"class.std::vector.550", align 8   ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29
          to label %.noexc20 unwind label %bb.h   ; 3 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  store i32 0, ptr %i.c, align 4, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !827
  store ptr %i.d, ptr %i.a, align 8, !tbaa !828
  store ptr %i.d, ptr %i.b, align 8, !tbaa !829
  invoke void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit unwind label %bb.h

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit: ; preds = %.noexc20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !828  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !829
  %.not.i.i.i22 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i22, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit
  store i32 0, ptr %i.f, align 4, !tbaa !169
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.i, ptr %i.e, align 8, !tbaa !828
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.i23

bb.b:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !827    ; 4 uses
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775804
  br i1 %i.n, label %bb.c, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i24

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #28
          to label %.noexc30 unwind label %bb.h

.noexc30:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i24: ; preds = %bb.b
  %i.o = ashr exact i64 %i.m, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i25 = call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i.i25, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = call i64 @llvm.umin.i64(i64 %i.p, i64 2305843009213693951)
  %i.s = select i1 %i.q, i64 2305843009213693951, i64 %i.r ; 3 uses
  %.not.i.i.i.i.i26 = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i26)
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc31 unwind label %bb.h   ; 4 uses

.noexc31:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i24
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !169
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.d, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i27

bb.d:                                             ; preds = %.noexc31
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i27

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i27: ; preds = %bb.d, %.noexc31
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.not.i17.i.i.i.i28 = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i.i28, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i29, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i27
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !829
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aa) #31
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i29

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i29: ; preds = %bb.e, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i27
  store ptr %i.u, ptr %2, align 8, !tbaa !827
  store ptr %i.x, ptr %i.e, align 8, !tbaa !828
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !829
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.i23

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.i23:       ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i29, %bb.a
  invoke void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE15getNodeLog2DimsERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit33 unwind label %bb.h

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit33: ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.i23
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !828 ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !827   ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !828
  %i.ai = load ptr, ptr %2, align 8, !tbaa !827   ; 4 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp eq i64 %i.ag, %i.al
  br i1 %i.am, label %bb.f, label %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit33
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.not.i.i.i.i.i.i, label %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread67, label %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit

_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.f
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ad, ptr %i.ai, i64 %i.ag)
  %.not9.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.not, label %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread67, label %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread

_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread: ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE15getNodeLog2DimsERSt6vectorIjSaIjEE.exit33, %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.61, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.ao = load ptr, ptr %1, align 8, !tbaa !827
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !169
  %i.aq = zext i32 %i.ap to i64
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.aq)
          to label %_ZNSolsEj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !828
  %i.at = load ptr, ptr %1, align 8, !tbaa !827
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2                 ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSolsEj.exit41, %_ZNSolsEj.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.63, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.i23, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i24, %bb.c, %.noexc20, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph:                                           ; preds = %_ZNSolsEj.exit, %_ZNSolsEj.exit41
  %.01071 = phi i64 [ %i.bi, %_ZNSolsEj.exit41 ], [ 1, %_ZNSolsEj.exit ] ; 2 uses
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.62, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %.lr.ph
  %i.bd = load ptr, ptr %1, align 8, !tbaa !827
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.01071
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !169
  %i.bg = zext i32 %i.bf to i64
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bg)
          to label %_ZNSolsEj.exit41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEj.exit41:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.bi = add nuw i64 %.01071, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.ax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3663

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %._crit_edge
  %i.bj = load ptr, ptr %2, align 8, !tbaa !827
end_hunk_3
